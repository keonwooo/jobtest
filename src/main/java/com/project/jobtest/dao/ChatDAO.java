package com.project.jobtest.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.jobtest.vo.ChatRoomVO;
import com.project.jobtest.vo.messageVO;

public class ChatDAO {
	
	@Autowired
	private SqlSession session;
	
	public void creatRoom(ChatRoomVO room) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		try {
			mapper.creatRoom(room);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ChatRoomVO isRoom(ChatRoomVO room) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		ChatRoomVO vo = null;
		try {
			vo = mapper.isRoom(room);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public void insertMessage(messageVO message) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		try {
			mapper.insertMessage(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String getPartner(ChatRoomVO room) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		String MEMBER_member_id = "";
		try {
			MEMBER_member_id = mapper.getPartner(room);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return MEMBER_member_id;
	}
	
	public String getName(String name) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		String member_name = "";
		try {
			member_name = mapper.getName(name);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return member_name;
	}
	
	public HashMap<String, String> getMessageList(String str) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		HashMap<String, String> message = new HashMap<String, String>();
		try {
			message = mapper.getMessageList(str);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return message;
	}
	
	public HashMap<String, String> getRoomList1(String str){
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		HashMap<String, String> roomList1 = new HashMap<String, String>();
		try {
			roomList1 = mapper.getRoomList1(str);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return roomList1;
	}
	
	public HashMap<String, String> getRoomList2(String str){
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		HashMap<String, String> roomList2 = new HashMap<String, String>();
		try {
			roomList2 = mapper.getRoomList2(str);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return roomList2;
	}
	
	public messageVO getRecentMessage(String str) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		messageVO message = null;
		try {
			message = mapper.getRecentMessage(str);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return message;
	}
	
	public String getTutorId(String str) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		String member_id = "";
		try {
			member_id = mapper.getTutorId(str); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return member_id;
	}
	
	public HashMap<String, String> getRoomListTutor(String str){
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		HashMap<String, String> roomListTutor = new HashMap<String, String>();
		try {
			roomListTutor = mapper.getRoomListTutor(str);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return roomListTutor;
	}
	
	public void updateReadTime(int class_id, String member_id, String TUTOR_MEMBER_member_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		map.put("TUTOR_MEMBER_member_id", TUTOR_MEMBER_member_id);
		map.put("MEMBER_member_id", member_id);
		map.put("CLASS_class_id", class_id);
		
		try {
			mapper.updateReadTime(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int getUnReadCount(String TUTOR_MEMBER_member_id, int class_id, String member_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		int i = 0;
		map.put("TUTOR_MEMBER_member_id", TUTOR_MEMBER_member_id);
		map.put("MEMBER_member_id", member_id);
		map.put("CLASS_class_id", class_id);
		try {
			i = mapper.getUnReadCount(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	public int getAllCount(String str) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		map.put("MEMBER_member_id", str);
		map.put("TUTOR_MEMBER_member_id", str);
		int i = 0;
		try {
			i = mapper.getAllCount(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	public void updateReadTimeTutor(int class_id, String member_id, String TUTOR_MEMBER_member_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		map.put("TUTOR_MEMBER_member_id", TUTOR_MEMBER_member_id);
		map.put("MEMBER_member_id", member_id);
		map.put("CLASS_class_id", class_id);
		try {
			mapper.updateReadTimeTutor(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int getUnReadCountTutor(String TUTOR_MEMBER_member_id, int class_id, String member_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		map.put("TUTOR_MEMBER_member_id", TUTOR_MEMBER_member_id);
		map.put("MEMBER_member_id", member_id);
		map.put("CLASS_class_id", class_id);
		int i = 0;
		try {
			i = mapper.getUnReadCountTutor(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public void createRoom(ChatRoomVO roomVO) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		try {
			mapper.createRoom(roomVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
