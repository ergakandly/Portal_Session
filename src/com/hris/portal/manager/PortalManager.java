package com.hris.portal.manager;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hris.portal.ibatis.IbatisHelper;
import com.hris.portal.model.PortalBean;
import com.ibatis.sqlmap.client.SqlMapClient;

public class PortalManager {
	private SqlMapClient ibatis;
	
	public PortalManager(){
		ibatis = new IbatisHelper().getSqlMapInstance();		
	}
	
	public List<PortalBean> getEmployee(String searchName){
		List<PortalBean> list =  null;
		
		Map map = new HashMap();
		map.put("searchName", searchName);

		System.out.println("Search Name: " + searchName);
		
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
	
	
	public PortalBean getOneEmployee(String empId){
		PortalBean pBean = null;
		
		try {
			ibatis.startTransaction();
			pBean = (PortalBean) ibatis.queryForObject("employees.getOneEmp", empId);
			ibatis.commitTransaction();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				ibatis.endTransaction();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return pBean;
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
	
}
