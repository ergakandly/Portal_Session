package com.hris.portal.model;

import java.io.Serializable;

public class PortalDepartmentBean implements Serializable {
	private String departmentId;
	private String msDepartmentName;
	private String locationId;
	
	public String getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
	public String getLocationId() {
		return locationId;
	}
	public void setLocationId(String locationId) {
		this.locationId = locationId;
	}
	public String getMsDepartmentName() {
		return msDepartmentName;
	}
	public void setMsDepartmentName(String msDepartmentName) {
		this.msDepartmentName = msDepartmentName;
	}
}
