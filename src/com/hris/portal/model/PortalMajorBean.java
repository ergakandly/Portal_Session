package com.hris.portal.model;

import java.io.Serializable;

public class PortalMajorBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String majorId;
	private String majorName;
	public String getMajorId() {
		return majorId;
	}
	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	
	
}