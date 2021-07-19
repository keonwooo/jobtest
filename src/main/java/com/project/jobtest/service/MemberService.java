package com.project.jobtest.service;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobtest.dao.MemberDAO;
import com.project.jobtest.vo.memberVO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
	
	@Autowired
	private HttpSession session;

	public String MemberLogin(memberVO member) {
		memberVO LoginCheck = dao.MemberSelectOne(member.getMember_id());
		String page = "";
		if(LoginCheck != null && member.getMember_pw().equals(LoginCheck.getMember_pw())) {
			session.setAttribute("LoginNickName", LoginCheck.getMember_nickname());
			session.setAttribute("LoginID", LoginCheck.getMember_id());
			page = "redirect:/";
		}else {
			page = "redirect:/member/MemberLoginPage";
		}
		return page;
	}

	public String MemberJoin(memberVO member) {
		dao.MemeberJoin(member);
		
		System.out.println("JoinOk");
		return "redirect:/";
	}

	public int IdCheck(String member_id) {
		int cnt = dao.MemberSelectOneId(member_id);
		return cnt;
	}

	public int NicknameCheck(String member_nickname) {
		int cnt = dao.MemberSelectOneNickname(member_nickname);
		return cnt;
	}

	public boolean LoginCheck(String id, String pw) {
		
		memberVO LoginCheck = dao.MemberSelectOne(id);
		boolean flag = false;
		
		if(LoginCheck != null && pw.equals(LoginCheck.getMember_pw())) {
			System.out.println("로그인 성공");
			flag = true;
		}
		
		if(!flag) {
			System.out.println("로그인 실패");
		}
		return false;
	}
	
}
