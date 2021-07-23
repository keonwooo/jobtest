<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<<<<<<< Updated upstream
	<c:choose>
		<c:when test="${sessionScope.LoginID != null }">
			<li>'${sessionScope.LoginNickName }'님</li>
			<li><a href="member/MyPage">마이페이지</a></li>
			<li><a href="member/Logout">로그아웃</a></li>
		</c:when>
		<c:otherwise>
			<a href="member/MemberLoginPage">로그인</a>
		</c:otherwise>
	</c:choose>
=======
	<a href="/member/MemberLoginPage">로그인</a><br>
	<a href="/work/Page">심부름 시킬거</a><br>
	<a href="/work/list">심부름 리스트</a><br>
	<a href="/work/Map">지도</a><br>
>>>>>>> Stashed changes
</body>
</html>
