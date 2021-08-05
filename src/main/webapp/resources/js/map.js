	/* 지도 생성 */
var mapOptions = {
    center: new naver.maps.LatLng(37.520659, 126.982254),
    zoom: 14
}

var map = new naver.maps.Map('map',mapOptions);

var markerList = [];
var infowindowList = [];

for (var i in data){
    var target = data[i];
    var latlng = new naver.maps.LatLng(target.lat, target.lng);
    marker = new naver.maps.Marker({
        map: map,
        position: latlng
    });

    var content = `<div class='infowindow_wrap'>
            <div class="infowindow_seq">${workVO.work_seq}</div>
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
			alert("클릭");
            infowindow.open(map, marker);
        }
    }
}
