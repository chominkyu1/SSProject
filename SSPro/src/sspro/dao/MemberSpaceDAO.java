package sspro.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import sspro.vo.MemberSpaceVO;


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

		try {
			memberspacevo = (MemberSpaceVO)sqlMap.queryForObject("memberspace.select", smember_id);
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
	
	
	public MemberSpaceVO smId_select(String smember_email) {//이메일로 공간회원 정보 가져오기
		MemberSpaceVO memberspace=null;
		try {
			memberspace = (MemberSpaceVO) sqlMap.queryForObject("memberspace.emailSelect", smember_email);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memberspace;
	}
	
	public String idSelect(String smember_email) {
		String smember_id = null;
		
		try {
			smember_id = (String) sqlMap.queryForObject("memberspace.idselect", smember_email );
			System.out.println("dao에서 smember_id :"+smember_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return smember_id;
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
	
   public boolean update(Map<String, String> map) {//공간제공회원정보 수정
	 try {
		sqlMap.update("memberspace.update",map);
		return true;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 return false;
   }

}
