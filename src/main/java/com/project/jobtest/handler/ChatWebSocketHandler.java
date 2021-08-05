package com.project.jobtest.handler;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.inject.Inject;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.project.jobtest.dao.ChatDAO;
import com.project.jobtest.vo.ChatRoomVO;
import com.project.jobtest.vo.memberVO;
import com.project.jobtest.vo.messageVO;
import com.google.gson.Gson;

public class ChatWebSocketHandler extends TextWebSocketHandler{
	
	@Inject
	private ChatDAO dao;

	private List<WebSocketSession> connectedUsers;

	public ChatWebSocketHandler() {
	      connectedUsers = new ArrayList<WebSocketSession>();
	   }

	private Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();

	@Override

	public void afterConnectionEstablished(

			WebSocketSession session) throws Exception {

		log(session.getId() + " 연결 됨!!");

		users.put(session.getId(), session);
		connectedUsers.add(session);
	}

	@Override

	public void afterConnectionClosed(

			WebSocketSession session, CloseStatus status) throws Exception {

		log(session.getId() + " 연결 종료됨");
		connectedUsers.remove(session);
		users.remove(session.getId());

	}


	@Override
	   protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {


		System.out.println(message.getPayload());

		  Map<String, Object> map = null;

	      messageVO MessageVO = messageVO.convertMessage(message.getPayload());

	      System.out.println("1 : " + MessageVO.toString());


	      ChatRoomVO roomVO  = new ChatRoomVO();
	      roomVO.setCLASS_class_id(MessageVO.getCLASS_class_id()); //클래스
	      roomVO.setTUTOR_MEMBER_member_id(MessageVO.getTUTOR_MEMBER_member_id()); //튜터
	      roomVO.setMEMBER_member_id(MessageVO.getMEMBER_member_id()); //유저

	      ChatRoomVO croom =null;
	      if(!MessageVO.getMEMBER_member_id().equals(MessageVO.getTUTOR_MEMBER_member_id())) {
	    	  System.out.println("a");



	    	  if(dao.isRoom(roomVO) == null ) {
	    		  System.out.println("b");
	    		  dao.createRoom(roomVO);
	    		  System.out.println("d");
	    		  croom = dao.isRoom(roomVO);

	    	  }else {
	    		  System.out.println("C");
	    		  croom = dao.isRoom(roomVO);
	    	  }
	      }else {

    		  croom = dao.isRoom(roomVO);
    	  }

	      MessageVO.setCHATROOM_chatroom_id(croom.getChatroom_id());
	      if(croom.getMEMBER_member_id().equals(MessageVO.getMessage_sender())) {

	    	  MessageVO.setMessage_receiver(roomVO.getTUTOR_MEMBER_member_id());
	      }else {
	    	  MessageVO.setMessage_receiver(roomVO.getMEMBER_member_id());
	      }




	      for (WebSocketSession websocketSession : connectedUsers) {
	         map = websocketSession.getAttributes();
	         memberVO login = (memberVO) map.get("login");

	         //받는사람
	         if (login.getMember_id().equals(MessageVO.getMessage_sender())) {

	            Gson gson = new Gson();
	            String msgJson = gson.toJson(MessageVO);
	            websocketSession.sendMessage(new TextMessage(msgJson));
	         }


	      }
	   }

	@Override

	public void handleTransportError(

			WebSocketSession session, Throwable exception) throws Exception {

		log(session.getId() + " 익셉션 발생: " + exception.getMessage());

	}

	private void log(String logmsg) {


	}
}
