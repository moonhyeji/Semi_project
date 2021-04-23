package com.mypage.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSession;

import com.login.dao.SqlMapConfig;
import com.mypage.dto.myPageDto;

public class myPageDao extends SqlMapConfig {
	private String namespace = "com.mypage.mapper.";
	
	
	
	public myPageDto selectstu(String member_id) {
		SqlSession session= null;
		myPageDto dto = null;
		try {
			session = getSessionFactory().openSession();
			dto = session.selectOne(namespace+"selectstu", member_id);
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			session.close();
		}
		return dto;
	}
	
	
	
	public myPageDto selecttch(String member_id) {
		SqlSession session= null;
		myPageDto dto = null;
		try {
			session = getSessionFactory().openSession();
			dto = session.selectOne(namespace+"selecttch", member_id);
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return dto;
	}
	
	
	public int updateinfo(String member_id, String member_name,String member_phone,String member_addr) {
		Map map = new HashMap(); 
		map.put("member_id", member_id);
		map.put("member_name", member_name);
		map.put("member_phone", member_phone);
		map.put("member_addr", member_addr);
		
		int res = 0;
		try(SqlSession session = getSessionFactory().openSession(true)){
			res = session.insert(namespace+"updateinfo", map);
		}
				return res;
	}
	
	
	    public int deleteinfo(String member_id) {
        int res = 0;
        try(SqlSession session = getSessionFactory().openSession(true)){
        	res= session.insert(namespace + "deleteinfo", member_id);
        }
		return res;
	}
	
	
	
	
    
}
