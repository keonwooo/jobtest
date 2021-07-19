package com.project.jobtest.vo;

import java.util.Date;

import lombok.Data;

@Data
public class workVO {

	private int work_seq;
	private String work_title;
	private String work_system;
	private String work_board;
	private int work_price;
	private Date work_indate;
	
}

