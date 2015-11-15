package com.hris.portal.model;

import java.io.Serializable;

public class PortalUserBean implements Serializable {
	private String userName;
	private String password;
	private String userRoleId;
	
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
