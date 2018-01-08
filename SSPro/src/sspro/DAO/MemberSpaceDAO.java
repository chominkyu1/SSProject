package sspro.DAO;

import java.sql.SQLException;
import java.util.ArrayList;


import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import sspro.VO.MemberSpaceVO;


public class MemberSpaceDAO {
  
	 SqlMapClient sqlMap;	
	 
	public MemberSpaceDAO() {
		  sqlMap = MySqlMapClient.getSqlMapInstance(); 

	}
	
	public boolean insert(MemberSpaceVO memberspacevo) {
		
		try {
			sqlMap.insert("memberspace.insert",memberspacevo);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return false;  
		
	}
	
	


}
