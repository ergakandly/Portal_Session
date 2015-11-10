package com.hris.portal.handler;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.hris.portal.form.PortalForm;
import com.hris.portal.manager.PortalManager;

public class PortalAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, Exception {
		
		PortalForm hForm = (PortalForm) form;
//		PortalManager manager = new PortalManager();
		
		if("login".equalsIgnoreCase(hForm.getTask())){
			if(hForm.getUser().equals("user") && hForm.getPass().equals("user")){
				System.out.println(hForm.getUser());
				System.out.println(hForm.getPass());
				return mapping.findForward("dashboardUser");
			}
			else if(hForm.getUser().equals("admin") && hForm.getPass().equals("admin")){
				System.out.println(hForm.getUser());
				System.out.println(hForm.getPass());
				return mapping.findForward("dashboardAdmin");
			}
			else {
				System.out.println("SALAAAAHHH");
			}
		}
		else if ("masterRole".equalsIgnoreCase(hForm.getTask())){
			return mapping.findForward("masterRole");
		}

		return mapping.findForward("success");
	}
}
