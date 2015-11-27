package com.hris.portal.model;

import java.io.Serializable;

public class PortalCityBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String cityId;
	private String cityName=null;
	private String cityProvinceName;
	private String cityProvinceId;
	
	public String getCityProvinceId() {
		return cityProvinceId;
	}
	public void setCityProvinceId(String cityProvinceId) {
		this.cityProvinceId = cityProvinceId;
	}
	public String getCityProvinceName() {
		return cityProvinceName;
	}
	public void setCityProvinceName(String cityProvinceName) {
		this.cityProvinceName = cityProvinceName;
	}
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
