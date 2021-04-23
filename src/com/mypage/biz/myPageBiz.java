package com.mypage.biz;

import com.mypage.dao.myPageDao;
import com.mypage.dto.myPageDto;

public class myPageBiz {
	private myPageDao dao = new myPageDao();
	
	public myPageDto selectstu(String member_id) {
		return dao.selectstu(member_id);
	}
	
	public myPageDto selecttch(String member_id) {
		return dao.selecttch(member_id);
	}
	
	public int updateinfo(String member_id, String member_name,String member_phone,String member_addr) {
		   return dao.updateinfo(member_id, member_name, member_phone, member_addr); 
		
	}
	
	public int deleteinfo(String member_id) {
		return dao.deleteinfo(member_id);
	}
}
