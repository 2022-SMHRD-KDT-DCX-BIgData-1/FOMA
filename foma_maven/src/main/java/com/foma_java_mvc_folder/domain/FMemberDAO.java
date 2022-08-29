package com.foma_java_mvc_folder.domain;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.foma_java_mvc_folder.database.SqlSessionManager;

public class FMemberDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	
	// 음식검색 리스트로 선언후 뽑아오기(일반)
	public List<FMember> selectFMember(FMember fmember) {
		List<FMember>selectFMember = null;//리스트 선언
		try {//검색결과를 리스트로 받아온다
			selectFMember = sqlSession.selectList("selectFMember", fmember);
			if (selectFMember != null) {
				sqlSession.commit();

			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return selectFMember;
	}
	// 음식검색 리스트로 선언후 뽑아오기(저염식)
	public List<FMember> selectFMemberlowsalt(FMember fmember) {
		List<FMember>selectFMember = null;//리스트 선언
		try {//검색결과를 리스트로 받아온다
			selectFMember = sqlSession.selectList("selectFMemberlowsalt", fmember);
			if (selectFMember != null) {
				sqlSession.commit();

			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return selectFMember;
	}
	//저칼로리
	public List<FMember> selectFMemberlowcal(FMember fmember) {
		List<FMember>selectFMember = null;//리스트 선언
		try {//검색결과를 리스트로 받아온다
			selectFMember = sqlSession.selectList("selectFMemberlowcal", fmember);
			if (selectFMember != null) {
				sqlSession.commit();
				
			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return selectFMember;
	}
	public List<FMember> selectFMemberlocarhifat(FMember fmember) {
		List<FMember>selectFMember = null;//리스트 선언
		try {//검색결과를 리스트로 받아온다
			selectFMember = sqlSession.selectList("selectFMemberlocarhifat", fmember);
			if (selectFMember != null) {
				sqlSession.commit();
				
			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return selectFMember;
	}

}
