package com.project.jobtest.vo;

import lombok.Data;

@Data
public class ChatRoom {
	private String member_id;
	private String member_nickname;
	private String Master_id;
	private String Master_nickname;
	private String RoomId;
	private int UnReadCount;
}
