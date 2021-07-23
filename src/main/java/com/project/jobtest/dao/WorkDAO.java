package com.project.jobtest.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.jobtest.vo.workVO;

@Repository
public class WorkDAO implements WorkMapper{
	
	@Autowired
	private SqlSession session;

	public int insertWorkList(workVO work) {

		WorkMapper mapper = session.getMapper(WorkMapper.class);
		
		int cnt = 0;
		try {
			cnt = mapper.insertWorkList(work);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(cnt);
		return cnt;


	}

	public ArrayList<workVO> selectAllList() {

		WorkMapper mapper = session.getMapper(WorkMapper.class);
		ArrayList<workVO> list = null;
		
		try {
			list = mapper.selectAllList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public workVO selectOneList(int work_seq) {
		
		WorkMapper mapper = session.getMapper(WorkMapper.class);
		
		
		try {
			  mapper.selectOneList(work_seq);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mapper.selectOneList(work_seq);
	}

	public void upDateList(workVO work) {

		WorkMapper mapper = session.getMapper(WorkMapper.class);
		
		try {
			mapper.upDateList(work);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteList(int work_seq) {

		WorkMapper mapper = session.getMapper(WorkMapper.class);
		
		try {
			mapper.deleteList(work_seq);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



	
}
