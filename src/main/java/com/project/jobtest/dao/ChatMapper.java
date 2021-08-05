package com.project.jobtest.dao;

import java.util.HashMap;

import com.project.jobtest.vo.ChatRoomVO;
import com.project.jobtest.vo.messageVO;

public interface ChatMapper {

	public void creatRoom(ChatRoomVO room);

	public ChatRoomVO isRoom(ChatRoomVO room);

	public void insertMessage(messageVO message);

	public String getPartner(ChatRoomVO room);

	public String getName(String name);

	public HashMap<String, String> getMessageList(String str);

	public HashMap<String, String> getRoomList1(String str);

	public HashMap<String, String> getRoomList2(String str);

	public messageVO getRecentMessage(String str);

	public String getTutorId(String str);

	public HashMap<String, String> getRoomListTutor(String str);

	public void updateReadTime(HashMap<String, Object> map);

	public int getUnReadCount(HashMap<String, Object> map);

	public int getAllCount(HashMap<String, Object> map);

	public void updateReadTimeTutor(HashMap<String, Object> map);

	public int getUnReadCountTutor(HashMap<String, Object> map);

	public void createRoom(ChatRoomVO roomVO);

}
