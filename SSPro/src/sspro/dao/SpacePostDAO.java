package sspro.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import sspro.vo.HashTagVO;
import sspro.vo.SpacePostVO;

public class SpacePostDAO {//������: �����Խñ� ��� DAO

	SqlMapClient sqlMap;
	
	public SpacePostDAO() {
		 sqlMap = MySqlMapClient.getSqlMapInstance(); 
	}

	public boolean insert(SpacePostVO spacepostvo, HashMap<String,HashTagVO> hashmap) {
		
		try {
			sqlMap.insert("spacepost.insert",spacepostvo);
			
			if(hashmap != null)	{
				for(int i =0 ; i<hashmap.size();i++) {
				HashTagVO hashtagvo = hashmap.get(i);//hashmap key��:1,2,3
				sqlMap.insert("spacepost.hashinsert",hashtagvo);
			   }
		     }
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return false;  
	}  
	
	 public SpacePostVO select(String spacepost_id) {//�Խñ� �ҷ����� 
		    //System.out.println(smember_id);
	    	SpacePostVO spacepostvo = null;
			try {
				spacepostvo = (SpacePostVO)sqlMap.queryForObject("spacepost.select", spacepost_id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
	    	return spacepostvo;
		}
	 
	 public HashTagVO hashTagSelect(String spacepost_id) {//spacepost_id�� �´� �ؽ��±� �ҷ����� 
		 HashTagVO hashtagvo = null;
		 try {
			hashtagvo = (HashTagVO) sqlMap.queryForObject("spacepost.hashtagselect", spacepost_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return hashtagvo;
	 }
	 
	 public ArrayList<SpacePostVO> selectAll() {//�����Խñ� ��ü�ҷ�����

	        ArrayList<SpacePostVO> list = null;
	        
				try {
					list = (ArrayList<SpacePostVO>) sqlMap.queryForList("spacepost.selectAll");
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return list;
		}
	 
	 public boolean delete(String spacepost_id) {//�Խñ� ����
			try {
				int t = sqlMap.delete("spacepost.delete", spacepost_id);
				if(t==1) return true;
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
			return false;
		}
}