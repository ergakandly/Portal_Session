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

	String userRoleId=null;
	
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
		System.out.println("Tasknya : " + hForm.getTask());
		
		if("login".equalsIgnoreCase(hForm.getTask())){
			String password = PortalUtil.getHash(hForm.getPass());
			hForm.setPortalUserBean(manager.checkLogin(hForm.getUser(), password));
			if (null != hForm.getPortalUserBean().getUserRoleId()) {
				System.out.println("ROLE ID USER = "+hForm.getPortalUserBean().getUserRoleId());
				userRoleId = hForm.getPortalUserBean().getUserRoleId();
				
				if("admin".equalsIgnoreCase(hForm.getUser()))
					return mapping.findForward("dashboardAdmin");
				else {
					hForm.setListPortalMasterRoleMenu(manager.getMenuRoleName(hForm.getPortalUserBean().getUserRoleId()));
					System.out.println(hForm.getPortalMasterRoleBean().getUrlMenuRole());
					return mapping.findForward("dashboardUser");
				}
			}
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
		}else if ("dashboardUser".equalsIgnoreCase(hForm.getTask())){
			System.out.println("User Role ID Balik: "+userRoleId);
			hForm.setListPortalMasterRoleMenu(manager.getMenuRoleName(userRoleId));
			return mapping.findForward("dashboardUser");
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
						userName = name.toLowerCase();
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
			hForm.getPortalBean().setRoleId("4");
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
				userName = name.toLowerCase();
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
			hForm.setListPortalModulBean(manager.getMasterModul());
			for(int i=0; i<hForm.getListPortalModulBean().size(); i++){
				System.out.println("Modul ID "+(i+1)+": "+hForm.getListPortalModulBean().get(i).getMenuIdModul());
				System.out.println("Modul Name "+(i+1)+": "+hForm.getListPortalModulBean().get(i).getMenuName());
				System.out.println("Modul Icon "+(i+1)+": "+hForm.getListPortalModulBean().get(i).getIcon());
				System.out.println("Modul Icon Substring "+(i+1)+": "+hForm.getListPortalModulBean().get(i).getIconSubstr());
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
				System.out.println("Modul Icon Substring "+(i+1)+": "+hForm.getListPortalModulBean().get(i).getIconSubstr());
			}
			return mapping.findForward("masterModul");
		}else if ("saveAddModule".equalsIgnoreCase(hForm.getTask())){
			manager.insertNewModul(hForm.getPortalModulBean().getMenuName(), hForm.getPortalModulBean().getUrlMenu(), hForm.getPortalModulBean().getIcon());
			hForm.setListPortalModulBean(manager.getMasterModul());
			return mapping.findForward("masterModul");
		}else if ("editModule".equalsIgnoreCase(hForm.getTask())){
			manager.editModul(hForm.getId(), hForm.getPortalModulBean().getMenuName(), hForm.getPortalModulBean().getUrlMenu(), hForm.getPortalModulBean().getIcon());
			hForm.setListPortalModulBean(manager.getMasterModul());
			hForm.getPortalModulBean().setMenuName("");
			hForm.getPortalModulBean().setUrlMenu("");
			
			return mapping.findForward("masterModul");
		}else if ("masterOthers".equalsIgnoreCase(hForm.getTask())){
			if(hForm.getPortalProvinceBean().getProvinceName()!=null){
				manager.insertNewProvince(hForm.getPortalProvinceBean().getProvinceName());
			}else if(hForm.getPortalCityBean().getCityName()!=null){
				manager.insertNewCity(hForm.getPortalCityBean().getCityName(), hForm.getPortalCityBean().getCityProvinceId());
			}else if(hForm.getPortalMajorBean().getMajorName()!=null){
				manager.insertNewMajor(hForm.getPortalMajorBean().getMajorName(), hForm.getPortalMajorBean().getDescription());
			}else if(hForm.getPortalDepartmentBean().getMsDepartmentName()!=null){
				manager.insertNewDepartment(hForm.getPortalDepartmentBean().getMsDepartmentName(), hForm.getPortalDepartmentBean().getDescription());
			}else if(hForm.getPortalLocationBean().getLocationName()!=null){
				manager.insertNewLocation(hForm.getPortalLocationBean().getLocationName(), hForm.getPortalLocationBean().getDescription());
			}else if(hForm.getPortalPrivilegeBean().getPrivilegeName()!=null){
				manager.insertNewPrivilege(hForm.getPortalPrivilegeBean().getPrivilegeName(), hForm.getPortalPrivilegeBean().getDescription());
			}else if(hForm.getPortalPositionBean().getPositionName()!=null){
				manager.insertNewPosition(hForm.getPortalPositionBean().getPositionName(), hForm.getPortalPositionBean().getDescription());
			}else if(hForm.getPortalBankBean().getBankName()!=null){
				manager.insertNewBank(hForm.getPortalBankBean().getBankName(), hForm.getPortalBankBean().getDescription());
			}
			
			hForm.setListPortalProvince(manager.getAllProvince());
			hForm.setListPortalCity(manager.getAllCity());
			hForm.setListPortalMajor(manager.getAllMajor());
			hForm.setListPortalDepartment(manager.getAllDepartment());
			hForm.setListPortalLocation(manager.getAllLocation());
			hForm.setListPortalPrivilege(manager.getAllPrivilege());
			hForm.setListPortalPosition(manager.getAllPosition());
			hForm.setListPortalBank(manager.getAllBank());
			return mapping.findForward("masterOthers");
		}
		
		return mapping.findForward("success");
	}
}
