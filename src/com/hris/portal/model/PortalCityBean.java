package com.hris.portal.model;

import java.io.Serializable;

public class PortalCityBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String cityId;
	private String cityName;
	public String getCityId() {
		return cityId;
	}
	public void setCityId(String cityId) {
		this.cityId = cityId;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	
	
}
