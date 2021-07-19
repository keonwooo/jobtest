<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=7jc6l2xe2a"></script>
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
</head>
<body>
<div id="navbar">
	<a href="/">home</a>
	<a href="/member/MemberLoginPage">로그인</a>
	<a href="/work/workPage">work</a>
</div>
<div id="map" style="width:100%;height:100vh;"></div>

<script>
var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(37.520659, 126.982254),
    zoom: 14
});

</script>
</body>
</html>