<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=7jc6l2xe2a&submodules=geocode"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
</head>
<body>
<div id="wrap" class="wrap">
<header>
<script type="text/javascript">
$(function(){
	$(".infowindow_wrap").click(function(){
	      alert("infowindow_wrap id 클릭");
	  });
  $('.infowindow_wrap').click(function(){
    $('.infoDetail').show();
  });
  $('.infowindow_wrap').click(function(){
    $('.infoDetail').hide();
  });
});
</script>
<div id="navbar">
	<a href="/">home </a>
	<a href="/member/MemberLoginPage">로그인</a>
	<a href="/work/Page">work</a>
</div>
</header>
<!-- <div id="current">현재 위치</div> -->
<div id="detail">

</div>
<div id="map" style="width:100%;height:100vh;"></div>
</div>

<div class="infoDetail">
hello
</div>
<script type="text/javascript" src="/resources/data/data.js"></script>
<script>
/* 지도 생성 띄우기*/
var mapOptions = {
    center: new naver.maps.LatLng(37.520659, 126.982254),
    zoom: 14
}

var map = new naver.maps.Map('map',mapOptions);
/* 지도 생성 끝 */

/* 정해진 위치별 마커 및 정보 창 */
var markerList = []; //마커를 담는 변수와 정보창을 담는 변수생성
var infowindowList = [];

for (var i in data){ //
    var target = data[i];
    var latlng = new naver.maps.LatLng(target.lat, target.lng);
    marker = new naver.maps.Marker({
        map: map,
        position: latlng
    });

    var content = `<div class='infowindow_wrap'>
            <div class='infowindow_seq'>${workVO.work_seq}</div>
            <div class='infowindow_title'>${workVO.work_title}</div>
            <div class='infowindow_content'>${workVO.work_board}</div>
            <div class='infowindow_date'>${workVO.work_indate}</div>
        </div>`
        

	var infowindow = new naver.maps.InfoWindow({
	    content: content,
	    });
	
	    markerList.push(marker);
	    infowindowList.push(infowindow);
	}
	
for (var i=0, ii=markerList.length; i<ii;i++){
    naver.maps.Event.addListener(map, "click", ClickMap(i));
    naver.maps.Event.addListener(markerList[i], "click", getClickHandler(i));
}

function ClickMap(i) {
    return function () {
        var infowindow = infowindowList[i];
        infowindow.close();
    }
}

function getClickHandler(i){
    return function(){
        var marker = markerList[i];
        var infowindow = infowindowList[i];
        if(infowindow.getMap()){
            infowindow.close();
        } else {
            infowindow.open(map, marker);
        }
   }
    
   
	
}  
/* 정해진 위치별 마커 및 정보 창 끝 */

</script>
</body>
</html>