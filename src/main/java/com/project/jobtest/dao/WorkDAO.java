package com.project.jobtest.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.jobtest.vo.workVO;

@Repository
public class WorkDAO {
	
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
		
		return cnt;


	}

	public void getWorkList() {
		// TODO Auto-generated method stub
		
	}

	
}
