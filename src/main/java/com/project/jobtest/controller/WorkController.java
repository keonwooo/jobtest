package com.project.jobtest.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.jobtest.service.WorkService;
import com.project.jobtest.vo.workVO;
import com.project.jobtest.vo.memberVO;


@Controller
@RequestMapping("/work")
public class WorkController {
	
	
	@Autowired
	private WorkService ws;
	
	// 심부름 지도 띄울 페이지
	@RequestMapping(value = "/workPage", method = RequestMethod.GET)
	public String WorkPage() {
		
		
		return "/work/workpage";
	}
	
	// 심부름 시킬 내용생성 게시판
	@RequestMapping(value = "/workWrite", method = RequestMethod.POST)
	public String WorkWrite(workVO work) {
		
		ws.insertWorkList(work);
		
		return "/work/workpage";
	}
	
	// 만들어진 심부름 내용 불러오기
	@RequestMapping(value = "/workGetList", method = RequestMethod.GET)
	public String WorkGetList(memberVO meber) {
		
		ws.getWorkList();
		
		return "/work/workpage";
	}
	
	//심부름 지도 임시 게시판 만들어지면 합칠꺼
	@RequestMapping(value = "/workMap", method = RequestMethod.GET)
	public String Workmap() {
		
		
		return "/work/workmap";
	}
}
