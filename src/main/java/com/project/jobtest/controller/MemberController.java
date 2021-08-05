package com.project.jobtest.controller;


import java.io.IOException;
import java.util.HashMap;

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
	
	@RequestMapping(value = "/Logout", method = { RequestMethod.GET, RequestMethod.POST})
	public String MemberLogout(HttpSession session) throws IOException{
		System.out.println("logout");
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/MemberFindForm", method = RequestMethod.GET)
	public String MemberFindForm() {
		return "member/MemberFindForm";
	}
	
	@RequestMapping(value = "/MemberFind", method = RequestMethod.POST)
	public String MemberFind(memberVO member, Model model) {
		String member_id = service.MemberFind(member);
		model.addAttribute("member_id", member_id);
		return "member/FindResult";
	}
	
	@RequestMapping(value = "/PwFindForm", method = RequestMethod.GET)
	public String PwFindForm() {
		return "member/PwFindForm";
	}
	
	@RequestMapping(value = "/PwFind", method = RequestMethod.POST)
	public String PwFind(memberVO member, Model model) {
		String member_id = service.PwFind(member);
		if(member_id!=null) {
			model.addAttribute("member_id", member_id);
		}
		return "member/PwFindResult";
	}
	
	@RequestMapping(value = "/PwChange", method = RequestMethod.POST)
	public String PwChange(memberVO member) {
		System.out.println("컨트롤러 : " + member);
		service.PwChange(member);
		return "redirect:/member/MemberLoginPage";
	}
	
	@RequestMapping(value = "/MemberUpdate", method = RequestMethod.POST)
	public String MemberUpdate(memberVO member) {
		service.MemberUpdate(member);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/MyPage", method = RequestMethod.GET)
	public String MyPage(HttpSession session, Model model) {
		System.out.println("여기는 컨트롤러");
		String member_id = (String)session.getAttribute("LoginID");
		String member_nickname = (String)session.getAttribute("LoginNickName");
		HashMap<String, String> hash = new HashMap<String, String>();
		
		hash = service.MemberSelectOneAll(member_id);
		model.addAttribute("hash", hash);
		model.addAttribute("LoginNickName", member_nickname);
		System.out.println("받아옴?");
		
		return "member/MyPage"; 
	}
	
}
