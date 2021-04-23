package com.lesson.biz;

import java.util.List;

import com.lesson.dao.LessonDao;
import com.lesson.dto.LessonDto;

public class LessonBiz {

	
	private LessonDao dao = new LessonDao();
	
	public List<LessonDto> selectList(){
		return dao.selectList();	
	}
	
	public LessonDto selectOne(int class_no) {
		return dao.selectOne(class_no);
	}
	
	public int insert(LessonDto dto) {
		return dao.insert(dto);
	}
	
	public int update(LessonDto dto) {
		return dao.update(dto);
	}
	
	public int delete(int class_no) {
		return dao.delete(class_no);
	}
}
