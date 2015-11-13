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
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, Exception {
		
		PortalForm hForm = (PortalForm) form;
		PortalManager manager = new PortalManager();
//		PortalBean portalBean = new PortalBean();
		
		if("login".equalsIgnoreCase(hForm.getTask())){
			if(hForm.getUser().equals("user") && hForm.getPass().equals("user")){
				System.out.println("Jenis User : " + hForm.getUser());
				return mapping.findForward("dashboardUser");
			}
			else if(hForm.getUser().equals("admin") && hForm.getPass().equals("admin")){
				System.out.println("Jenis User : " + hForm.getUser());
				return mapping.findForward("dashboardAdmin");
			}
			else {
				System.out.println("SALAAAAHHH");
			}
		}else if ("masterRole".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			return mapping.findForward("masterRole");
		}else if ("changePass".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			return mapping.findForward("changePass");
		}else if ("addEditRole".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			return mapping.findForward("addEditRole");
		}else if ("masterModul".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			return mapping.findForward("masterModul");
		}else if ("assignRole".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setListPortal(manager.getRoleList());
			return mapping.findForward("assignRole");
		}else if ("assignRoleEmployee".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			System.out.println("Department : " + hForm.getPortalDepartmentBean().getMsDepartmentName());
			hForm.setListPortal(manager.getEmployee(hForm.getSearchName(), hForm.getPortalDepartmentBean().getMsDepartmentName()));
			hForm.setListPortalDepartment(manager.getDepartmentName());
//			portalBean.setEmployeeName(portalBean.getEmployeeFName()+" "+portalBean.getEmployeeLName());
			return mapping.findForward("assignRoleEmployee");
		}else if ("search".equalsIgnoreCase(hForm.getTask())){
//			System.out.println("Department : " + hForm.getPortalDepartmentBean().getMsDepartmentName());
			System.out.println("ID : " + hForm.getPortalDepartmentBean().getDepartmentId());
			hForm.setListPortal(manager.getEmployee(hForm.getSearchName(), hForm.getPortalDepartmentBean().getDepartmentId()));
			hForm.setListPortalDepartment(manager.getDepartmentName());
			return mapping.findForward("assignRoleEmployee");
		}else if ("select".equalsIgnoreCase(hForm.getTask())){
//			hForm.setPortalBean(manager.getOneEmployee(hForm.getId()));
//			hForm.setListPortal(manager.getRoleName());
//			System.out.println(hForm.getPortalBean().getEmployeeName());
//			System.out.println(hForm.getId());
			hForm.setListPortal(manager.getRoleList());
			return mapping.findForward("assignRole");
		}else if ("addEditAssignRole".equalsIgnoreCase(hForm.getTask())){
			hForm.setListPortal(manager.getRoleName());
			return mapping.findForward("addEditAssignRole");
		}else if("insert".equalsIgnoreCase(hForm.getTask())){
//			manager.insert(hForm.getRegionBean().getFirstName(), hForm.getRegionBean().getLastName(), hForm.getRegionBean().getPhoneNumber(), hForm.getRegionBean().getEmail(), hForm.getRegionBean().getSalary());
		}
		
		return mapping.findForward("success");
	}
}
