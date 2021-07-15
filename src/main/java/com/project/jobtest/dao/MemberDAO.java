package com.project.jobtest.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.jobtest.vo.memberVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession session;
	
	
	public int MemeberJoin(memberVO member) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		int cnt = 0;
		try {
			cnt = mapper.MemberJoin(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	public memberVO MemberSelectOne(String member_id) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		memberVO member = null;
		
		try {
			member = mapper.MemberSelectOne(member_id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return member;
	}

	public int MemberSelectOneId(String member_id) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		int cnt = 0;
		
		try {
			cnt = mapper.MemberSelectOneId(member_id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}

	public int MemberSelectOneNickname(String member_nickname) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		int cnt = 0;
		try {
			cnt = mapper.MemberSelectOneNickname(member_nickname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}

	

}
