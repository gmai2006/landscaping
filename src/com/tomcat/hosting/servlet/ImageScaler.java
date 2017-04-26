package com.tomcat.hosting.servlet;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileFilter;

import javax.imageio.ImageIO;

import com.thebuzzmedia.imgscalr.Scalr;

public class ImageScaler {

	/**
	 * @param args
	 */
	public static void main(String[] args) 
	throws Exception
	{
		File parent = new File("./images/landscaping/");
		File[] dirs = parent.listFiles(new FileFilter() {
			public boolean accept(File pathname) {
				// TODO Auto-generated method stub
				return pathname.isDirectory();
			}
		});
		
		File targetDir = new File("./images/portfolio/");
			File target = new File(targetDir, parent.getName());
			if (false == target.exists())
			{
				target.mkdir();
			}
			scaleImages(parent, target, 800);
	}
	
	public static void scaleImages(File source, File target, int size)
	throws Exception
	{
		File[] files = source.listFiles(new FileFilter() {
			
			@Override
			public boolean accept(File pathname) {
				// TODO Auto-generated method stub
				return pathname.getName().toLowerCase().endsWith("jpg")
				|| pathname.getName().toLowerCase().endsWith("jpeg")
				|| pathname.getName().toLowerCase().endsWith("gif")
				|| pathname.getName().toLowerCase().endsWith("png");
			}
		});
		
		
		for (int i = 0 ; i < files.length; i++)
		{
			System.out.println("start scaling image " + files[i].getName());
			BufferedImage image = ImageIO.read(files[i]);
			BufferedImage scaledImage = Scalr.resize(image, size);
			File newimage = new File(target, files[i].getName());
			ImageIO.write(scaledImage, "jpg", newimage);
		}
	}
	
}
