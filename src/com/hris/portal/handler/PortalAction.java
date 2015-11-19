package com.hris.portal.handler;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.hris.portal.form.PortalForm;
import com.hris.portal.manager.PortalManager;
import com.hris.portal.model.PortalBean;
import com.hris.portal.model.PortalMasterRoleBean;

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
			List<PortalMasterRoleBean> list = null;
			List<PortalMasterRoleBean> listPriv = null;
			hForm.setListPortalMasterRole(manager.getMasterRoleName());
		
			for(int i=0; i<hForm.getListPortalMasterRole().size(); i++){	
				
//				System.out.println(hForm.getListPortalMasterRole().get(i).getRoleId());

				list = (manager.getMenuRoleName(hForm.getListPortalMasterRole().get(i).getRoleId()));
				listPriv = (manager.getPrivRoleName(hForm.getListPortalMasterRole().get(i).getRoleId()));
				hForm.getListPortalMasterRole().get(i).setListMasterRoleBean(list);
				hForm.getListPortalMasterRole().get(i).setListMasterRoleBeanPriv(listPriv);
				
//				for (int j=0;j<list.size();j++){
//					System.out.println(list.get(j).getMenuName());
//				}
			}
//			for (int i=0;i<hForm.getListPortalMasterRole().size();i++){
//				System.out.println("virgiawanganteng: "+hForm.getListPortalMasterRole().get(i).getRoleId());
//				System.out.println("virgiawanganteng: "+hForm.getListPortalMasterRole().get(i).getRoleName());
//				System.out.println("Privilage aksesnya:");
//				for(int j=0;j<hForm.getListPortalMasterRole().get(i).getListMasterRoleBean().size();j++)
//				{
//					System.out.println(hForm.getListPortalMasterRole().get(i).getListMasterRoleBeanPriv().get(j).getPrivilegeName());	
//				}
//			}
			hForm.setListPortalMasterRole(hForm.getListPortalMasterRole());
			return mapping.findForward("masterRole");
		}else if ("changePass".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			return mapping.findForward("changePass");
		}else if ("dashboardAdmin".equalsIgnoreCase(hForm.getTask())){
			return mapping.findForward("dashboardAdmin");
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
			System.out.println("ID : "+hForm.getId());
			hForm.setPortalDepartmentBean(manager.getOneEmployee(hForm.getId()));
			System.out.println("Department Name: " + hForm.getPortalDepartmentBean().getMsDepartmentName());
			System.out.println(hForm.getPortalDepartmentBean().getDeptEmployeeName());
			//compare
			hForm.setListPortal(manager.getRoleName());
			
//			System.out.println("RoleName : " + hForm.getListPortal().get(1).getRoleName());
			for(int i=1; i<hForm.getListPortal().size(); i++){
				if(hForm.getPortalDepartmentBean().getMsDepartmentName().equals(hForm.getListPortal().get(i).getRoleName())){
					
					System.out.println("Role Name "+i+" :"+hForm.getListPortal().get(i).getRoleName());
					System.out.println("Role ID "+i+" :"+hForm.getListPortal().get(i).getRoleId());
					System.out.println("Compare Department Name "+i+" :"+hForm.getPortalDepartmentBean().getMsDepartmentName());
					
//					System.out.println("Employee ID: " + hForm.getId());
					
					//insert
					manager.insertUser(hForm.getPortalDepartmentBean().getDeptEmployeeName(), hForm.getPortalDepartmentBean().getMsDepartmentName(), hForm.getId(), hForm.getListPortal().get(i).getRoleId());
					
					hForm.setSearchName(null);
					hForm.getPortalDepartmentBean().setDepartmentId(null);
					hForm.setListPortal(manager.getEmployee(hForm.getSearchName(), hForm.getPortalDepartmentBean().getDepartmentId()));
					hForm.setListPortalDepartment(manager.getDepartmentName());
					return mapping.findForward("assignRoleEmployee");
				}else{
					System.out.println("Else Role Name "+i+" = "+hForm.getListPortal().get(i).getRoleName());
					System.out.println("Else Role ID "+i+" :"+hForm.getListPortal().get(i).getRoleId());
					
				}
			}
//			System.out.println("Employee ID: " + hForm.getId());
			hForm.getPortalDepartmentBean().setMsDepartmentName("Employee");
			hForm.getPortalBean().setRoleId("4");
			System.out.println("Department Name Baru = "+hForm.getPortalDepartmentBean().getMsDepartmentName()+"ID Role :"+hForm.getPortalBean().getRoleId());
			
			//insert
			manager.insertUser(hForm.getPortalDepartmentBean().getDeptEmployeeName(), hForm.getPortalDepartmentBean().getMsDepartmentName(), hForm.getId(), hForm.getPortalBean().getRoleId());
			
			hForm.setSearchName(null);
			hForm.getPortalDepartmentBean().setDepartmentId(null);
			hForm.setListPortal(manager.getEmployee(hForm.getSearchName(), hForm.getPortalDepartmentBean().getDepartmentId()));
			hForm.setListPortalDepartment(manager.getDepartmentName());
			return mapping.findForward("assignRoleEmployee");
		}else if ("addEditAssignRole".equalsIgnoreCase(hForm.getTask())){
			hForm.setListPortal(manager.getRoleName());
			return mapping.findForward("addEditAssignRole");
		}
//		else if("insert".equalsIgnoreCase(hForm.getTask())){
//			manager.insert(hForm.getRegionBean().getFirstName(), hForm.getRegionBean().getLastName(), hForm.getRegionBean().getPhoneNumber(), hForm.getRegionBean().getEmail(), hForm.getRegionBean().getSalary());
//		}
		
		return mapping.findForward("success");
	}
}
