package com.project.jobtest.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.jobtest.service.WorkService;
import com.project.jobtest.vo.workVO;

@Controller
@RequestMapping("/work")
public class WorkController {

	private static final Logger logger = LoggerFactory.getLogger(WorkController.class);

	@Autowired
	private WorkService ws;
	
//	TEST
	
	@RequestMapping(value = "/test")
	public String test() {
		
		return "/work/test";
	}
	
//	Create
	@RequestMapping(value = "/Write", method = RequestMethod.POST)
	public String create(workVO work) {

		ws.insertWorkList(work);

		return "redirect:/work/";
	}
	
//	Read
	// index

	
	// 생성게시판
	@RequestMapping(value = "/Write", method = RequestMethod.GET)
	public String WorkPage() {

		return "/work/page";
	}
	
	// 임시
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String selectAllList2(Model model) {
		
		ArrayList<workVO> list = ws.selectAllList();
		
		
		model.addAttribute("list", list);
		
		return "/work/list";
	}
	
	// 상세 
	@RequestMapping(value = "/detail", method = RequestMethod.GET )
	public String selectOneList(@RequestParam("work_seq")int work_seq,Model model) {
		
		
		
		model.addAttribute(ws.selectOneList(work_seq));
		
		return "/work/detail";
	}

	// 수정 
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String updateListGET(int work_seq,Model model) {

		model.addAttribute(ws.selectOneList(work_seq));
		return "/work/modify";
	}

//	UpDate
	// DB 값 수정
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String updateListPOST(workVO work, Model model) {

		ws.upDateList(work);
		
		return "redirect:/work/";
	}
	
//	Delete
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteList(@RequestParam("work_seq")int work_seq,RedirectAttributes rttr) {
		
		ws.deleteList(work_seq);
		
		return"redirect:/work/";
	}
	

}
