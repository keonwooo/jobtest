package com.project.jobtest.vo;

import lombok.Data;

@Data
public class ChatRoomVO {
	private String chatroom_id;
	private String MEMBER_member_id;
	private String TUTOR_MEMBER_member_id;
	private int CLASS_class_id;
}
