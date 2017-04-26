package com.tomcat.hosting.servlet;

import java.util.ArrayList;
import java.util.List;

public class PortfolioWrapper {
	private String name;
	private String title;
	private List<String> images;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public List<String> getImages() {
		return images;
	}
	public void addImage(String n) {
		if (null == images) images = new ArrayList<String>();
		images.add(n);
	}
}
