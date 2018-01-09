package sspro.DAO;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import sspro.VO.MemberArtistVO;

public class SearchDAO {//한정숙: 검색DAO - 지역, 분류,해시태그, 상호명
	
	SqlMapClient sqlMap;
	
	public SearchDAO() {
		 sqlMap = MySqlMapClient.getSqlMapInstance(); 
	}
	
	public List<String> areaAll() {//지역
		List<String> list = null;
		try {
			list = sqlMap.queryForList("search.areaAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<String> sortAll() {//분류
		List<String> list = null;
		try {
			list = sqlMap.queryForList("search.sortAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<String> hashTagAll() {//해시태그
		List<String> list = null;
		try {
			list = sqlMap.queryForList("search.hashTagAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<String> shopNameAll() {//상호명
		List<String> list = null;
		try {
			list = sqlMap.queryForList("search.shopNameAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
}

