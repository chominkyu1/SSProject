package sspro.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import sspro.vo.MainReviewVO;
import sspro.vo.MemberArtistVO;
import sspro.vo.SpaceReviewVO;
import sspro.vo.WorkReviewVO;

public class ReviewDAO {//한정숙 : 후기DAO
	SqlMapClient sqlMap;	
	 
	public ReviewDAO() {
		  sqlMap = MySqlMapClient.getSqlMapInstance(); 
	}
	
	public boolean spaceReviewInsert(SpaceReviewVO spacereviewvo) {
		try {
			sqlMap.insert("review.srinsert", spacereviewvo);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Map<String, String> spaceReviewSelect(String spacepost_id){//게시글에 해당하는 리뷰 불러오기
		Map<String, String> map = new HashMap<>() ;
			
		try {
			map = (Map<String, String>) sqlMap.queryForList("review.sr_select", spacepost_id);
			System.out.println("123");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return map;
	}
	
	public List<MainReviewVO> spaceReviewSelectAll(){//전체리뷰 불러오기
		List<MainReviewVO> list = null;
		
		try {
			list = sqlMap.queryForList("review.srselectAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int spaceReviewCount(String spacepost_id){//spacepost_id로 해당글 후기 갯수 불러오기 
		int count = 0;
		
		try {
			count = (int) sqlMap.queryForObject("review.count",spacepost_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
	
	
	
	public boolean workReviewInsert(WorkReviewVO workreviewvo) {
		try {
			sqlMap.insert("review.wrinsert", workreviewvo);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<WorkReviewVO> workReviewSelectAll() {//기본 selectAll 메소드(관리자가 필요할듯 하여)
		List<WorkReviewVO> list = null;
		
		try {
			list = sqlMap.queryForList("review.wr_selectAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int workScoreSelect(String amember_id) {//amember_id로 조회해서 회원별 점수합산
		int score=0;
		
		try {
			score = (int) sqlMap.queryForObject("review.score_select",amember_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return score;
	}
	
	
	
}

