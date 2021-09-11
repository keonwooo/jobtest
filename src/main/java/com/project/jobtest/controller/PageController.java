package com.project.jobtest.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.jobtest.service.WorkService;
import com.project.jobtest.vo.workVO;

@Controller
public class PageController {
	
	@Autowired
	private WorkService ws;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String selectAllList(Model model) {
		
		ArrayList<workVO> list = ws.selectAllList();
		
		
		model.addAttribute("list", list);
		
		return "/index";
	}
	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chat() {
		return "chat";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
}
