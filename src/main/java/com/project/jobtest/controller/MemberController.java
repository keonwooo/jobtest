package com.project.jobtest.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.jobtest.service.MemberService;
import com.project.jobtest.vo.memberVO;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	@Autowired
	private MemberService service;
	
	@RequestMapping(value = "/MemberLoginPage", method = RequestMethod.GET)
	public String MemberLoginPage(Model model, HttpSession session) {
		return "member/MemberLoginPage";
	}
	
	@RequestMapping(value = "/MemberJoinForm", method = RequestMethod.GET)
	public String MemberJoinForm() {
		return "member/MemberJoinForm";
	}

	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String MemberJoin(memberVO member, Model model, HttpServletRequest request, HttpSession session) throws Exception{
		String page = service.MemberJoin(member);
		return page;
	}
	
	@ResponseBody
	@RequestMapping(value = "/CheckId", method = RequestMethod.GET, produces = "application/text;charset=utf-8")
	public String CheckId(String member_id) {
		int cnt = service.IdCheck(member_id);
		String str = Integer.toString(cnt);
		return str;
	}
	
	@ResponseBody			//ajax를 사용하기위해 붙여줘야함 
	@RequestMapping(value = "/CheckNickname", method = RequestMethod.GET, produces = "application/text;charset=utf-8")
	public String CheckNickname(String member_nickname) {
		int cnt = service.NicknameCheck(member_nickname);
		String str = Integer.toString(cnt);
		return str;
	}
	
	@ResponseBody
	@RequestMapping(value = "/Login_Ck", method = RequestMethod.POST)
	public String loginCheck(String id, String pw) {
		
		boolean flag = service.LoginCheck(id, pw);
		String result = "";
		
		if(flag) {
			result = "S";
		}else {
			result = "F";
		}
		
		System.out.println(result);
		
		return result;
	}
	
	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public String MemberLogin(memberVO member, Model model, HttpSession session) {
		String page = service.MemberLogin(member);
		return page;
	}
	
}
