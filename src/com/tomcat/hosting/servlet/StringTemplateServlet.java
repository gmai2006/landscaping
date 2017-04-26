package com.tomcat.hosting.servlet;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.stringtemplate.v4.NumberRenderer;
import org.stringtemplate.v4.ST;
import org.stringtemplate.v4.STGroup;
import org.stringtemplate.v4.STRawGroupDir;


public class StringTemplateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
	    PrintWriter out = response.getWriter();
	    STGroup group = new STRawGroupDir(getServletContext().getRealPath("/WEB-INF/template/"), '$', '$');
		group.registerRenderer(Number.class, new NumberRenderer());
	    // removes the leading "/" and the trailing ".st"    
	    String pageName = getPageName(request);
	    System.out.println("calling page " + pageName);
	    ST page = group.getInstanceOf(pageName);
	    ST container = group.getInstanceOf("layout");
	    container.add("body", page);
	    container.add(pageName, "current");
	    if (pageName.endsWith("portfolio")) getPortfolioData(request, container);
	    out.print(container.render());
	    out.flush();
	  }
	
	private String getPageName(HttpServletRequest req)
	{
		String pageName = req.getServletPath();
		if (pageName.lastIndexOf(".") == -1)
		{
			pageName = "index";
		}
		else
		{
			pageName = pageName.substring(1, pageName.lastIndexOf("."));
		}
		return pageName;
	}
	
	private void getPortfolioData(HttpServletRequest request, ST container) {
		String s = getServletContext().getRealPath("/images/portfolio/");
		File folder = new File(s);
		File[] subfolders = folder.listFiles(new FileFilter() {
			
			@Override
			public boolean accept(File pathname) {
				// TODO Auto-generated method stub
				return pathname.isDirectory();
			}
		});
		
		List<PortfolioWrapper> wrappers = new ArrayList<PortfolioWrapper>();
		for (File f : subfolders) {
			PortfolioWrapper wrapper = new PortfolioWrapper();
			wrapper.setName(f.getName());
			wrapper.setTitle(String.valueOf(f.getName().charAt(0)).toUpperCase() + f.getName().substring(1));
			File[] images = f.listFiles(new FileFilter() {
				
				@Override
				public boolean accept(File pathname) {
					// TODO Auto-generated method stub
					return pathname.isFile() 
					&& (pathname.getName().toLowerCase().endsWith(".png")
					|| pathname.getName().toLowerCase().endsWith(".jpg"));
				}
			});
			for (File img : images) {
				wrapper.addImage(img.getName());
//				System.out.println("added " + img.getName());
			}
			wrappers.add(wrapper);
		}
		container.add("portfolios", wrappers);
	}
	
}
