package sspro.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import sspro.vo.MemberArtistVO;

public class MemberArtistDAO {
  
	private SqlMapClient sqlMap;

	public MemberArtistDAO() {
       sqlMap = MySqlMapClient.getSqlMapInstance();
		
	}// ������

	public boolean insert(MemberArtistVO memberartistvo) {
		try {
			sqlMap.insert("memberartist.insert", memberartistvo);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;

	}// insert

	public boolean update(MemberArtistVO memberartistvo) {
		
		try {
			int t = sqlMap.update("memberartist.update", memberartistvo);
		if(t==1)return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;

	}//update

	public boolean delete(String amember_id) {//id�� ����
		try {
			int t = sqlMap.delete("memberartist.delete", amember_id);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;

	}//delete

	public MemberArtistVO select(String amember_id) {//id�� ������ȸ
		MemberArtistVO memberartist=null;
		try {
			memberartist = (MemberArtistVO)sqlMap.queryForObject("memberartist.select", amember_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memberartist;
	}
	
	public String amId_select(String amember_email) {//ȸ�� ������ ��������
		String amember_id=null;
		try {
			amember_id = (String) sqlMap.queryForObject("memberartist.Idselect", amember_email);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return amember_id;
		
	}

	public List<MemberArtistVO> selectAll() {
		List<MemberArtistVO> list = null;
		try {
			list = sqlMap.queryForList("memberartist.selectAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean amLogin(Map<String, String> member_Info) {
		int t=0;
		
		try {
			t = (int) sqlMap.queryForObject("memberartist.login", member_Info);
			if(t==1) return true;	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
