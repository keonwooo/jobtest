package com.project.jobtest.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.jobtest.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	@Autowired
	private MemberService service;
	
	@RequestMapping(value = "/MemberLoginPage", method = RequestMethod.GET)
	public String MemberLoginPage(Model model, HttpSession session) {
		
		return "member/MemberLoginPage";
	}
	
}
