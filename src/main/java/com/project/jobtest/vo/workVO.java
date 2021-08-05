package com.project.jobtest.vo;

import java.util.Date;

import lombok.Data;

@Data
public class workVO {
	private int work_seq;
	private String work_title;
	private String work_system;
	private String work_board;
	private String work_price;
	private Double work_lat;
	private Double work_lang;
	private Date work_indate;
}
