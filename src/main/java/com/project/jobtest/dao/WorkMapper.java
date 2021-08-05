package com.project.jobtest.dao;

import java.util.ArrayList;

import com.project.jobtest.vo.workVO;

public interface WorkMapper {

	int insertWorkList(workVO work);

	ArrayList<workVO> selectAllList();
	
	workVO selectOneList(int work_seq);

	void upDateList(workVO work);

	void deleteList(int work_seq);
}
