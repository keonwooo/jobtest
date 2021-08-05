<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/">home</a>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>유형</th>
				<th>내용</th>
				<th>가격</th>
				<th>날짜</th>
			</tr>
			<c:forEach items="${list }" var="list" >
			<tr>
			<td>${list.work_seq }</td>
			<td><a href="/work/detail?work_seq=${list.work_seq}">${list.work_title }</a></td>
			<td>${list.work_system }</td>
			<td>${list.work_board }</td>
			<td>${list.work_price }</td>
			<td>${list.work_indate }</td>
			</tr>
			</c:forEach>
			
		</table>
</body>
</html>