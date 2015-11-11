package com.hris.portal.form;

import java.util.List;

import org.apache.struts.action.ActionForm;

import com.hris.portal.model.PortalBean;

public class PortalForm extends ActionForm{
	private List<PortalBean> listPortal;
	private PortalBean portalBean = new PortalBean();
	private String task;
	private String id;
	private String user;
	private String pass;
	private String searchName;
	
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
