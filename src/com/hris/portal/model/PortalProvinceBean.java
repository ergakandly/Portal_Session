package com.hris.portal.model;

import java.io.Serializable;

public class PortalProvinceBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String provinceId;
	private String provinceName=null;
	
	public String getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	
	

}
