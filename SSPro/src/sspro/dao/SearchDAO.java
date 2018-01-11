package sspro.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import sspro.vo.MemberArtistVO;

public class SearchDAO {//한정숙: 검색DAO - 지역, 분류,해시태그, 상호명
	
	SqlMapClient sqlMap;
	
	public SearchDAO() {
		 sqlMap = MySqlMapClient.getSqlMapInstance(); 
	}
	
	public List<String> areaAll(String spacepost_area) {//지역
		List<String> list = null;
		try {
			list = sqlMap.queryForList("search.areaAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<String> sortAll(String spacepost_sort) {//분류
		List<String> list = null;
		try {
			list = sqlMap.queryForList("search.sortAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<String> hashTagAll(String searchs) {//해시태그
		List<String> list = null;
		String hash_name = searchs;
		try {
			list = sqlMap.queryForList("search.hashTagAll","%"+hash_name+"%");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<String> shopNameAll(String spacepost_shopname) {//상호명
		List<String> list = null;
		try {
			list = sqlMap.queryForList("search.shopNameAll", "%"+spacepost_shopname+"%");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
}

