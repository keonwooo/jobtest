<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JOB</title>
	
	<script type="text/javascript">
	    function login(){
	    	location.href = "/member/MemberLoginPage";
	    } 

    </script>
    
</head>
<body>
	<div>
    	<table border="1" id="tb" class="table table-bordered">
    		<tr>
    			<td>
    				아이디
    			</td>
    			<td>
    				<input type="text" value="${member_id }" readonly="readonly">
    			</td>
    		</tr>
    	</table>
    	<br>
    	<div style="text-align:center;">
	        <input type="button" onclick="login()" value="로그인" class="btn btn-outline-secondary">
    	</div>
    </div>

</body>
</html>