package com.project.jobtest.dao;

import com.project.jobtest.vo.memberVO;

public interface MemberMapper {

	public memberVO MemberSelectOne(String member_id);

	public int MemberJoin(memberVO member);

	public int MemberSelectOneId(String member_id);

	public int MemberSelectOneNickname(String member_nickname);

	public String MemberFind(memberVO member);

	public String PwFind(memberVO member);

	public void PwChange(memberVO member);

}
