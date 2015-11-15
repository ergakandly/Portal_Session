package com.hris.portal.model;

import java.io.Serializable;

public class PortalBean implements Serializable {
	private String employeeId;
//	private String employeeFName;
//	private String employeeLName;
	private String employeeName;
	private String departmentName;
	private String locationName;
	private String roleName;
	private String roleId;
	private String userEmployeeId;
	
	public String getRoleId() {
		return roleId;
	}
	public String getUserEmployeeId() {
		return userEmployeeId;
	}
	public void setUserEmployeeId(String userEmployeeId) {
		this.userEmployeeId = userEmployeeId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
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
