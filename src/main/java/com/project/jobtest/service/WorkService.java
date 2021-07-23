package com.project.jobtest.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobtest.dao.WorkDAO;
import com.project.jobtest.vo.workVO;

@Service
public class WorkService {
	
	@Autowired
	private WorkDAO dao;

	
//	C
	public void insertWorkList(workVO work) {

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

}
