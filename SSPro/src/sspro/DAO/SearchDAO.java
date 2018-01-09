package sspro.DAO;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import sspro.VO.MemberArtistVO;

public class SearchDAO {//������: �˻�DAO - ����, �з�,�ؽ��±�, ��ȣ��
	
	SqlMapClient sqlMap;
	
	public SearchDAO() {
		 sqlMap = MySqlMapClient.getSqlMapInstance(); 
	}
	
	public List<String> areaAll() {//����
		List<String> list = null;
		try {
			list = sqlMap.queryForList("search.areaAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<String> sortAll() {//�з�
		List<String> list = null;
		try {
			list = sqlMap.queryForList("search.sortAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<String> hashTagAll(String searchs) {//�ؽ��±�
		List<String> list = null;
		String hash_name = searchs;
		try {
			list = sqlMap.queryForList("search.hashTagAll",searchs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<String> shopNameAll() {//��ȣ��
		List<String> list = null;
		try {
			list = sqlMap.queryForList("search.shopNameAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
}

