package com.login.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.login.dto.LoginDto;

public class LoginDao extends SqlMapConfig {
	
	private String namespace = "com.login.mapper.";
	
	public List<LoginDto> selectList(){
		
		SqlSession session = getSessionFactory().openSession();
		List<LoginDto> list = session.selectList("com.login.mapper."+"selectList");
		
		session.close();
		return list;
	}
	
	public LoginDto login(String member_id , String member_pw) {
		
		SqlSession session = null;
		LoginDto dto = null;
		
		try {
			session = getSessionFactory().openSession();
			dto = (LoginDto) session.selectMap(namespace+"login", member_id, member_pw);
		} catch (Exception e) {
		
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return dto;
		
	}
	public int insert(LoginDto dto) {
		
		int res = 0;
		
		try(SqlSession session = getSessionFactory().openSession(true)){
			res = session.insert(namespace+"insert",dto);
			
		}
		
		return res;
	}
	
	
	public LoginDto idCheck(String member_id) {
		
		SqlSession session = null;
		LoginDto dto = null;
		
		try {
			session = getSessionFactory().openSession();
			dto = session.selectOne(namespace+"idCheck"+member_id);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
		
	}
	

	public int  update(LoginDto dto) {
		
		int res = 0;
		
		try(SqlSession session = getSessionFactory().openSession(true)){
			res = session.insert(namespace+"update",dto);
			
		}
		
		return res;
	}

	
	public int delete(int member_no) {
		
		int res = 0;
		
		try(SqlSession session = getSessionFactory().openSession(true)){
			res = session.delete(namespace+"delete",member_no);
			
		}
		
		return res;
		
		
	}

}


