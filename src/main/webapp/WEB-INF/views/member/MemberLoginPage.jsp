<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-16LE">
	<title>JOB</title>
	<script type="text/javascript">
		
		function loginCheck() {
			var member_id = document.getElementById("member_id").value;
	    	var member_pw = document.getElementById("member_pw").value;
	    	
	    	if(member_id==''||member_id.length==0){
				alert("아이디를 입력해 주세요");
				return false;
				}

	    	if(member_pw==''||member_pw.length==0){
				alert("비밀번호를 입력해 주세요");
				return false;
				}else if(member_pw.length<=2||member_pw.length>=11){
					alert("비밀번호는 3~10글자 입니다");
					return false;
				}

	    	var flag = jquryCheck();

			if(!flag){
				alert("존재하지 않은 아이디 혹은 잘못된 비밀번호 입니다.");
				$("#member_pw").val("");
				return false;
			}
	    	
	    	return true;
		}
	
	</script>
	
	<style type="text/css">
		#login_st{
    	margin-left: auto;
    	margin-right: auto;
    	margin: 0px auto;
    	}
	</style>
</head>
<body>

	<div>
		<form action="/member/Login" method="post" onsubmit="return loginCheck();">
			<table id="login_st">
            	<tr>
                	<td>
						<input type="text" name="member_id" id="member_id" placeholder="아이디">
                	</td>
                    <td rowspan="2">
                    	<input type="submit" value="로그인" style="width:150px; height:80px;background: #7c4df1;opacity: 70%;color:white;border:none;border-radius:10px;">
                	</td>
                </tr>
                <tr>
	                <td>
						<input type="password" name="member_pw" id="member_pw" placeholder="비밀번호" >
	                </td>
                </tr>
               	<tr>
                    <td colspan="2">
						&nbsp<a href="/member/MemberJoinForm" style="font-weight:bold">회원가입</a>&nbsp&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp&nbsp
						<a href="/member/MemberFindForm" style="font-weight:bold">아이디 찾기</a>&nbsp&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
						<a href="/member/PwFindForm" style="font-weight:bold">비밀번호 찾기</a> 
					</td>
				</tr>
        	</table>
		</form>
	</div>

</body>
</html>