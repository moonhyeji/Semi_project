package com.media.biz;

import java.util.List;

import com.media.dao.MediaDao;
import com.media.dto.MediaDto;

public class MediaBiz {

	private MediaDao dao = new MediaDao();
	
	public List<MediaDto> videoList(){
		return dao.videoList();
	}
	
	public MediaDto mediaOne(String class_title) {
		return dao.mediaOne(class_title);
	}
	
	public int mediainsert(MediaDto dto) {
		return dao.mediainsert(dto);
	}
	
	
}
