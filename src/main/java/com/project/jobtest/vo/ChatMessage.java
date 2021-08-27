package com.project.jobtest.vo;

import lombok.Data;

@Data
public class ChatMessage {
	private String roomId;
	private String messageId;
	private String message;
	private String member_nickname;
	private String member_id;
	private String member_name; 
	private int unReadCount;
	private int sessionCount;
}
