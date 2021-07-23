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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
</head>
<body>
<div id="wrap" class="wrap">
<header>
<div id="navbar">
	<a href="/">home</a>
	<a href="/member/MemberLoginPage">로그인</a>
	<a href="/work/Page">work</a>
</div>
</header>
<!-- <div id="infoBox">
	<div id="infoTitle">헬로</div>
	<div id="infoContent">월드</div>
</div> -->
<div id="current">현재 위치</div>
<div id="map" style="width:100%;height:100vh;"></div>
</div>
<script>
/* 지도 생성 */
var mapOptions = {
		center: new naver.maps.LatLng(37.520659, 126.982254),
		zoom: 14
}
var map = new naver.maps.Map('map',mapOptions);

/* 마커생성 */
var marker = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.520659, 126.982254),
    map: map
});

/* 인포박스 마커 위에 생성 */
var content = `<div class="infowindow_wrap">
	<div class="infowindow_title">기모찌한 심부름</div>
	<div class="infowindow_content">기모찌한 심부름 내용</div>
	<div class="infowindow_date">기모찌한 심부름 생성 날짜</div>
</div>`

var infowindow = new naver.maps.InfoWindow({
content: content,
});

naver.maps.Event.addListener(marker, "click", function(e) {
if (infowindow.getMap()) {
    infowindow.close();
} else {
    infowindow.open(map, marker);
}
});

/* 현재 위치 마커생성및 줌 댕기기 */
$('#current').click(()=>{
	if('geolocation' in navigator){
		navigator.geolocation.getCurrentPosition(function(position){
			const lat = position.coords.latitude;
			const lng = position.coords.longitude;
			const latlng = new naver.maps.LatLng(lat,lng);
			marker = new naver.maps.Marker({
				map: map,
				position: latlng,
			});
			map.setZoom(14,false);
			map.panTo(latlng);
		});
	}else{
		alert("위치정보 사용 불가")
	}
})

</script>
</body>
</html>