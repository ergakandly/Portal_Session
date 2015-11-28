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
	String userAction;
	String passAction;
	
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
				hForm.setUserExist(hForm.getUser());
				hForm.setPassExist(password);
				userAction = hForm.getUser();
				passAction = password;
				
				if("admin".equalsIgnoreCase(hForm.getUser())){
					System.out.println("Get user Id: "+hForm.getUserExist());
					return mapping.findForward("dashboardAdmin");
				}
				else {
					System.out.println("Get user Id: "+hForm.getUserExist());
					hForm.setListPortalMasterRoleMenu(manager.getMenuRoleName(hForm.getPortalUserBean().getUserRoleId()));
					System.out.println(hForm.getPortalMasterRoleBean().getUrlMenuRole());
					return mapping.findForward("dashboardUser");
				}
			}
		}
		else if ("deleteRole".equalsIgnoreCase(hForm.getTask())){	
			System.out.println("Tasknya : " + hForm.getTask());
			System.out.println("ROLE_ID = "+hForm.getId());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
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
			System.out.println("Get user Id: "+hForm.getUserExist());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);

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
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
			return mapping.findForward("changePass");
		}else if ("dashboardAdmin".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
			System.out.println("ID USER di Admin = "+hForm.getUserExist());
			System.out.println("ID PASS di Admin = "+hForm.getPassExist());
			return mapping.findForward("dashboardAdmin");
		}else if ("dashboardUser".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
			System.out.println("User Role ID Balik: "+userRoleId);
			System.out.println("ID USER di Admin = "+hForm.getUserExist());
			System.out.println("ID PASS di Admin = "+hForm.getPassExist());
			hForm.setListPortalMasterRoleMenu(manager.getMenuRoleName(userRoleId));
			return mapping.findForward("dashboardUser");
		}else if ("addEditRole".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
			return mapping.findForward("addEditRole");
		}else if ("assignRole".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
			hForm.setListPortal(manager.getRoleList());
			return mapping.findForward("assignRole");
		}else if ("assignRoleEmployee".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
			System.out.println("Department : " + hForm.getPortalDepartmentBean().getMsDepartmentName());
			hForm.setListPortal(manager.getEmployee(hForm.getSearchName(), hForm.getPortalDepartmentBean().getMsDepartmentName()));
			hForm.setListPortalDepartment(manager.getDepartmentName());
			return mapping.findForward("assignRoleEmployee");
		}else if ("search".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
			System.out.println("ID : " + hForm.getPortalDepartmentBean().getDepartmentId());
			hForm.setListPortal(manager.getEmployee(hForm.getSearchName(), hForm.getPortalDepartmentBean().getDepartmentId()));
			hForm.setListPortalDepartment(manager.getDepartmentName());
			
			return mapping.findForward("assignRoleEmployee");
		}else if ("select".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
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
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
			hForm.setListPortal(manager.getRoleName());
			return mapping.findForward("addEditAssignRole");
		}else if ("masterModul".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
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
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
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
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
			manager.insertNewModul(hForm.getPortalModulBean().getMenuName(), hForm.getPortalModulBean().getUrlMenu(), hForm.getPortalModulBean().getIcon());
			hForm.setListPortalModulBean(manager.getMasterModul());
			return mapping.findForward("masterModul");
		}else if ("editModule".equalsIgnoreCase(hForm.getTask())){
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
			manager.editModul(hForm.getId(), hForm.getPortalModulBean().getMenuName(), hForm.getPortalModulBean().getUrlMenu(), hForm.getPortalModulBean().getIcon());
			hForm.setListPortalModulBean(manager.getMasterModul());
			hForm.getPortalModulBean().setMenuName("");
			hForm.getPortalModulBean().setUrlMenu("");
			
			return mapping.findForward("masterModul");
		}else if ("masterOthers".equalsIgnoreCase(hForm.getTask())){	
			System.out.println("Tasknya : " + hForm.getTask());
			hForm.setUserExist(userAction);
			hForm.setPassExist(passAction);
			
			System.out.println("NAVBAR"+hForm.getId());
			System.out.println("Isdelete luar: "+hForm.getIsDeleteMasterOthers());
			
			//DELETE
			
			if("province".equals(hForm.getIsDeleteMasterOthers())){
				manager.deleteProvince(hForm.getId());
			}else if("city".equals(hForm.getIsDeleteMasterOthers())){
				manager.deleteCity(hForm.getId());
			}else if("major".equals(hForm.getIsDeleteMasterOthers())){
				manager.deleteMajor(hForm.getId());
			}else if("department".equals(hForm.getIsDeleteMasterOthers())){
				manager.deleteDepartment(hForm.getId());
			}else if("location".equals(hForm.getIsDeleteMasterOthers())){
				manager.deleteLocation(hForm.getId());
			}else if("privilege".equals(hForm.getIsDeleteMasterOthers())){
				manager.deletePrivilege(hForm.getId());
			}else if("position".equals(hForm.getIsDeleteMasterOthers())){
				manager.deletePosition(hForm.getId());
			}else if("bank".equals(hForm.getIsDeleteMasterOthers())){
				manager.deleteBank(hForm.getId());
			}
				
			
			//INSERT

			if(!"".equals(hForm.getPortalProvinceBean().getProvinceNameTemp())){
				System.out.println("Province Luar: "+hForm.getPortalProvinceBean().getProvinceNameTemp());
				hForm.getPortalProvinceBean().setProvinceName(hForm.getPortalProvinceBean().getProvinceNameTemp());
				manager.insertNewProvince(hForm.getPortalProvinceBean().getProvinceName());
				hForm.getPortalProvinceBean().setProvinceNameTemp("");
			}else if(!"".equals(hForm.getPortalCityBean().getCityNameTemp())){
				System.out.println("City Luar: "+hForm.getPortalProvinceBean().getProvinceNameTemp());
				hForm.getPortalCityBean().setCityName(hForm.getPortalCityBean().getCityNameTemp());
				manager.insertNewCity(hForm.getPortalCityBean().getCityName(), hForm.getPortalCityBean().getCityProvinceId());
				hForm.getPortalCityBean().setCityNameTemp("");
			}else if(!"".equals(hForm.getPortalMajorBean().getMajorNameTemp())){
				System.out.println("Major Luar: "+hForm.getPortalMajorBean().getMajorNameTemp());
				hForm.getPortalMajorBean().setMajorName(hForm.getPortalMajorBean().getMajorNameTemp());
				manager.insertNewMajor(hForm.getPortalMajorBean().getMajorName(), hForm.getPortalMajorBean().getDescription());
				hForm.getPortalMajorBean().setMajorNameTemp("");
			}else if(!"".equals(hForm.getPortalDepartmentBean().getMsDepartmentNameTemp())){
				System.out.println("Department Luar: "+hForm.getPortalDepartmentBean().getMsDepartmentNameTemp());
				hForm.getPortalDepartmentBean().setMsDepartmentName(hForm.getPortalDepartmentBean().getMsDepartmentNameTemp());
				manager.insertNewDepartment(hForm.getPortalDepartmentBean().getMsDepartmentName(), hForm.getPortalDepartmentBean().getDescription());
				hForm.getPortalDepartmentBean().setMsDepartmentNameTemp("");
			}else if(!"".equals(hForm.getPortalLocationBean().getLocationNameTemp())){
				System.out.println("Location Luar: "+hForm.getPortalLocationBean().getLocationNameTemp());
				hForm.getPortalLocationBean().setLocationName(hForm.getPortalLocationBean().getLocationNameTemp());
				manager.insertNewLocation(hForm.getPortalLocationBean().getLocationName(), hForm.getPortalLocationBean().getDescription());
				hForm.getPortalLocationBean().setLocationNameTemp("");
			}else if(!"".equals(hForm.getPortalPrivilegeBean().getPrivilegeNameTemp())){
				System.out.println("Privilege Luar: "+hForm.getPortalPrivilegeBean().getPrivilegeNameTemp());
				hForm.getPortalPrivilegeBean().setPrivilegeName(hForm.getPortalPrivilegeBean().getPrivilegeNameTemp());
				manager.insertNewPrivilege(hForm.getPortalPrivilegeBean().getPrivilegeName(), hForm.getPortalPrivilegeBean().getDescription());
				hForm.getPortalPrivilegeBean().setPrivilegeNameTemp("");
			}else if(!"".equals(hForm.getPortalPositionBean().getPositionNameTemp())){
				System.out.println("Position Luar: "+hForm.getPortalPositionBean().getPositionNameTemp());
				hForm.getPortalPositionBean().setPositionName(hForm.getPortalPositionBean().getPositionNameTemp());
				manager.insertNewPosition(hForm.getPortalPositionBean().getPositionName(), hForm.getPortalPositionBean().getDescription());
				hForm.getPortalPositionBean().setPositionNameTemp("");
			}else if(!"".equals(hForm.getPortalBankBean().getBankNameTemp())){
				System.out.println("Bank Luar: "+hForm.getPortalBankBean().getBankNameTemp());
				hForm.getPortalBankBean().setBankName(hForm.getPortalBankBean().getBankNameTemp());
				manager.insertNewBank(hForm.getPortalBankBean().getBankName(), hForm.getPortalBankBean().getDescription());
				hForm.getPortalBankBean().setBankNameTemp("");
			}

			hForm.setIsDeleteMasterOthers("0");
			
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
