package com.lesson.dao;
import java.util.List;
import java.util.Date;
import org.apache.ibatis.session.SqlSession;

import com.lesson.dto.LessonDto;

import oracle.sql.DATE;

public class LessonDao extends SqlMapConfig{

	private String namespace = "com.lesson.mapper.";

	
	public List<LessonDto> selectList(){
		SqlSession session = getSessionFactory().openSession();
        List<LessonDto> list = session.selectList("com.lesson.mapper."+"selectList");
		
        session.close();
        return list;
	}
	//select_tchlist
	                                       //메소드를 호출할 때 받는 아규먼트를 받은 파라미터  
	public List<LessonDto> select_tchlist(String class_writer){
		
		SqlSession session = getSessionFactory().openSession();    //위치      //아규먼트로 mapper에 보내주는값 . 
		List<LessonDto> list = session.selectList(namespace + "select_tchlist", class_writer); 
		                            //가져올 거 적는 곳, 이름 아니라.
		return list;
		
	}
	
	//selectOne
	public LessonDto selectOne(int no) {
		SqlSession session = null;
		LessonDto dto = null;
		try {
			session = getSessionFactory().openSession();
			dto = session.selectOne(namespace+"selectOne", no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return dto;
	}
	
	//insert
	
	
	public int insert(LessonDto dto) {
		System.out.println(dto.getClass_writer());
		System.out.println(dto.getClass_tag());
		System.out.println(dto.getClass_startdate());
		System.out.println(dto.getClass_lastdate());
		System.out.println(dto.getClass_price());
		System.out.println(dto.getClass_count());
		
		System.out.println(dto.getClass_eventstartdate());
		System.out.println(dto.getClass_eventlastdate());
		System.out.println(dto.getClass_title());
		System.out.println(dto.getClass_content());
		System.out.println(dto.getClass_eventcheck());
		System.out.println(dto.getClass_eventprice());

		
		
		
		
		int res = 0;

		try(SqlSession session = getSessionFactory().openSession(true)){

			res = session.insert(namespace+"insert",dto);	
		}	
		return res;
	}
	
	//update
	public int update(LessonDto dto) {
		int res = 0;

		try(SqlSession session = getSessionFactory().openSession(true)){
			res = session.update(namespace+"update",dto);	
		}	
		return res;
	}
	
	
	//delete
	public int delete(int class_no) {
		int res = 0;

		try(SqlSession session = getSessionFactory().openSession(true)){
			res = session.update(namespace+"delete",class_no);	
		}
		return res;
	}
}
