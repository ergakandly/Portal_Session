package com.hris.portal.model;

import java.io.Serializable;

public class PortalLocationBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String locationId;
	private String locationName;
	public String getLocationId() {
		return locationId;
	}
	public void setLocationId(String locationId) {
		this.locationId = locationId;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	
	
}