package com.project.jobtest.dao;

import java.util.HashMap;

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

	public String MemberFind(memberVO member) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		String member_id = "";
		try {
			member_id = mapper.MemberFind(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return member_id;
	}

	public String PwFind(memberVO member) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		String str = "";
		try {
			str = mapper.PwFind(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}

	public void PwChange(memberVO member) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		try {
			mapper.PwChange(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void MemberUpdate(memberVO member) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		try {
			mapper.MemberUpdate(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public HashMap<String, String> MemberSelectOneAll(String member_id) {
		System.out.println("여기는 다오");
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		HashMap<String, String> hash = new HashMap<String, String>();
		try {
			hash = mapper.MemberSelectOneAll(member_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return hash;
	}

	public void MemberDelete(String member_id) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		try {
			mapper.MemberDelete(member_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
