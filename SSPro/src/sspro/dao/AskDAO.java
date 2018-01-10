package sspro.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import sspro.vo.AskVO;
import sspro.vo.SpacePostVO;

	public class AskDAO {

		SqlMapClient sqlMap;
	
		public AskDAO() {
			sqlMap = MySqlMapClient.getSqlMapInstance();
		
		}
	
		public boolean insert(AskVO askvo) {
		
			try {
				sqlMap.insert("ask.insert",askvo);
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return false;  
		}

		public AskVO select(String ask_id) {
			AskVO askvo = null;
			String no = ask_id;
			try {
				askvo = (AskVO)sqlMap.queryForObject("ask.select", no);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return askvo;
		}
		
		public ArrayList<AskVO> selectAll() {

			ArrayList<AskVO> list=null;
    
			try {
				list = (ArrayList<AskVO>) sqlMap.queryForList("ask.selectAll");
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
		
		public boolean delete(String ask_id) {
			try {
				int t = sqlMap.delete("ask.delete", ask_id);
				if(t==1) return true;
			} catch (SQLException e) {
				e.printStackTrace();
			}	
			return false;
		}
		
		public boolean update(AskVO askvo) {//요청내용수정
			try {
				int t = sqlMap.update("ask.update",askvo);
				if(t==1) return true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return false;
		}		
		public boolean stateUpdate(String ask_id){//요청상태 수정(공간제공자가 수락,취소 ==> 요청상태가 변경)
			try {
				int t = sqlMap.update("ask.stateupdate",ask_id);
				if(t==1) return true;
			} catch (SQLException e) {
				e.printStackTrace();
			} 
			return false;
		}
}
