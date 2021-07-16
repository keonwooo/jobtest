<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JOB</title>
		
	<script type="text/javascript" src="/resources/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript">
		function update_cancel(){
	    	location.href = "/";
	    }
 	
		function update_submit(){
			var member_id = document.getElementById("member_id").value;
			var member_pw = document.getElementById("member_pw").value;
			var member_pwck = document.getElementById("member_pwck").value;
			var member_phone = document.getElementById("member_phone").value;
			var member_name = document.getElementById("member_name").value;
			var member_nickname = document.getElementById("member_nickname").value;

			document.getElementById("user_id").value = member_id;
			document.getElementById("user_pw").value = member_pw;
			document.getElementById("user_phone").value = member_phone;
			document.getElementById("user_name").value = member_name;
			document.getElementById("user_nickname").value = member_nickname;
			
			if(member_pw==''||member_pw.length==0){
				alert("비밀번호를 입력해 주세요");
				return false;
			}else if(member_pw.length<=2||member_pw.length>=11){
				alert("비밀번호는 3~10글자 입니다");
				return false;
			}
			
			if(member_pw!=member_pwck){
				alert("동일한 비밀번호를 입력해 주세요");
				return false;
				}
			
			if(member_phone==''||member_phone.length==0){
				alert("전화번호를 입력해 주세요");
				return false;
				}

			if(member_name==''||member_name.length==0){
				alert("이름을 입력해 주세요");
				return false;
				}

			if(member_nickname==''||member_nickname.length==0){
				alert("닉네임을 입력해 주세요");
				return false;
			}else if(member_nickname.length<=2||member_nickname.length>=9){
				alert("닉네임은 3~8글자 입니다");
				return false;
			}
			
			document.getElementById("updateForm").submit();
			
		}
		
		function CheckNickname(){
			$.ajax({
				url:"/member/CheckNickname",
				data:{
					member_nickname:$("#member_nickname").val()
					},
				success:function(data){
					if(data==1){
						$("#nicknameCheck").text("사용중인 아이디입니다");
						$("#nicknameCheck").css("color","red");
						$("#join_submit").attr("disabled", true);
					}else{
						$("#nicknameCheck").text("사용가능한 아이디입니다");
						$("#nicknameCheck").css("color","green");
						$("#join_submit").attr("disabled", false);
					}
				},
				error:function(e){
					alert("통신 실패");
					console.log(e);
					}
			});
		}
		
		$(function(){
	    	$("#check_bt").attr("disabled", true);
			
			$("#member_nickname").on("keyup", function(e){
				var txt = $(this).val();
				var txt2= $("#LoginNickName").val();
				if(txt==txt2){
					$("#check_bt").attr("disabled", true);
				}else{
					$("#check_bt").attr("disabled", false);
				}
				
			});
	
		});
		
		
	</script>
	
</head>
<body>
	<div id="div">
		<table border="1" class="table table-bordered">
			<tr>
				<td>
					아이디
				</td>
				<td>
					<input type="text" name="member_id" id="member_id" value="${hash.MEMBER_ID }" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td>
					비밀번호
				</td>
				<td>
					<input type="password" name="member_pw" id="member_pw" placeholder="비밀번호"><div id="pwCheck"></div>	
				</td>
			</tr>
			<tr>
				<td>
					비밀번호 확인
				</td>
				<td>
					<input type="password" id="member_pwck" placeholder="비밀번호 확인">	
				</td>
			</tr>
			<tr>
				<td>
					연락처
				</td>
				<td>
					<input type="text" name="member_phone"  id="member_phone" value="${hash.MEMBER_PHONE }" placeholder="'-'없이 입력">
				</td>
			</tr>
			<tr>
				<td>
					이름
				</td>
				<td>
					<input type="text" name="member_name" id="member_name" placeholder="이름" value="${hash.MEMBER_NAME }" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td>
					닉네임
				</td>
				<td>
					<input type="text" name="member_nickname" id="member_nickname" value="${hash.MEMBER_NICKNAME }" placeholder="닉네임" >
					<input type="hidden" id="LoginNickName" value="${hash.MEMBER_NICKNAME }">
					<button onclick="CheckNickname()" id="check_bt" class="btn btn-outline-secondary">중복 검사</button><div id="nicknameCheck"></div>
				</td>
			</tr>
		</table><br>
		
		<div class="join_st" style="text-align:center;">
			<input type="button" value="취소" onclick="update_cancel()" class="btn btn-outline-secondary">
			<input type="button" id="update_submit" onclick="update_submit()" value="수정" class="btn btn-outline-secondary">
		</div>
		
		<form action="/member/MemberUpdate" method="post" id="updateForm">
			<input type="hidden" name="member_id" id="user_id">
			<input type="hidden" name="member_pw" id="user_pw">
			<input type="hidden" name="member_phone" id="user_phone">
			<input type="hidden" name="member_name" id="user_name">
			<input type="hidden" name="member_nickname" id="user_nickname">
		</form>
		
		<br><br>
	</div>
</body>
</html>