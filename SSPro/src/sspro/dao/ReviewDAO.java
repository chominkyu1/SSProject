package sspro.dao;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import sspro.vo.SpaceReviewVO;

public class ReviewDAO {//������ : �ı�DAO
	SqlMapClient sqlMap;	
	 
	public ReviewDAO() {
		  sqlMap = MySqlMapClient.getSqlMapInstance(); 
	}
	
	/*public boolean spaceReviewInsert() {
		
	}
	
	public SpaceReviewVO spaceReviewSelect(String spacepost_id) {
		
		
	}
	
	public void spaceReviewDelete() {
		
	}
	
	*/
	
	
}

