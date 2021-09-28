package com.project.jobtest.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.jobtest.vo.ChatMessage;
import com.project.jobtest.vo.ChatRoom;
import com.project.jobtest.vo.UserMaster;

@Repository
public class WebSocketDAO {
	
	@Autowired
	private SqlSession session;

	public ChatRoom selectChatRoom(String roomId) {
		WebSocketMapper mapper = session.getMapper(WebSocketMapper.class);
		ChatRoom chatroom = null;
		try {
			chatroom = mapper.selectChatRoom(roomId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return chatroom;
	}

	public int insertMessage(ChatMessage chatMessage) {
		WebSocketMapper mapper = session.getMapper(WebSocketMapper.class);
		int i = 0;
		try {
			i = mapper.insertMessage(chatMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public void updateCount(ChatMessage message) {
		WebSocketMapper mapper = session.getMapper(WebSocketMapper.class);
		try {
			mapper.updateCount(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<ChatMessage> messageList(String roomId) {
		WebSocketMapper mapper = session.getMapper(WebSocketMapper.class);
		List<ChatMessage> chatmessage = null;
		try {
			chatmessage = mapper.messageList(roomId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return chatmessage;
	}

	public ChatRoom searchChatRoom(ChatRoom room) {
		WebSocketMapper mapper = session.getMapper(WebSocketMapper.class);
		ChatRoom vo = null;
		try {
			vo = mapper.searchChatRoom(room);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public int createChat(ChatRoom room) {
		WebSocketMapper mapper = session.getMapper(WebSocketMapper.class);
		int i = 0;
		try {
			i = mapper.createChat(room);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public List<ChatRoom> chatRoomList(String member_id) {
		WebSocketMapper mapper = session.getMapper(WebSocketMapper.class);
		List<ChatRoom> chatroom = null;
		try {
			chatroom = mapper.chatRoomList(member_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return chatroom;
	}

	public int selectUnReadCount(ChatMessage message) {
		WebSocketMapper mapper = session.getMapper(WebSocketMapper.class);
		int i = 0;
		try {
			i = mapper.selectUnReadCount(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public UserMaster getProductDetail(String masterNickname) {
		WebSocketMapper mapper = session.getMapper(WebSocketMapper.class);
		UserMaster vo = null;
		try {
			vo = mapper.getProductDetail(masterNickname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

}
