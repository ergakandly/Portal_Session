package com.hris.portal.model;

import java.io.Serializable;

public class PortalModulBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String menu;
	private String url_menu;
	private String icon;

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public String getUrl_menu() {
		return url_menu;
	}

	public void setUrl_menu(String url_menu) {
		this.url_menu = url_menu;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}
}
