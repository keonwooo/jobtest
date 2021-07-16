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
		
		function emailCheck(){
	    	var member_phone = document.getElementById("member_phone").value;
	    	var member_id = document.getElementById("member_id").value;
	    	
	    	if(member_id==''){
	    		alert("ID를 입력해 주세요");
	    		return false;
	    	}
	    	
			if(member_phone==''){
				alert("연락처를 입력해 주세요")
				return false;
			}else{
				return true;
			}
			
		}
		
	</script>    
</head>
<body>

	<div>
    	<form action="/member/PwFind" method="post" onsubmit="return emailCheck();">
	    	<table border="1" class="table table-bordered">
	    		<tr>
	    			<td>
						아이디 
	    			</td>
	    			<td>
						<input type="text" name="member_id" id="member_id" placeholder="이메일 형식">
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>
						연락처
	    			</td>
	    			<td>
						<input type="text" name="member_phone" id="member_phone" placeholder="'-'없이 입력">
	    			</td>
	    		</tr>
	    	</table>
	    	<br>
	    	<div class="tb" style="text-align:center;">
		     	<input type="button" value="취소" onclick="join_cancel()" class="btn btn-outline-secondary">
		     	<input type="submit" value="찾기" class="btn btn-outline-secondary">
	    	</div>
    	</form>
    </div>

</body>
</html>