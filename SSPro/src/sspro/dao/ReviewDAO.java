package sspro.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
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
	
	public List<SpaceReviewVO> spaceReviewSelect(String spacepost_id){//게시글에 해당하는 리뷰 불러오기
		List<SpaceReviewVO> list = null;
		
		try {
			list = sqlMap.queryForList("review.srselect", spacepost_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
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

