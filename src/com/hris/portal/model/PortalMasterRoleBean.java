package com.hris.portal.model;

import java.io.Serializable;
import java.util.List;

public class PortalMasterRoleBean implements Serializable {
	private String roleId;
	private String roleName;
	private String menuId;
	private String menuName;
	private String privilegeId;
	private String privilegeName;
	private String roleMenuId;
	private String rolePrivilegeId;
	private String menuIdView;
	private String menuNameView;
	private String privilegeIdView;
	private String privilegeNameView;

	//Untuk NestedIterate
	
	private List<PortalMasterRoleBean> listMasterRoleBean;
	private List<PortalMasterRoleBean> listMasterRoleBeanPriv;

	public String getPrivilegeIdView() {
		return privilegeIdView;
	}
	public void setPrivilegeIdView(String privilegeIdView) {
		this.privilegeIdView = privilegeIdView;
	}
	public String getPrivilegeNameView() {
		return privilegeNameView;
	}
	public void setPrivilegeNameView(String privilegeNameView) {
		this.privilegeNameView = privilegeNameView;
	}
	public String getMenuIdView() {
		return menuIdView;
	}
	public void setMenuIdView(String menuIdView) {
		this.menuIdView = menuIdView;
	}
	public String getMenuNameView() {
		return menuNameView;
	}
	public void setMenuNameView(String menuNameView) {
		this.menuNameView = menuNameView;
	}
	public List<PortalMasterRoleBean> getListMasterRoleBean() {
		return listMasterRoleBean;
	}
	public List<PortalMasterRoleBean> getListMasterRoleBeanPriv() {
		return listMasterRoleBeanPriv;
	}
	public void setListMasterRoleBeanPriv(
			List<PortalMasterRoleBean> listMasterRoleBeanPriv) {
		this.listMasterRoleBeanPriv = listMasterRoleBeanPriv;
	}
	public void setListMasterRoleBean(List<PortalMasterRoleBean> listMasterRoleBean) {
		this.listMasterRoleBean = listMasterRoleBean;
	}
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
