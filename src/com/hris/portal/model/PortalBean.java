package com.hris.portal.model;

import java.io.Serializable;

public class PortalBean implements Serializable {
	private String employeeId;
//	private String employeeFName;
//	private String employeeLName;
	private String employeeName;
	private String departmentName;
	private String locationName;
	
	public String getEmployeeName() {
//		employeeName = employeeFName+" "+employeeLName;
		return employeeName;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
//	public String getEmployeeFName() {
//		return employeeFName;
//	}
//	public void setEmployeeFName(String employeeFName) {
//		this.employeeFName = employeeFName;
//	}
//	public String getEmployeeLName() {
//		return employeeLName;
//	}
//	public void setEmployeeLName(String employeeLName) {
//		this.employeeLName = employeeLName;
//	}
}
