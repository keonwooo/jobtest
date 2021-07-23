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

<form action="/work/modify" method="post">
		<p><label>글번호</label> <input type="text" name ="work_seq" value ="${workVO.work_seq}" readonly="readonly"></p>
	    <p><label>제목</label ><input type="text" name ="work_title" value ="${workVO.work_title}" ></p>
	    <p><label>유형</label> <input type="text" name="work_system" size="15" value = "${workVO.work_system}"></p>
	    <label>내용</label> <textarea name="work_board" rows ="10" cols="70" >${workVO.work_board}</textarea><br>
		<p><label>가격</label> <input type="text" name ="work_price" value ="${workVO.work_price}"></p>
	    <button type ="submit">완료</button>
</form>

</body>
</html>