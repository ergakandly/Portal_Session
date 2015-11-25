package com.hris.portal.model;

import java.io.Serializable;

public class PortalPositionBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String positionId;
	private String positionName;
	public String getPositionId() {
		return positionId;
	}
	public void setPositionId(String positionId) {
		this.positionId = positionId;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	
	
}
