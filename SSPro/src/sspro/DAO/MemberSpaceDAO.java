package sspro.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
	
    public MemberSpaceVO select(String smember_id) {
    	MemberSpaceVO memberspacevo = null;
		int no = Integer.parseInt(smember_id);
		
		try {
			memberspacevo = (MemberSpaceVO)sqlMap.queryForObject("memberspace.select", no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return memberspacevo;
	}
    
    
	public ArrayList<MemberSpaceVO> selectAll() {

        ArrayList<MemberSpaceVO> list=null;
        
			try {
				list = (ArrayList<MemberSpaceVO>) sqlMap.queryForList("memberspace.selectAll");
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
			
	}  //selectAll
	
 
	public boolean delete(String smember_id) {
		 
		
		try {
			int t = sqlMap.delete("memberspace.delete", smember_id);
			if(t==1) return true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean smLogin(Map<String, String> member_Info) {
		
		int t=0;
		
		try {
			t = (int) sqlMap.queryForObject("memberspace.login", member_Info);
			if(t==1) return true;	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
