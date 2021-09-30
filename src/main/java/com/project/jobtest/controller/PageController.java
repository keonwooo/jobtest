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

		ArrayList<workVO> list1 = ws.selectAllList1();
		model.addAttribute("list1", list1);
		
		ArrayList<workVO> list2 = ws.selectAllList2();
		model.addAttribute("list2", list2);

		ArrayList<workVO> list3 = ws.selectAllList3();
		model.addAttribute("list3", list3);
		
		
		
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
	
	@RequestMapping(value = "/NewFile", method = RequestMethod.GET)
	public String newFile() {
		return "/member/NewFile";
	}
}
