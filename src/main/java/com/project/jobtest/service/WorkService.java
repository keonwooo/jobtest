package com.project.jobtest.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.jobtest.dao.WorkDAO;
import com.project.jobtest.util.FileService;
import com.project.jobtest.vo.workVO;

@Service
public class WorkService {
	
	@Autowired
	private WorkDAO dao;
	
	

	
//	C
	public void insertWorkList(workVO work) {

		dao.insertWorkList(work);
	}
	
	public void insertWorkList2(workVO work, MultipartFile upload, HttpServletRequest request) {
		
		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/img");
		
		String savedfile = FileService.saveFile(upload, uploadPath);
		work.setWork_savedFileName(savedfile);
		work.setWork_originalFileName(upload.getOriginalFilename());
		System.out.println(uploadPath);
		dao.insertWorkList(work);
	}
	
	
//	R
	public ArrayList<workVO> selectAllList() {

		ArrayList<workVO> list = dao.selectAllList();
		
		return list;
	}

	public workVO selectOneList(int work_seq) {

		
		return dao.selectOneList(work_seq);
	}
	
//	U
	public void upDateList(workVO work) {
		
		dao.upDateList(work);
	}


//	D
	public void deleteList(int work_seq) {

		dao.deleteList(work_seq);
	}

	public ArrayList<workVO> selectAllList1() {
		
		ArrayList<workVO> list1 = dao.selectAllList1();
		
		return list1;
	}

	public ArrayList<workVO> selectAllList2() {
		ArrayList<workVO> list2 = dao.selectAllList2();
		return list2;
	}

	public ArrayList<workVO> selectAllList3() {
		ArrayList<workVO> list3 = dao.selectAllList3();
		return list3;
	}


}
