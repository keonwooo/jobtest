package com.project.jobtest.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobtest.dao.WebSocketDAO;
import com.project.jobtest.vo.ChatMessage;
import com.project.jobtest.vo.ChatRoom;

@Service
public class ChatService {
	
	@Autowired
	private WebSocketDAO dao;
	
	@Autowired
	private HttpSession session;

	public ChatRoom selectChatRoom(String roomId) {
		
		ChatRoom chatroom = dao.selectChatRoom(roomId);
		return chatroom;
	}

	public int insertMessage(ChatMessage chatMessage) {
		int i = dao.insertMessage(chatMessage);
		return i;
	}

	public void updateCount(ChatMessage message) {
		dao.updateCount(message);
	}

	public List<ChatMessage> messageList(String roomId) {
		List<ChatMessage> chatmessage = null;
		chatmessage = dao.messageList(roomId);
		return chatmessage;
	}

	public ChatRoom searchChatRoom(ChatRoom room) {
		ChatRoom vo = null;
		vo = dao.searchChatRoom(room);
		return vo;
	}

	public int createChat(ChatRoom room) {
		int i =0;
		i = dao.createChat(room);
		return i;
	}

	public List<ChatRoom> chatRoomList(String member_id) {
		List<ChatRoom> chatroom = null;
		chatroom = dao.chatRoomList(member_id);
		return chatroom;
	}

	public int selectUnReadCount(ChatMessage message) {
		int i = 0;
		i = dao.selectUnReadCount(message);
		return i;
	}

}
