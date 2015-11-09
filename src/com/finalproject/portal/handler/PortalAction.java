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
		
		System.out.println("aa");

//		PortalForm portalForm = (PortalForm) form;
//		PortalManager manager = new PortalManager();

//		if("add".equalsIgnoreCase(portalForm.getTask())){
//			return mapping.findForward("add");
//		}else if("insert".equalsIgnoreCase(portalForm.getTask())){
//			manager.insert(portalForm.getRegionBean().getFirstName(), hForm.getRegionBean().getLastName(), hForm.getRegionBean().getPhoneNumber(), hForm.getRegionBean().getEmail(), hForm.getRegionBean().getSalary());
//		}
		
		
//		hForm.setTotalPage((manager.getTotalRow(hForm.getMin(), hForm.getMax()) / 10)+1);
//		hForm.setMin((hForm.getPage()*10)-9); 
//		hForm.setMax((hForm.getPage()*10));
//		request.setAttribute("totalPage", hForm.getTotalPage());
		
//		System.out.println(hForm.getMin()+" "+ hForm.getMax());
		
//		portalForm.setListRegions(manager.getEmployees(hForm.getSearchName(), hForm.getMin(), hForm.getMax()));
		return mapping.findForward("success");
	}
}
