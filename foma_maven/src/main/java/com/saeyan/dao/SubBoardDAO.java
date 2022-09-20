package com.saeyan.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.foma_java_mvc_folder.database.SqlSessionManager;
import com.saeyan.dto.SubBoardVO;

public class SubBoardDAO {
	public void insertSubBoard(SubBoardVO bVo) { // 게시판 작성
//		String sql = "insert into board("
//				+ "num, name, email, pass, title, content) "
//				+ "values(board_seq.nextval, ?, ?, ?, ?, ?)";
		System.out.println("게시판 받아온 이름	 :"+bVo.getName()+"받아온 날짜"+bVo.getWritedate());
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {
			// Mapper-insert 태그의 id, 매개변수
			cnt = sqlSession.insert("insertSubBoard", bVo);

			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} finally {
			sqlSession.close();
		}
	}
	public void deleteSubBoard(SubBoardVO bVo) { // 게시판 작성
//		String sql = "insert into board("
//				+ "num, name, email, pass, title, content) "
//				+ "values(board_seq.nextval, ?, ?, ?, ?, ?)";
		System.out.println("댓글삭제 받아온 이름	 :"+bVo.getName()+"받아온 날짜"+bVo.getWritedate());
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {
			// Mapper-insert 태그의 id, 매개변수
			cnt = sqlSession.delete("deleteSubBoard", bVo);

			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} finally {
			sqlSession.close();
		}
	}
	public void updategood(int num) {//게시판 좋아요 +1
		  SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		   int cnt =0;
		  try {//검색결과를 리스트로 받아온다
			 
			  System.out.println("좋아요 dao 진입 : ");
			cnt = sqlSession.update("updategood",num);
			
			  if (cnt >0) {
				  
		            sqlSession.commit();

		         } else {
		            sqlSession.rollback();
		         }
		      } finally {
		         sqlSession.close();
		      }
	
		    
		   }

	
}
