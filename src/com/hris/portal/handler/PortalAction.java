package com.hris.portal.handler;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.util.LabelValueBean;

import com.hris.portal.form.PortalForm;
import com.hris.portal.manager.PortalManager;
import com.hris.portal.model.PortalBean;
import com.hris.portal.model.PortalMasterRoleBean;
import com.hris.portal.util.PortalUtil;

public class PortalAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, Exception {
		
		if (null!=request.getParameter("zx") && null!=request.getSession().getAttribute("username")) {
			String param = request.getParameter("zx").replace(' ', '+');
			String user[] = PortalUtil.decrypt(param).split("##");
			
			HttpSession session = request.getSession();
			session.setAttribute("username", user[0]);
			session.setAttribute("password", user[1]);
			session.setAttribute("roleId", user[2]);
		}
		
		PortalForm hForm = (PortalForm) form;
		PortalManager manager = new PortalManager();
		
		if("login".equalsIgnoreCase(hForm.getTask())){
			String password = PortalUtil.getHash(hForm.getPass());
			hForm.setPortalUserBean(manager.checkLogin(hForm.getUser(), password));
			if (null != hForm.getPortalUserBean().getUserRoleId()) {
				System.out.println("ROLE ID USER = "+hForm.getPortalUserBean().getUserRoleId());
				
				if("admin".equalsIgnoreCase(hForm.getUser()))
					return mapping.findForward("dashboardAdmin");
				else {
					hForm.setListPortalMasterRoleMenu(manager.getMenuRoleName(hForm.getPortalUserBean().getUserRoleId()));
					return mapping.findForward("dashboardUser");
				}
			}
			
			/*
			hForm.setListUserDepartment(manager.getUserList());
			
			for(int i=0; i<hForm.getListUserDepartment().size(); i++){
				
//				System.out.println("User "+(i+1)+" = "+hForm.getListUserDepartment().get(i).getUserName());
//				System.out.println("Password "+(i+1)+" = "+hForm.getListUserDepartment().get(i).getPassword());
				
				if(hForm.getUser().toLowerCase().equals(hForm.getListUserDepartment().get(i).getUserName().toLowerCase()) &&
					hForm.getPass().equals(hForm.getListUserDepartment().get(i).getPassword())){
					
					System.out.println("ROLE ID USER= "+hForm.getListUserDepartment().get(i).getUserRoleId());
					
					if(hForm.getUser().toLowerCase().equals("admin")){
						return mapping.findForward("dashboardAdmin");
					}
					else{
						hForm.setListPortalMasterRoleMenu(manager.getMenuRoleName(hForm.getListUserDepartment().get(i).getUserRoleId()));
						return mapping.findForward("dashboardUser");
					}
				}
//				else{
//					System.out.println("Salaaahhh");					
//				}
				
			} 
			*/
			
//			if(hForm.getUser().equals("user") && hForm.getPass().equals("user")){
//				System.out.println("Jenis User : " + hForm.getUser());
//				return mapping.findForward("dashboardUser");
//			}
//			else if(hForm.getUser().equals("admin") && hForm.getPass().equals("admin")){
//				System.out.println("Jenis User : " + hForm.getUser());
//				return mapping.findForward("dashboardAdmin");
//			}
//			else {
//				System.out.println("SALAAAAHHH");
//			}
		}
		else if ("deleteRole".equalsIgnoreCase(hForm.getTask())){	
			System.out.println("Tasknya : " + hForm.getTask());
			System.out.println("ROLE_ID = "+hForm.getId());
			
			manager.deleteRole(hForm.getId());
			
			hForm.setViewMenu(null);
			hForm.setViewPriv(null);
			List<PortalMasterRoleBean> list = null;
			List<PortalMasterRoleBean> listPriv = null;
			List menuList = null;
			List privList = null;
			
			hForm.setListPortalMasterRole(manager.getMasterRoleName());
		
			for(int i=0; i<hForm.getListPortalMasterRole().size(); i++){	
				
				list = (manager.getMenuRoleName(hForm.getListPortalMasterRole().get(i).getRoleId()));
				listPriv = (manager.getPrivRoleName(hForm.getListPortalMasterRole().get(i).getRoleId()));
				hForm.getListPortalMasterRole().get(i).setListMasterRoleBean(list);
				hForm.getListPortalMasterRole().get(i).setListMasterRoleBeanPriv(listPriv);
				
			}
			
			hForm.setListPortalMasterRole(hForm.getListPortalMasterRole());
			
			hForm.setListPortalMasterRoleMenu(manager.getMasterMenuName());
			hForm.setListPortalMasterRolePriv(manager.getMasterPrivilegeName());
			
			hForm.setViewMenu(hForm.getListPortalMasterRoleMenu());
			hForm.setViewPriv(hForm.getListPortalMasterRolePriv());

			hForm.setAddRoleName(null);
			
			return mapping.findForward("masterRole");
		}
		
		else if ("masterRole".equalsIgnoreCase(hForm.getTask())){			
			System.out.println("Tasknya : " + hForm.getTask());

			if(hForm.getAddRoleName()!=null){
				manager.insertNewRoleName(hForm.getAddRoleName());
				System.out.println("Add Role Name: "+hForm.getAddRoleName());
			
			
				if(hForm.getSelectedNewMenu()!=null){
					for(int i=0; i<hForm.getSelectedNewMenu().length; i++){
						manager.insertNewRoleMenu(hForm.getSelectedNewMenu()[i]);
						System.out.println("Selected Menu: "+hForm.getSelectedNewMenu()[i]);
						if(hForm.getSelectedNewMenu()[i].equals("1")){
							for(int j=0; j<hForm.getSelectedNewPriv().length; j++){
								manager.insertNewRolePriv(hForm.getSelectedNewPriv()[j]);
								System.out.println("Privilege : "+hForm.getSelectedNewPriv()[j]);
							}
						}
					}
				}
			}
			
			hForm.setViewMenu(null);
			hForm.setViewPriv(null);
			List<PortalMasterRoleBean> list = null;
			List<PortalMasterRoleBean> listPriv = null;
			List menuList = null;
			List privList = null;
			
			hForm.setListPortalMasterRole(manager.getMasterRoleName());
		
			for(int i=0; i<hForm.getListPortalMasterRole().size(); i++){	
				
				list = (manager.getMenuRoleName(hForm.getListPortalMasterRole().get(i).getRoleId()));
				listPriv = (manager.getPrivRoleName(hForm.getListPortalMasterRole().get(i).getRoleId()));
				hForm.getListPortalMasterRole().get(i).setListMasterRoleBean(list);
				hForm.getListPortalMasterRole().get(i).setListMasterRoleBeanPriv(listPriv);
				
			}
			
			hForm.setListPortalMasterRole(hForm.getListPortalMasterRole());
			
			hForm.setListPortalMasterRoleMenu(manager.getMasterMenuName());
			hForm.setListPortalMasterRolePriv(manager.getMasterPrivilegeName());
			
			hForm.setViewMenu(hForm.getListPortalMasterRoleMenu());
			hForm.setViewPriv(hForm.getListPortalMasterRolePriv());

			hForm.setAddRoleName(null);
			
			return mapping.findForward("masterRole");
		}else if ("changePass".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			return mapping.findForward("changePass");
		}else if ("dashboardAdmin".equalsIgnoreCase(hForm.getTask())){
			return mapping.findForward("dashboardAdmin");
		}else if ("addEditRole".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			return mapping.findForward("addEditRole");
		}else if ("assignRole".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setListPortal(manager.getRoleList());
			return mapping.findForward("assignRole");
		}else if ("assignRoleEmployee".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			System.out.println("Department : " + hForm.getPortalDepartmentBean().getMsDepartmentName());
			hForm.setListPortal(manager.getEmployee(hForm.getSearchName(), hForm.getPortalDepartmentBean().getMsDepartmentName()));
			hForm.setListPortalDepartment(manager.getDepartmentName());
			return mapping.findForward("assignRoleEmployee");
		}else if ("search".equalsIgnoreCase(hForm.getTask())){
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
			
			for(int i=1; i<hForm.getListPortal().size(); i++){
				if(hForm.getPortalDepartmentBean().getMsDepartmentName().equals(hForm.getListPortal().get(i).getRoleName())){
					
					System.out.println("Role Name "+i+" :"+hForm.getListPortal().get(i).getRoleName());
					System.out.println("Role ID "+i+" :"+hForm.getListPortal().get(i).getRoleId());
					System.out.println("Compare Department Name "+i+" :"+hForm.getPortalDepartmentBean().getMsDepartmentName());
					
					//insert EMP_ID -> USERNAME
					String userName=null;
					String fName = null;
					int count=0;
					String name= new String(hForm.getPortalDepartmentBean().getDeptEmployeeName());
					
					for (int j=0; j<name.length(); j++){
						if (name.charAt(j)==' '){
							count++;
						}
					}

					if(count==0){
						userName = name;
					}
					
					else if(count==1){
						name = name.replace(' ', '.').toLowerCase();
						userName = name;
					}
					
					else if(count>=2){
						name = name.replace(' ', '.').toLowerCase();
						fName = name.substring(0, name.indexOf("."))+'.';
						
						for(int j=0; j<name.length(); j++){
							if(name.charAt(j)=='.'){
								fName=fName+name.substring((j+1), (j+2));
							}
						}
						userName = fName;
					}
					
					//insert DATE -> PASSWORD
					hForm.getPortalBean().setDateOfBirth(hForm.getPortalDepartmentBean().getDateOfBirth().substring(0, 10));
					
					String dOBEdit = hForm.getPortalBean().getDateOfBirth();
					dOBEdit = dOBEdit.replace("-", "");
					System.out.println("Tanggal ULTAH= "+dOBEdit);
					
					//insert
					manager.insertUser(userName, dOBEdit, hForm.getId(), hForm.getListPortal().get(i).getRoleId());
					
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
			
//			hForm.getPortalDepartmentBean().setMsDepartmentName("Employee");
			hForm.getPortalBean().setRoleId("82");
			System.out.println("Department Name Baru = "+hForm.getPortalDepartmentBean().getMsDepartmentName()+"ID Role :"+hForm.getPortalBean().getRoleId());
			
			//insert EMP_ID -> USERNAME
			String userName=null;
			String fName = null;
			int count=0;
			String name= new String(hForm.getPortalDepartmentBean().getDeptEmployeeName());
			
			for (int j=0; j<name.length(); j++){
				if (name.charAt(j)==' '){
					count++;
				}
			}

			if(count==0){
				userName = name;
			}
			
			else if(count==1){
				name = name.replace(' ', '.').toLowerCase();
				userName = name;
			}
			
			else if(count>=2){
				name = name.replace(' ', '.').toLowerCase();
				fName = name.substring(0, name.indexOf("."))+'.';
				
				for(int i=0; i<name.length(); i++){
					if(name.charAt(i)=='.'){
						fName=fName+name.substring((i+1), (i+2));
					}
				}
				userName = fName;
			}
			
			
			//insert PASSWORD
			hForm.getPortalBean().setDateOfBirth(hForm.getPortalDepartmentBean().getDateOfBirth().substring(0, 10));
			
			String dOBEdit = hForm.getPortalBean().getDateOfBirth();
			dOBEdit = dOBEdit.replace("-", "");
			System.out.println("Tanggal ULTAH= "+dOBEdit);
			
			//insert
			manager.insertUser(userName, dOBEdit, hForm.getId(), hForm.getPortalBean().getRoleId());
			
			hForm.setSearchName(null);
			hForm.getPortalDepartmentBean().setDepartmentId(null);
			hForm.setListPortal(manager.getEmployee(hForm.getSearchName(), hForm.getPortalDepartmentBean().getDepartmentId()));
			hForm.setListPortalDepartment(manager.getDepartmentName());
			return mapping.findForward("assignRoleEmployee");
		}else if ("addEditAssignRole".equalsIgnoreCase(hForm.getTask())){
			hForm.setListPortal(manager.getRoleName());
			return mapping.findForward("addEditAssignRole");
		}else if ("masterModul".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			if (hForm.getPortalModulBean().getMenuName()!=null){
				System.out.println("Ditambahkan: ");
				manager.insertNewModul(hForm.getPortalModulBean().getMenuName(), hForm.getPortalModulBean().getUrlMenu(), hForm.getPortalModulBean().getIcon());
			}
			hForm.setListPortalModulBean(manager.getMasterModul());
			for(int i=0; i<hForm.getListPortalModulBean().size(); i++){
				System.out.println("Modul ID "+(i+1)+": "+hForm.getListPortalModulBean().get(i).getMenuIdModul());
				System.out.println("Modul Name "+(i+1)+": "+hForm.getListPortalModulBean().get(i).getMenuName());
				System.out.println("Modul Icon "+(i+1)+": "+hForm.getListPortalModulBean().get(i).getIcon());
			}
			return mapping.findForward("masterModul");
		}else if ("deleteModul".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			System.out.println("ROLE_ID = " + hForm.getId());
			
			manager.deleteMenu(hForm.getId());
			
			hForm.setListPortalModulBean(manager.getMasterModul());
			
			for(int i=0; i<hForm.getListPortalModulBean().size(); i++){
				System.out.println("Modul ID "+(i+1)+": "+hForm.getListPortalModulBean().get(i).getMenuIdModul());
				System.out.println("Modul Name "+(i+1)+": "+hForm.getListPortalModulBean().get(i).getMenuName());
				System.out.println("Modul Icon "+(i+1)+": "+hForm.getListPortalModulBean().get(i).getIcon());
			}
			return mapping.findForward("masterModul");
		}
		
		return mapping.findForward("success");
	}
}
