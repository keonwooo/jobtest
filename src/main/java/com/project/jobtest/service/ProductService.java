package com.project.jobtest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobtest.dao.WebSocketDAO;
import com.project.jobtest.vo.UserMaster;

@Service
public class ProductService {
	
	@Autowired
	private WebSocketDAO dao;

	public UserMaster getProductDetail(String masterNickname) {
		UserMaster usermaster = null;
		usermaster = dao.getProductDetail(masterNickname);
		return usermaster;
	}

}
