package com.hris.portal.manager;

import java.sql.SQLException;
import java.util.List;

import com.hris.portal.ibatis.IbatisHelper;
import com.hris.portal.model.PortalBean;
import com.ibatis.sqlmap.client.SqlMapClient;

public class PortalManager {
	private SqlMapClient ibatis;
	
	public PortalManager(){
		ibatis = new IbatisHelper().getSqlMapInstance();		
	}
	
	public List<PortalBean> getEmployee(){
		List<PortalBean> list =  null;
		try {
			ibatis.startTransaction();
			list = ibatis.queryForList("employees.getEmployee", "");
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
