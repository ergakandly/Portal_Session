package com.hris.portal.manager;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hris.portal.ibatis.IbatisHelper;
import com.hris.portal.model.PortalBankBean;
import com.hris.portal.model.PortalBean;
import com.hris.portal.model.PortalCityBean;
import com.hris.portal.model.PortalDepartmentBean;
import com.hris.portal.model.PortalLocationBean;
import com.hris.portal.model.PortalMajorBean;
import com.hris.portal.model.PortalMasterRoleBean;
import com.hris.portal.model.PortalModulBean;
import com.hris.portal.model.PortalPositionBean;
import com.hris.portal.model.PortalPrivilegeBean;
import com.hris.portal.model.PortalProvinceBean;
import com.hris.portal.model.PortalUserBean;
import com.ibatis.sqlmap.client.SqlMapClient;

public class PortalManager {
	private SqlMapClient ibatis;

	public PortalManager() {
		ibatis = new IbatisHelper().getSqlMapInstance();
	}

	// ASSIGN ROLE

	public List<PortalBean> getEmployee(String searchName, String departmentId) {
		List<PortalBean> list = null;

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
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}

	public PortalDepartmentBean getOneEmployee(String empId) {
		PortalDepartmentBean portalDeptBean = null;

		try {
			ibatis.startTransaction();
			portalDeptBean = (PortalDepartmentBean) ibatis.queryForObject("employees.getOneEmp", empId);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return portalDeptBean;
	}

	public List<PortalBean> getRoleName() {
		List<PortalBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getRoleName", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}

	public List<PortalUserBean> getUserList() {
		List<PortalUserBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getUserList", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}

	public List<PortalDepartmentBean> getDepartmentName() {
		List<PortalDepartmentBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getDepartmentName", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}

	public List<PortalBean> getRoleList() {
		List<PortalBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getRoleList", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}

	public void insertUser(String userName, String pass, String empId, String roleId) {

		Map map = new HashMap();
		map.put("userName", userName);
		map.put("pass", pass);
		map.put("empId", empId);
		map.put("roleId", roleId);

		System.out.println();
		System.out.println();
		System.out.println("Di manager Insert");
		System.out.println(userName);
		System.out.println(pass);
		System.out.println(empId);
		System.out.println(roleId);

		try {
			ibatis.startTransaction();
			ibatis.insert("employees.insertUser", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}

	// MASTER ROLE
	public List<PortalMasterRoleBean> getMasterRoleName() {
		List<PortalMasterRoleBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getMasterRoleName", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}

	// Menu ROLE
	public List<PortalMasterRoleBean> getMenuRoleName(String roleId) {
		List<PortalMasterRoleBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getMenuRoleName", roleId);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}

	// Privilage ROLE
	public List<PortalMasterRoleBean> getPrivRoleName(String roleId) {
		List<PortalMasterRoleBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getPrivRoleName", roleId);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}

	// MASTER MENU
	public List<PortalMasterRoleBean> getMasterMenuName() {
		List<PortalMasterRoleBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getMasterMenuName", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		return list;
	}

	// MASTER PRIVILAGES
	public List<PortalMasterRoleBean> getMasterPrivilegeName() {
		List<PortalMasterRoleBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getMasterPrivilegeName", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return list;
	}

	// INSERT NEW ROLE Name
	public void insertNewRoleName(String addRoleName) {

		try {
			ibatis.startTransaction();
			ibatis.insert("employees.insertNewRoleName", addRoleName);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}

	// INSERT NEW ROLE MENU
	public void insertNewRoleMenu(String insertRoleMenuId) {

		try {
			ibatis.startTransaction();
			ibatis.insert("employees.insertNewRoleMenu", insertRoleMenuId);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}

	// INSERT NEW ROLE PRIV
	public void insertNewRolePriv(String insertRolePrivId) {

		try {
			ibatis.startTransaction();
			ibatis.insert("employees.insertNewRolePriv", insertRolePrivId);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}

	// Delete Role
	public void deleteRole(String roleId) {

		try {
			ibatis.startTransaction();
			ibatis.delete("employees.deleteRoleMenu", roleId);
			ibatis.delete("employees.deleteRolePriv", roleId);
			ibatis.delete("employees.deleteRoleUser", roleId);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}

	// MASTER MODUL
	public List<PortalModulBean> getMasterModul() {
		List<PortalModulBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getMasterModul", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		return list;
	}

	// INSERT NEW MODUL
	public void insertNewModul(String menuName, String urlMenu, String icon) {

		icon = "glyphicon " + icon;

		Map map = new HashMap();
		map.put("menuName", menuName);
		map.put("urlMenu", urlMenu);
		map.put("icon", icon);

		System.out.println("MenuName= " + menuName);
		System.out.println("URLMenu= " + urlMenu);
		System.out.println("Icon= " + icon);

		try {
			ibatis.startTransaction();
			ibatis.insert("employees.insertNewModul", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	// EDIT MODUL
	public void editModul(String menuIdModul,String menuName, String urlMenu, String icon) {

		icon = "glyphicon " + icon;

		Map map = new HashMap();
		map.put("menuIdModul", menuIdModul);
		map.put("menuName", menuName);
		map.put("urlMenu", urlMenu);
		map.put("icon", icon);
		
		System.out.println("menuIdModul= " + menuIdModul);
		System.out.println("MenuName= " + menuName);
		System.out.println("URLMenu= " + urlMenu);
		System.out.println("Icon= " + icon);

		try {
			ibatis.startTransaction();
			ibatis.update("employees.editModul", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}

	// Delete Role
	public void deleteMenu(String menuIdModul) {

		try {
			ibatis.startTransaction();
			ibatis.delete("employees.deleteMenu", menuIdModul);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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
	
	/*BEGIN MASTER OTHERS*/
	//GET
	
	//PROVINCE
	public List<PortalProvinceBean> getAllProvince() {
		List<PortalProvinceBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("list.getProvince", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		return list;
	}
	
	//CITY
	public List<PortalCityBean> getAllCity() {
		List<PortalCityBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("list.getCity", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		return list;
	}
	
	//MAJOR
	public List<PortalMajorBean> getAllMajor() {
		List<PortalMajorBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("list.getMajor", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		return list;
	}
	
	//DEPARTMENT
	public List<PortalDepartmentBean> getAllDepartment() {
		List<PortalDepartmentBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("list.getDepartment", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		return list;
	}
		
	//LOCATION
	public List<PortalLocationBean> getAllLocation() {
		List<PortalLocationBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("list.getLocation", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		return list;
	}
	
	//PRIVILEGE
	public List<PortalPrivilegeBean> getAllPrivilege() {
		List<PortalPrivilegeBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("list.getPrivilege", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		return list;
	}
	
	//POSITION
	public List<PortalPositionBean> getAllPosition() {
		List<PortalPositionBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("list.getPosition", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		return list;
	}
	
	//BANK
	public List<PortalBankBean> getAllBank() {
		List<PortalBankBean> list = null;

		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("list.getBank", "");
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		return list;
	}
	
	
	
	//INSERT
	
	//PROVINCE
	public void insertNewProvince(String provinceName) {
		System.out.println("MANAGER province dalam jalan loohh");
		try {
			ibatis.startTransaction();
			ibatis.insert("list.insertProvince", provinceName);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//CITY
	public void insertNewCity(String cityName, String cityProvinceId) {
		System.out.println("MANAGER CITY dalam jalan loohh");
		Map map = new HashMap();
		map.put("cityName", cityName);
		map.put("cityProvinceId", cityProvinceId);
		System.out.println("Lalala");
		try {
			ibatis.startTransaction();
			ibatis.insert("list.insertCity", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//MAJOR
	public void insertNewMajor(String majorName, String description) {
		
		System.out.println("MANAGER MAJOR dalam jalan loohh");
		
		Map map = new HashMap();
		map.put("majorName", majorName);
		map.put("description", description);
		
		try {
			ibatis.startTransaction();
			ibatis.insert("list.insertMajor", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//DEPARTMENT
	public void insertNewDepartment(String msDepartmentName, String description) {
		
		System.out.println("MANAGER Department dalam jalan loohh");
		
		Map map = new HashMap();
		map.put("msDepartmentName", msDepartmentName);
		map.put("description", description);
		
		try {
			ibatis.startTransaction();
			ibatis.insert("list.insertDepartment", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//LOCATION
	public void insertNewLocation(String locationName, String description) {
		
		System.out.println("MANAGER location dalam jalan loohh");
		
		Map map = new HashMap();
		map.put("locationName", locationName);
		map.put("description", description);
		
		try {
			ibatis.startTransaction();
			ibatis.insert("list.insertLocation", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//PRIVILEGE
	public void insertNewPrivilege(String privilegeName, String description) {
		
		System.out.println("MANAGER PRIVILEGE dalam jalan loohh");
		
		Map map = new HashMap();
		map.put("privilegeName", privilegeName);
		map.put("description", description);
		
		try {
			ibatis.startTransaction();
			ibatis.insert("list.insertPrivilege", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//POSITION
	public void insertNewPosition(String positionName, String description) {
		
		System.out.println("MANAGER POSITION dalam jalan loohh");
		
		Map map = new HashMap();
		map.put("positionName", positionName);
		map.put("description", description);
		
		try {
			ibatis.startTransaction();
			ibatis.insert("list.insertPosition", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//BANK
	public void insertNewBank(String bankName, String description) {
		
		System.out.println("MANAGER BANK dalam jalan loohh");
		
		Map map = new HashMap();
		map.put("bankName", bankName);
		map.put("description", description);
		
		try {
			ibatis.startTransaction();
			ibatis.insert("list.insertBank", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	
	
	//DELETE
	
	//PROVINCE
	public void deleteProvince(String id) {
		System.out.println("Delete Province");
		try {
			ibatis.startTransaction();
			ibatis.delete("list.deleteProvince", id);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//CITY
	public void deleteCity(String id) {
		System.out.println("Delete City");
		
		try {
			ibatis.startTransaction();
			ibatis.delete("list.deleteCity", id);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//MAJOR
	public void deleteMajor(String id) {
		System.out.println("Delete Major");

		try {
			ibatis.startTransaction();
			ibatis.delete("list.deleteMajor", id);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//DEPARTMENT
	public void deleteDepartment(String id) {
		System.out.println("Delete Department");

		try {
			ibatis.startTransaction();
			ibatis.delete("list.deleteDepartment", id);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		}
	
	//LOCATION
	public void deleteLocation(String id) {
		System.out.println("Delete Location");

		try {
			ibatis.startTransaction();
			ibatis.delete("list.deleteLocation", id);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//PRIVILEGE
	public void deletePrivilege(String id) {
		System.out.println("Delete Privilege");

		try {
			ibatis.startTransaction();
			ibatis.delete("list.deletePrivilege", id);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//POSITION
	public void deletePosition(String id) {
		System.out.println("Delete Position");

		try {
			ibatis.startTransaction();
			ibatis.delete("list.deletePosition", id);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//BANK
	public void deleteBank(String id) {
		System.out.println("Delete Bank");

		try {
			ibatis.startTransaction();
			ibatis.delete("list.deleteBank", id);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	
	//EDIT PASSWORD
	
	public void editPassword(String userName, String newPass) {

		Map map = new HashMap();
		map.put("userName", userName);
		map.put("newPass", newPass);

		try {
			ibatis.startTransaction();
			ibatis.update("list.editPassword", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//EDIT PROVINCE
	public void editProvince(String id, String provinceName) {

		System.out.println("id "+id);
		System.out.println("provname "+provinceName);
		
		Map map = new HashMap();
		map.put("id", id);
		map.put("provinceName", provinceName);

		try {
			ibatis.startTransaction();
			ibatis.update("list.editProvince", map);
			ibatis.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	//END MASTER OTHERS

}
