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
		    
		    function NameCheck(){
		    	var member_name = document.getElementById("member_name").value;
		    	var member_phone = document.getElementById("member_phone").value;
		    	
		    	if(member_name==''){
		    		alert("이름을 입력해 주세요");
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
    	<form action="/member/MemberFind" method="post" onsubmit="return NameCheck();">
	    	<table border="1" class="table table-bordered">
	    		<tr>
	    			<td>
						이름 
	    			</td>
	    			<td>
						<input type="text" name="member_name" id="member_name" placeholder="이름">
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