package com.hris.portal.model;

import java.io.Serializable;

public class PortalMasterRoleBean implements Serializable {
	private String roleId;
	private String roleName;
	private String menuId;
	private String menuName;
	private String privilegeId;
	private String privilegeName;
	private String roleMenuId;
	private String rolePrivilegeId;
	
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getPrivilegeId() {
		return privilegeId;
	}
	public void setPrivilegeId(String privilegeId) {
		this.privilegeId = privilegeId;
	}
	public String getPrivilegeName() {
		return privilegeName;
	}
	public void setPrivilegeName(String privilegeName) {
		this.privilegeName = privilegeName;
	}
	public String getRoleMenuId() {
		return roleMenuId;
	}
	public void setRoleMenuId(String roleMenuId) {
		this.roleMenuId = roleMenuId;
	}
	public String getRolePrivilegeId() {
		return rolePrivilegeId;
	}
	public void setRolePrivilegeId(String rolePrivilegeId) {
		this.rolePrivilegeId = rolePrivilegeId;
	}
	public String getRoleId() {
		return roleId;
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
	
}
