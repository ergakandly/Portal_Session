package com.finalproject.portal.handler;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.finalproject.portal.form.PortalForm;
import com.finalproject.portal.manager.PortalManager;

public class PortalAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, Exception {
		
		System.out.println("aab");

		return mapping.findForward("success");
	}
}
