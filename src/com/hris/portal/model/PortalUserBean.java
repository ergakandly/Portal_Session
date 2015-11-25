package com.hris.portal.model;

import java.io.Serializable;

public class PortalUserBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userId;
	private String userName;
	private String password;
	private String userRoleId;
	private String userEmployeeId;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserEmployeeId() {
		return userEmployeeId;
	}
	public void setUserEmployeeId(String userEmployeeId) {
		this.userEmployeeId = userEmployeeId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public String getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(String userRoleId) {
		this.userRoleId = userRoleId;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
