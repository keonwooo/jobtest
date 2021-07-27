<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>JOB</title>
</head>
<body>
	
	<div>
		<button type="button" onclick="openSocket();">대화방 참여</button>
		<button type="button" onclick="closeSocket();">대화방 나가기</button>
		<br/><br/><br/>
			메세지 입력 : 
		<input type="text" id="sender" value="${sessionScope.LoginNickName}" style="display: none;">
		<input type="text" id="messageinput">
		<button type="button" onclick="send();">메세지 전송</button>
		<button type="button" onclick="javascript:clearText();">대화내용 지우기</button>
	</div>
	
	<div id="messages">
	</div>
	
	<script type="text/javascript">
		var ws;
		var messages = document.getElementById("messages");
		
		function openSocket(){
			if(ws !== undefined && ws.readyState !== WebSocket.CLOSED){
				writeResponse("WebSocket is already opended.");
				return;
			}

			ws = new WebSocket("ws://localhost:8888/echo.do");
			
			ws.onopen = function(event){
				if(event.data === undefined){
					return;
				}
				
				writeResponse(event.data);
			};
			
			ws.onmessage = function(event){
				console.log('wirteResponse');
				console.log(event.data)
				writeResponse(event.data);
			};
			
			ws.onclose = function(event){
				writeResponse("대화 종료");
			}
			
		}
		
		function send(){
			var text = document.getElementById("messageinput").value+","+document.getElementById("sender").value;
			console.log(text);
			ws.send(text);
			
			text = "";
		}
		
		function closeSocket(){
			ws.close();
		}
		
		function writeResponse(text){
			messages.innerHTML += "<br/>"+text;
		}
		
		function clearText(){
			console.log(messages.parentNode);
			messages.parentNode.removeChild(messages)
		}
	</script>
	
</body>
</html>