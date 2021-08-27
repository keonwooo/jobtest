package com.project.jobtest.dao;

import java.util.List;

import com.project.jobtest.vo.ChatMessage;
import com.project.jobtest.vo.ChatRoom;
import com.project.jobtest.vo.UserMaster;

public interface WebSocketMapper {

	ChatRoom selectChatRoom(String roomId);

	int insertMessage(ChatMessage chatMessage);

	void updateCount(ChatMessage message);

	List<ChatMessage> messageList(String roomId);

	//여기서 부터 해야댐;;
	//근데 chatController create.do 는 어디서 시작되는지;
	ChatRoom searchChatRoom(ChatRoom room);

	int createChat(ChatRoom room);

	List<ChatRoom> chatRoomList(String member_id);

	int selectUnReadCount(ChatMessage message);

	UserMaster getProductDetail(String masterNickname);

}
