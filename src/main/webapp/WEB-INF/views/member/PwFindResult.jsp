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
	    function join_cancel(){
	    	location.href = "/member/MemberLoginPage";
	    }

	    function PwCheck() {
	    	var member_pw = document.getElementById("member_pw").value;
			var member_pwck = document.getElementById("member_pwck").value;

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

			return true;
		}

    </script>
	
</head>
<body>

	<div>
     	<c:choose>
     		<c:when test="${member_id!=null}">
     			<form action="/member/PwChange" method="post" onsubmit="return PwCheck();">
	     			<table border="1" id="tb" class="table table-bordered">
		    			<tr>
		     				<td>
		     					새로운 비밀번호
		     				</td>
		     				<td>
		     					<input type="password" name="member_pw" id="member_pw">
		     				</td>
		     			</tr>
		     			<tr>
		     				<td>
		     					비밀번호 확인
		     				</td>
		     				<td>
		     					<input type="password" id="member_pwck">
		     				</td>
		     			</tr>
	     			</table>
     				<br>
	     			<div class="tb" style="text-align:center;">
		        		<input type="hidden" value="${member_id }" name="member_id">
		        		<input type="button" value="취소" onclick="join_cancel()" class="btn btn-outline-secondary">
		        		<input type="submit" value="변경" class="btn btn-outline-secondary">
		       		</div>
     			</form>
     			</c:when>
     			<c:otherwise>
     				<table id="tb">
	     				<tr>
	     					<td>
	     						일치하는 회원정보가 없습니다
	     					</td>
	     				</tr>
     				</table>
     				<br>
     				<div class="tb" style="text-align:center;">
	         		<input type="button" value="돌아가기" onclick="join_cancel()">
     				</div>
     			</c:otherwise>
     		</c:choose>
     	<br>
     	
         <!-- 로그인 화면 섹션 -> 이부분 지우고 입력 -->
         
     </div>

</body>
</html>