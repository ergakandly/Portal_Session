package com.hris.portal.manager;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hris.portal.ibatis.IbatisHelper;
import com.hris.portal.model.PortalBean;
import com.hris.portal.model.PortalDepartmentBean;
import com.hris.portal.model.PortalMasterRoleBean;
import com.hris.portal.model.PortalModulBean;
import com.hris.portal.model.PortalUserBean;
import com.ibatis.sqlmap.client.SqlMapClient;

public class PortalManager {
	private SqlMapClient ibatis;
	
	public PortalManager(){
		ibatis = new IbatisHelper().getSqlMapInstance();		
	}
	
	//ASSIGN ROLE
	
	public List<PortalBean> getEmployee(String searchName, String departmentId){
		List<PortalBean> list =  null;
		
		Map map = new HashMap();
		map.put("searchName", searchName);
		map.put("departmentId", departmentId);
		
		System.out.println("Search Name: " + searchName);
		System.out.println("Department ID: " + departmentId);
		
		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getEmployee", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public PortalDepartmentBean getOneEmployee(String empId){
		PortalDepartmentBean portalDeptBean = null;
		
		try {
			ibatis.startTransaction();
			portalDeptBean = (PortalDepartmentBean) ibatis.queryForObject("employees.getOneEmp", empId);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return portalDeptBean;
	}
	
	public List<PortalBean> getRoleName(){
		List<PortalBean> list =  null;
		
		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getRoleName", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public List<PortalUserBean> getUserList(){
		List<PortalUserBean> list =  null;
		
		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getUserList", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public List<PortalDepartmentBean> getDepartmentName(){
		List<PortalDepartmentBean> list =  null;
		
		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getDepartmentName", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public List<PortalBean> getRoleList(){
		List<PortalBean> list =  null;
		
		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getRoleList", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public void insertUser(String employeeName, String msDepartmentName, String empId, String roleId){
		
		Map map = new HashMap();
		map.put("employeeName", employeeName);
		map.put("msDepartmentName", msDepartmentName);
		map.put("empId", empId);
		map.put("roleId", roleId);
		
		System.out.println();
		System.out.println();
		System.out.println("Di manager Insert");
		System.out.println(employeeName);
		System.out.println(msDepartmentName);
		System.out.println(empId);
		System.out.println(roleId);
		
		try {
			ibatis.startTransaction();
			ibatis.insert("employees.insertUser", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	
	//MASTER ROLE
	public List<PortalMasterRoleBean> getMasterRoleName(){
		List<PortalMasterRoleBean> list =  null;
		
		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getMasterRoleName", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}
	
	//Menu ROLE
	public List<PortalMasterRoleBean> getMenuRoleName(String roleId){
		List<PortalMasterRoleBean> list =  null;
		
		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getMenuRoleName", roleId);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}
	
	//Privilage ROLE
		public List<PortalMasterRoleBean> getPrivRoleName(String roleId){
			List<PortalMasterRoleBean> list =  null;
			
			try {
				ibatis.startTransaction();
				list = ibatis.queryForList("employees.getPrivRoleName", roleId);
				ibatis.commitTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				try {
					ibatis.endTransaction();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
			return list;
		}
	
		//MASTER MENU
		public List<PortalMasterRoleBean> getMasterMenuName(){
			List<PortalMasterRoleBean> list =  null;
			
			try {
				ibatis.startTransaction();
				list = ibatis.queryForList("employees.getMasterMenuName", "");
				ibatis.commitTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				try {
					ibatis.endTransaction();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		
			return list;
		}
				
		//MASTER PRIVILAGES
		public List<PortalMasterRoleBean> getMasterPrivilegeName(){
			List<PortalMasterRoleBean> list =  null;
			
			try {
				ibatis.startTransaction();
				list = ibatis.queryForList("employees.getMasterPrivilegeName", "");
				ibatis.commitTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				try {
					ibatis.endTransaction();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
			return list;
		}
				
		//INSERT NEW ROLE Name
		public void insertNewRoleName(String addRoleName){
			
			try {
				ibatis.startTransaction();
				ibatis.insert("employees.insertNewRoleName", addRoleName);
				ibatis.commitTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				try {
					ibatis.endTransaction();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}
		
		//INSERT NEW ROLE MENU
		public void insertNewRoleMenu(String insertRoleMenuId){
			
			try {
				ibatis.startTransaction();
				ibatis.insert("employees.insertNewRoleMenu", insertRoleMenuId);
				ibatis.commitTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				try {
					ibatis.endTransaction();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}
				
		//INSERT NEW ROLE PRIV
		public void insertNewRolePriv(String insertRolePrivId){
			
			try {
				ibatis.startTransaction();
				ibatis.insert("employees.insertNewRolePriv", insertRolePrivId);
				ibatis.commitTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				try {
					ibatis.endTransaction();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}		
		
		//Delete Role
		public void deleteRole(String roleId){
			
			try {
				ibatis.startTransaction();
				ibatis.delete("employees.deleteRoleMenu", roleId);
				ibatis.delete("employees.deleteRolePriv", roleId);
				ibatis.delete("employees.deleteRoleUser", roleId);
				ibatis.commitTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				try {
					ibatis.endTransaction();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}	
		
		//MASTER MODUL
		public List<PortalModulBean> getMasterModul(){
			List<PortalModulBean> list =  null;
			
			try {
				ibatis.startTransaction();
				list = ibatis.queryForList("employees.getMasterModul", "");
				ibatis.commitTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				try {
					ibatis.endTransaction();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		
			return list;
		}
		
		//INSERT NEW MODUL
		public void insertNewModul(String menuName, String urlMenu, String icon){
			
			icon = "glyphicon "+icon;
			
			Map map = new HashMap();
			map.put("menuName", menuName);
			map.put("urlMenu", urlMenu);
			map.put("icon", icon);

			System.out.println("MenuName= "+menuName);
			System.out.println("URLMenu= "+urlMenu);
			System.out.println("Icon= "+icon);
			
			try {
				ibatis.startTransaction();
				ibatis.insert("employees.insertNewModul", map);
				ibatis.commitTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				try {
					ibatis.endTransaction();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}
		
		//Delete Role
		public void deleteMenu(String menuIdModul){
			
			try {
				ibatis.startTransaction();
				ibatis.delete("employees.deleteMenu", menuIdModul);
				ibatis.commitTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				try {
					ibatis.endTransaction();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}
		
		public PortalUserBean checkLogin(String username, String password) {
			Map user = new HashMap();
			user.put("username", username);
			user.put("password", password);
			
			PortalUserBean bean = null;
			try {
				bean = (PortalUserBean) ibatis.queryForObject("employees.checkLogin", user);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return bean;
		}
		
}
