package com.lesson.biz;

import java.util.List;

import com.lesson.dao.LessonDao;
import com.lesson.dto.LessonDto;

public class LessonBiz {

	
	private LessonDao dao = new LessonDao();
	
	public List<LessonDto> selectList(){
		return dao.selectList();	
	}
	
   public List<LessonDto> select_tchlist(String class_writer){
	   return dao.select_tchlist(class_writer);
   }

	public LessonDto selectOne(int class_no) {
		return dao.selectOne(class_no);
	}
	
	public int insert(LessonDto dto) {
		
		System.out.println("1");
		if(dto.getClass_eventprice() < 0 ){
			dto.setClass_eventprice(0);
		}
		System.out.println("2");

		return dao.insert(dto);

	}
	
	public int update(LessonDto dto) {
		return dao.update(dto);
	}
	
	public int delete(int class_no) {
		return dao.delete(class_no);
	}
}
