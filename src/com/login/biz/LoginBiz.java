package com.login.biz;

import java.util.List;
import java.util.Map;

import com.login.dao.LoginDao;
import com.login.dto.LoginDto;


public class LoginBiz {

	
	private LoginDao dao = new LoginDao();

	public List<LoginDto> selectList(){
		return dao.selectList();
		
	}
	
	public LoginDto login(String member_id , String member_pw) {
		return dao.login(member_id, member_pw);
	}
	
	public int insert(LoginDto dto) {
		return dao.insert(dto);
	}

	public String idCheck(String member_id) {
		return dao.idCheck(member_id);
	}
	
	public int update(LoginDto dto) {
		return dao.update(dto);
	}
	
	public int delete(int member_no) {
		return dao.delete(member_no);
	}
	
	public String findId(Map map) {
		return dao.findId(map);
	}
	public String findPw(Map map) {
		return dao.findPw(map);
	}
	
	
	
}
