<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<c:choose>
		<c:when test="${sessionScope.LoginID != null }">
			<li>'${sessionScope.LoginNickName }'님</li>
			<li><a href="member/Logout">로그아웃</a></li>
		</c:when>
		<c:otherwise>
			<a href="member/MemberLoginPage">로그인</a>
		</c:otherwise>
	</c:choose>
</body>
</html>
