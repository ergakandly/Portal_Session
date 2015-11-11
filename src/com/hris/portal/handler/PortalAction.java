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
import com.hris.portal.model.PortalBean;

public class PortalAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, SQLException, Exception {

		PortalForm hForm = (PortalForm) form;
		PortalManager manager = new PortalManager();
		PortalBean portalBean = new PortalBean();

		System.out.println("Jenis User : " + hForm.getUser());
		System.out.println("Tasknya : " + hForm.getTask());

		if ("login".equalsIgnoreCase(hForm.getTask())) {
			if (hForm.getUser().equals("user") && hForm.getPass().equals("user")) {
				return mapping.findForward("dashboardUser");
			} else if (hForm.getUser().equals("admin") && hForm.getPass().equals("admin")) {
				return mapping.findForward("dashboardAdmin");
			} else {
				System.out.println("SALAAAAHHH");
			}
		} else if ("masterRole".equalsIgnoreCase(hForm.getTask())) {
			return mapping.findForward("masterRole");
		} else if ("changePass".equalsIgnoreCase(hForm.getTask())) {
			return mapping.findForward("changePass");
		} else if ("addEditRole".equalsIgnoreCase(hForm.getTask())) {
			return mapping.findForward("addEditRole");
		} else if ("masterModul".equalsIgnoreCase(hForm.getTask())) {
			return mapping.findForward("masterModul");
		} else if ("assignRole".equalsIgnoreCase(hForm.getTask())) {
			return mapping.findForward("assignRole");
		} else if ("assignRoleEmployee".equalsIgnoreCase(hForm.getTask())) {
			hForm.setListPortal(manager.getEmployee());
			// portalBean.setEmployeeName(portalBean.getEmployeeFName()+"
			// "+portalBean.getEmployeeLName());
			return mapping.findForward("assignRoleEmployee");
		}

		return mapping.findForward("success");
	}
}
