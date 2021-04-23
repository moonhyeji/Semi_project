package com.lesson.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.lesson.dto.LessonDto;

public class LessonDao extends SqlMapConfig{

	private String namespace = "com.lesson.mapper.";
	
	
	public List<LessonDto> selectList(){
		SqlSession session = getSessionFactory().openSession();
        List<LessonDto> list = session.selectList("com.lesson.mapper."+"selectList");
		
        session.close();
        return list;
	}
	
	//selectOne
	public LessonDto selectOne(int class_no) {
		SqlSession session = null;
		LessonDto dto  = null;
		try {
			session = getSessionFactory().openSession();
			dto = (LessonDto) session.selectOne(namespace+"lesson", class_no);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return dto;
	}
	
	//insert
	public int insert(LessonDto dto) {
		int res = 0;
		try(SqlSession session = getSessionFactory().openSession(true)){
			res = session.insert(namespace+"insert",dto);	
		}	
		return res;
	}
	
	//update
	public int update(LessonDto dto) {
		int res =0;
		try(SqlSession session = getSessionFactory().openSession(true)){
			res = session.insert(namespace+"update",dto);	
		}	
		return res;
	}
	
	
	//delete
	public int delete(int class_no) {
		int res = 0;

		try(SqlSession session = getSessionFactory().openSession(true)){
			res = session.delete(namespace+"delete",class_no);	
		}
		return res;
	}
	
}
