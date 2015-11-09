package com.finalproject.portal.form;

import java.util.List;

import org.apache.struts.action.ActionForm;

import com.finalproject.portal.model.PortalBean;

public class PortalForm extends ActionForm{
	private List<PortalBean> listRegions;
	private PortalBean regionBean = new PortalBean();
	private String task;
	private String id;
	private int min;
	private int max;
	
	public List<PortalBean> getListRegions() {
		return listRegions;
	}
	public void setListRegions(List<PortalBean> listRegions) {
		this.listRegions = listRegions;
	}
	public PortalBean getRegionBean() {
		return regionBean;
	}
	public void setRegionBean(PortalBean regionBean) {
		this.regionBean = regionBean;
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
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
}
