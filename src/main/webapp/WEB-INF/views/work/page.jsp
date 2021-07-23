<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link>
</head>
<body>
	<a href="/">홈으로 </a>
	<div id="div">
		<form action="/work/Write" method="post" >
			<table border="1">
			<tr><th>타이틀</th><td><input type="text" name="work_title" id="work_title" placeholder="title"></td></tr>
			<tr><th>유형</th><td><input type="text" name="work_system" id="work_system" placeholder="유형"></td></tr>
			<tr><th>글내용</th><td><textarea name="work_board" id="work_board" placeholder="내용"cols="20" rows="20"></textarea></td></tr>
			<tr><th>가격</th><td><input type="text" name="work_price" id="work_price" placeholder="가격"></td></tr>
		</table>
			<input type="submit" value="확인" >
			<input type="button" value="취소" >
		</form>
	</div>
	
</body>
</html>