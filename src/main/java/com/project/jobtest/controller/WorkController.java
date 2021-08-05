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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.jobtest.service.WorkService;
import com.project.jobtest.vo.workVO;

@Controller
@RequestMapping("/work")
public class WorkController {

	private static final Logger logger = LoggerFactory.getLogger(WorkController.class);

	@Autowired
	private WorkService ws;

//	 심부름 지도,게시판
	@RequestMapping(value = "/Page", method = RequestMethod.GET)
	public String WorkPage() {

		return "/work/page";
	}

//	임시 지도 페이지 게시판 기능 만들어지면 합치기
	@RequestMapping(value = "/Map", method = RequestMethod.GET)
	public String Workmap(@RequestParam("work_seq")int work_seq,Model model) {

		model.addAttribute(ws.selectOneList(work_seq));
		
		return "/work/map";
	}



//	Create
	@RequestMapping(value = "/Write", method = RequestMethod.POST)
	public String create(workVO work) {

		ws.insertWorkList(work);

		return "redirect:/work/list";
	}
	
//	Read
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String selectAllList(Model model) {

		ArrayList<workVO> list = ws.selectAllList();


		model.addAttribute("list", list);

		return "/work/list";
	}
	
	@RequestMapping(value = "/detail")
	public String selectOneList(@RequestParam("work_seq")int work_seq,Model model) {
		
		model.addAttribute(ws.selectOneList(work_seq));
		
		return "/work/detail";
	}


//	UpDate
	// 수정 게시판 읽어오기
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String updateListGET(int work_seq,Model model) {

		model.addAttribute(ws.selectOneList(work_seq));
		return "/work/modify";
	}
	
	// DB 값 수정
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String updateListPOST(workVO work, Model model) {

		ws.upDateList(work);
		
		return "redirect:/work/list";
	}
	
//	Delete
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteList(@RequestParam("work_seq")int work_seq,RedirectAttributes rttr) {
		
		ws.deleteList(work_seq);
		
		return"redirect:/work/list";
	}
	

}
