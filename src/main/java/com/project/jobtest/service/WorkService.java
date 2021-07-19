package com.project.jobtest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobtest.dao.WorkDAO;
import com.project.jobtest.vo.workVO;

@Service
public class WorkService {
	
	@Autowired
	private WorkDAO dao;

	public void insertWorkList(workVO work) {
	System.out.println(work);
		dao.insertWorkList(work);
	}

	public void getWorkList() {

		dao.getWorkList();
	}
	
	

}
