package com.project.jobtest.vo;

import java.util.Date;

import com.google.gson.Gson;

import lombok.Data;

@Data
public class messageVO {
	private String message_id;
	private String message_sender;
	private String message_receiver;
	private String message_content;
	private Date message_sendTime;
	private Date message_readTime;
	private String CHATROOM_chatroom_id;
	private String MEMBER_member_id;
	private String TUTOR_MEMBER_member_id;
	private int CLASS_class_id;
	private String member_name;
	private String receiver_member_name;
	private String class_name;
	private int class_id;
	private String TUTOR_tutor_id;
	private String tutor_name;
	private String tuti_id;
	private int unReadCount;
	
	public static messageVO convertMessage(String source) {
		messageVO message = new messageVO();
		Gson gson = new Gson();
		message = gson.fromJson(source, messageVO.class);
		return message;
	}
}
