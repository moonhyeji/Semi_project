package com.adminPage.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.adminPage.dto.adminPageDto;
import com.adminPage.dto.learnDto;

public class adminListDao extends SqlMapConfig {

	public List<adminPageDto> selectList(){
		
		SqlSession session = getSessionFactory().openSession();
		List<adminPageDto> list = session.selectList("com.member.mapper."+"selectList");
		
		session.close();
		return list;
	}
	
	public List<learnDto> learnList(){
		SqlSession session = getSessionFactory().openSession();
		List<learnDto> list = session.selectList("com.member.mapper."+"learnList");

		session.close();
		return list;
	}
	
	public int adminCheck(String member_id, String member_name) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("member_name", member_name);
		
		for(String k : map.keySet()) {
			String v = map.get(k);
			System.out.println(k + " : " + v);
		}
		
		SqlSession session = getSessionFactory().openSession();
		List<adminPageDto> list = session.selectList("com.member.mapper." + "CheckList");
		boolean check = false;
		System.out.println("Ž������");
		for(adminPageDto dto : list) {
			if(member_id.equals(dto.getMember_id()) && member_name.equals(dto.getMember_name())) {
				check = true;
				System.out.println("���� ������ �߰ߵǾ����ϴ�.");
			}
		}
		System.out.println("Ž����");
		int member_select;
		if(check) {
			member_select = session.selectOne("com.member.mapper." + "adminCheck", map);
			System.out.println("ȹ���� �� : " + member_select);
		} else {
			member_select = -1;
		}
		session.close();
		return member_select;
	}
}
