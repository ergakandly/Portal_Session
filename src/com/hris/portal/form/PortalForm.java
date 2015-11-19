package com.hris.portal.form;

import java.util.List;

import org.apache.struts.action.ActionForm;

import com.hris.portal.model.PortalBean;
import com.hris.portal.model.PortalDepartmentBean;
import com.hris.portal.model.PortalUserBean;
import com.hris.portal.model.PortalMasterRoleBean;

public class PortalForm extends ActionForm{
	private List<PortalBean> listPortal;
	private PortalBean portalBean = new PortalBean();
	private List<PortalDepartmentBean> listPortalDepartment;
	private PortalDepartmentBean portalDepartmentBean = new PortalDepartmentBean();
	private List<PortalUserBean> listUserDepartment;
	private PortalUserBean portalUserBean = new PortalUserBean();
	
	private List<PortalMasterRoleBean> listPortalMasterRole;
	private PortalMasterRoleBean PortalMasterRoleBean = new PortalMasterRoleBean();
	
	private List<PortalMasterRoleBean> listPortalMasterRoleMenu;
	private PortalMasterRoleBean PortalMasterRoleMenu = new PortalMasterRoleBean();
	
	private List<PortalMasterRoleBean> listPortalMasterRolePriv;
	private PortalMasterRoleBean PortalMasterRolePriv = new PortalMasterRoleBean();
	
	private String task;
	private String id;
	private String user;
	private String pass;
	private String searchName;
	
	
	public List<PortalMasterRoleBean> getListPortalMasterRoleMenu() {
		return listPortalMasterRoleMenu;
	}
	public void setListPortalMasterRoleMenu(
			List<PortalMasterRoleBean> listPortalMasterRoleMenu) {
		this.listPortalMasterRoleMenu = listPortalMasterRoleMenu;
	}
	public List<PortalMasterRoleBean> getListPortalMasterRole() {
		return listPortalMasterRole;
	}
	public void setListPortalMasterRole(
			List<PortalMasterRoleBean> listPortalMasterRole) {
		this.listPortalMasterRole = listPortalMasterRole;
	}
	public PortalMasterRoleBean getPortalMasterRoleBean() {
		return PortalMasterRoleBean;
	}
	public void setPortalMasterRoleBean(PortalMasterRoleBean portalMasterRoleBean) {
		PortalMasterRoleBean = portalMasterRoleBean;
	}
	public List<PortalUserBean> getListUserDepartment() {
		return listUserDepartment;
	}
	public void setListUserDepartment(List<PortalUserBean> listUserDepartment) {
		this.listUserDepartment = listUserDepartment;
	}
	public PortalUserBean getPortalUserBean() {
		return portalUserBean;
	}
	public void setPortalUserBean(PortalUserBean portalUserBean) {
		this.portalUserBean = portalUserBean;
	}
	public List<PortalDepartmentBean> getListPortalDepartment() {
		return listPortalDepartment;
	}
	public void setListPortalDepartment(
			List<PortalDepartmentBean> listPortalDepartment) {
		this.listPortalDepartment = listPortalDepartment;
	}
	public PortalDepartmentBean getPortalDepartmentBean() {
		return portalDepartmentBean;
	}
	public void setPortalDepartmentBean(PortalDepartmentBean portalDepartmentBean) {
		this.portalDepartmentBean = portalDepartmentBean;
	}

	public PortalMasterRoleBean getPortalMasterRoleMenu() {
		return PortalMasterRoleMenu;
	}
	public void setPortalMasterRoleMenu(PortalMasterRoleBean portalMasterRoleMenu) {
		PortalMasterRoleMenu = portalMasterRoleMenu;
	}
	public List<PortalMasterRoleBean> getListPortalMasterRolePriv() {
		return listPortalMasterRolePriv;
	}
	public void setListPortalMasterRolePriv(
			List<PortalMasterRoleBean> listPortalMasterRolePriv) {
		this.listPortalMasterRolePriv = listPortalMasterRolePriv;
	}
	public PortalMasterRoleBean getPortalMasterRolePriv() {
		return PortalMasterRolePriv;
	}
	public void setPortalMasterRolePriv(PortalMasterRoleBean portalMasterRolePriv) {
		PortalMasterRolePriv = portalMasterRolePriv;
	}
	public String getSearchName() {
		return searchName;
	}
	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}
	public List<PortalBean> getListPortal() {
		return listPortal;
	}
	public void setListPortal(List<PortalBean> listPortal) {
		this.listPortal = listPortal;
	}
	public PortalBean getPortalBean() {
		return portalBean;
	}
	public void setPortalBean(PortalBean portalBean) {
		this.portalBean = portalBean;
	}
	public String getTask() {
		return task;
	}
	public void setTask(String task) {
		this.task = task;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}

	
}
