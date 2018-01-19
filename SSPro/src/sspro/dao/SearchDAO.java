package sspro.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import sspro.vo.MemberArtistVO;
import sspro.vo.SpacePostVO;

public class SearchDAO {//한정숙: 검색DAO - 지역, 분류,해시태그, 상호명
	
	
	SqlMapClient sqlMap;
	
	public SearchDAO() {
		 sqlMap = MySqlMapClient.getSqlMapInstance(); 
	}
	
	public List<SpacePostVO> searchAll(Map map) {//Map<String, String> 
		List<SpacePostVO> list = null;
		try {
			list = sqlMap.queryForList("search.searchAll",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<SpacePostVO> hashTagAll(String searchs) {//메인에서 해시태그 검색
		List<SpacePostVO> list = null;
		String hash_name = searchs;
		try {
			
			list = sqlMap.queryForList("search.hashTagAll","%"+hash_name+"%");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	

}

