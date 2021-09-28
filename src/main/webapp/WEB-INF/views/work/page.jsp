<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
		<meta name="author" content="AdminKit">
		<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">
	
		<link rel="preconnect" href="https://fonts.gstatic.com">
	
		<link rel="canonical" href="https://demo-basic.adminkit.io/" />
	
		<title>JOB</title>
	
		<link href="/resources/css/app.css" rel="stylesheet">
		<link href="/resources/css/style.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
		<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=7jc6l2xe2a&submodules=geocode"></script>
   	 	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    
	</head>
	
	<body>
		
		
		
		<div class="wrapper">
			<nav id="sidebar" class="sidebar js-sidebar collapsed">
				<div class="sidebar-content js-simplebar">
					<a class="sidebar-brand" href="/">
	          <span class="align-middle">HOME</span>
	        </a>
	
					<ul class="sidebar-nav">
						<li class="sidebar-header">
							Pages
						</li>
	
						<li class="sidebar-item active">
							<a class="sidebar-link" href="/index.html">
	              <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
	            </a>	
						</li>
						<c:choose>
							<c:when test="${sessionScope.LoginID != null }">
								<li class="sidebar-item">
									<a class="sidebar-link" href="/member/MyPage">
		              					<i class="align-middle" data-feather="user"></i> <span class="align-middle">Profile</span>
		            				</a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="sidebar-item">
									<a class="sidebar-link" href="/member/MemberLoginPage">
						              <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Sign In</span>
						            </a>
								</li>
								<li class="sidebar-item">
									<a class="sidebar-link" href="/member/MemberJoinForm">
			              				<i class="align-middle" data-feather="user-plus"></i> <span class="align-middle">Sign Up</span>
			            			</a>
								</li>
							</c:otherwise>
						</c:choose>
	
						<li class="sidebar-header">
							Tools & Components
						</li>
	
						<li class="sidebar-item">
							<a class="sidebar-link" href="ui-buttons.html">
	              <i class="align-middle" data-feather="square"></i> <span class="align-middle">Buttons</span>
	            </a>
						</li>
	
						<li class="sidebar-item">
							<a class="sidebar-link" href="ui-forms.html">
	              <i class="align-middle" data-feather="check-square"></i> <span class="align-middle">Forms</span>
	            </a>
						</li>
	
						<li class="sidebar-item">
							<a class="sidebar-link" href="ui-cards.html">
	              <i class="align-middle" data-feather="grid"></i> <span class="align-middle">Cards</span>
	            </a>
						</li>
	
						<li class="sidebar-item">
							<a class="sidebar-link" href="ui-typography.html">
	              <i class="align-middle" data-feather="align-left"></i> <span class="align-middle">Typography</span>
	            </a>
						</li>
	
						<li class="sidebar-item">
							<a class="sidebar-link" href="icons-feather.html">
	              <i class="align-middle" data-feather="coffee"></i> <span class="align-middle">Icons</span>
	            </a>
						</li>
	
						<li class="sidebar-header">
							Plugins & Addons
						</li>
	
						<li class="sidebar-item">
							<a class="sidebar-link" href="charts-chartjs.html">
	              <i class="align-middle" data-feather="bar-chart-2"></i> <span class="align-middle">Charts</span>
	            </a>
						</li>
	
						<li class="sidebar-item">
							<a class="sidebar-link" href="maps-google.html">
	              <i class="align-middle" data-feather="map"></i> <span class="align-middle">Maps</span>
	            </a>
						</li>
					</ul>
	
					<div class="sidebar-cta">
						<div class="sidebar-cta-content">
							<strong class="d-inline-block mb-2">Upgrade to Pro</strong>
							<div class="mb-3 text-sm">
								Are you looking for more components? Check out our premium version.
							</div>
							<div class="d-grid">
								<a href="upgrade-to-pro.html" class="btn btn-primary">Upgrade to Pro</a>
							</div>
						</div>
					</div>
				</div>
			</nav>
	
			<div class="main">
				<nav class="navbar navbar-expand navbar-light navbar-bg">
					<a class="sidebar-toggle js-sidebar-toggle">
	          <i class="hamburger align-self-center"></i>
	        </a>
	
					<div class="navbar-collapse collapse">
						<ul class="navbar-nav navbar-align">
							<li class="nav-item">
								<a href="/work/Write"><div class="newWork">New Work</div></a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown" data-bs-toggle="dropdown">
									<div class="position-relative">
										<i class="align-middle" data-feather="bell"></i>
										<span class="indicator">4</span>
									</div>
								</a>
								<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="alertsDropdown">
									<div class="dropdown-menu-header">
										4 New Notifications
									</div>
									<div class="list-group">
										<a href="#" class="list-group-item">
											<div class="row g-0 align-items-center">
												<div class="col-2">
													<i class="text-danger" data-feather="alert-circle"></i>
												</div>
												<div class="col-10">
													<div class="text-dark">Update completed</div>
													<div class="text-muted small mt-1">Restart server 12 to complete the update.</div>
													<div class="text-muted small mt-1">30m ago</div>
												</div>
											</div>
										</a>
										<a href="#" class="list-group-item">
											<div class="row g-0 align-items-center">
												<div class="col-2">
													<i class="text-warning" data-feather="bell"></i>
												</div>
												<div class="col-10">
													<div class="text-dark">Lorem ipsum</div>
													<div class="text-muted small mt-1">Aliquam ex eros, imperdiet vulputate hendrerit et.</div>
													<div class="text-muted small mt-1">2h ago</div>
												</div>
											</div>
										</a>
										<a href="#" class="list-group-item">
											<div class="row g-0 align-items-center">
												<div class="col-2">
													<i class="text-primary" data-feather="home"></i>
												</div>
												<div class="col-10">
													<div class="text-dark">Login from 192.186.1.8</div>
													<div class="text-muted small mt-1">5h ago</div>
												</div>
											</div>
										</a>
										<a href="#" class="list-group-item">
											<div class="row g-0 align-items-center">
												<div class="col-2">
													<i class="text-success" data-feather="user-plus"></i>
												</div>
												<div class="col-10">
													<div class="text-dark">New connection</div>
													<div class="text-muted small mt-1">Christina accepted your request.</div>
													<div class="text-muted small mt-1">14h ago</div>
												</div>
											</div>
										</a>
									</div>
									<div class="dropdown-menu-footer">
										<a href="#" class="text-muted">Show all notifications</a>
									</div>
								</div>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-icon dropdown-toggle" href="#" id="messagesDropdown" data-bs-toggle="dropdown">
									<div class="position-relative">
										<i class="align-middle" data-feather="message-square"></i>
									</div>
								</a>
								<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="messagesDropdown">
									<div class="dropdown-menu-header">
										<div class="position-relative">
											4 New Messages
										</div>
									</div>
									<div class="list-group">
										<a href="#" class="list-group-item">
											<div class="row g-0 align-items-center">
												<div class="col-2">
													<img src="img/avatars/avatar-5.jpg" class="avatar img-fluid rounded-circle" alt="Vanessa Tucker">
												</div>
												<div class="col-10 ps-2">
													<div class="text-dark">Vanessa Tucker</div>
													<div class="text-muted small mt-1">Nam pretium turpis et arcu. Duis arcu tortor.</div>
													<div class="text-muted small mt-1">15m ago</div>
												</div>
											</div>
										</a>
										<a href="#" class="list-group-item">
											<div class="row g-0 align-items-center">
												<div class="col-2">
													<img src="img/avatars/avatar-2.jpg" class="avatar img-fluid rounded-circle" alt="William Harris">
												</div>
												<div class="col-10 ps-2">
													<div class="text-dark">William Harris</div>
													<div class="text-muted small mt-1">Curabitur ligula sapien euismod vitae.</div>
													<div class="text-muted small mt-1">2h ago</div>
												</div>
											</div>
										</a>
										<a href="#" class="list-group-item">
											<div class="row g-0 align-items-center">
												<div class="col-2">
													<img src="img/avatars/avatar-4.jpg" class="avatar img-fluid rounded-circle" alt="Christina Mason">
												</div>
												<div class="col-10 ps-2">
													<div class="text-dark">Christina Mason</div>
													<div class="text-muted small mt-1">Pellentesque auctor neque nec urna.</div>
													<div class="text-muted small mt-1">4h ago</div>
												</div>
											</div>
										</a>
										<a href="#" class="list-group-item">
											<div class="row g-0 align-items-center">
												<div class="col-2">
													<img src="img/avatars/avatar-3.jpg" class="avatar img-fluid rounded-circle" alt="Sharon Lessman">
												</div>
												<div class="col-10 ps-2">
													<div class="text-dark">Sharon Lessman</div>
													<div class="text-muted small mt-1">Aenean tellus metus, bibendum sed, posuere ac, mattis non.</div>
													<div class="text-muted small mt-1">5h ago</div>
												</div>
											</div>
										</a>
									</div>
									<div class="dropdown-menu-footer">
										<a href="#" class="text-muted">Show all messages</a>
									</div>
								</div>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
	                <i class="align-middle" data-feather="settings"></i>
	              </a>
	
								<c:choose>
										<c:when test="${sessionScope.LoginID != null }">
									<a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
										${sessionScope.LoginNickName }
					             	</a>
									</c:when>
									<c:otherwise>
										<span class="text-dark"><a href="/member/MemberLoginPage">Login</a><br></span>
									</c:otherwise>
								</c:choose>
		
	                			
								<div class="dropdown-menu dropdown-menu-end">
									<a class="dropdown-item" href="member/MyPage"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
									<a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="pie-chart"></i> Analytics</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="index.html"><i class="align-middle me-1" data-feather="settings"></i> Settings & Privacy</a>
									<a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="help-circle"></i> Help Center</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="member/Logout">Log out</a>
								</div>
							</li>
						</ul>
					</div>
					<div id="search">
						<input type="text" id="search_input" placeholder="목적지 입력"/>
						<button id="search_btn">검색</button>
					</div>
					div.
				</nav>
	
				<main class="content" style="justify-content: normal">
					
						<div id="map" style="width:50%; height: 100vh;"></div>
						<div class="create_board" >
							<form action="/work/Write" method="post" >
								<table border="1">
									<tr><th>타이틀</th><td><input type="text" name="work_title"  placeholder="title"></td></tr>
									<tr><th>유형</th><td><input type="text" name="work_system"  placeholder="유형"></td></tr>
									<tr><th>글내용</th><td><textarea name="work_board"  placeholder="내용"cols="20" rows="20"></textarea></td></tr>
									<tr><th>가격</th><td><input type="text" name="work_price"  placeholder="가격"></td></tr>
									<tr><th>주소</th><td><input type="text" id="sample5_address" placeholder="주소"><input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"></td></tr>
								</table>
									<br>
								<input type="submit" value="확인" >
								<input type="button" value="취소" >
							</form>
						</div>
					
				</main>
				<footer class="footer">
					<div class="container-fluid">
						<div class="row text-muted">
							<div class="col-6 text-start">
								<p class="mb-0">
									<a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>AdminKit Demo</strong></a> &copy;
								</p>
							</div>
							<div class="col-6 text-end">
								<ul class="list-inline">
									<li class="list-inline-item">
										<a class="text-muted" href="https://adminkit.io/" target="_blank">Support</a>
									</li>
									<li class="list-inline-item">
										<a class="text-muted" href="https://adminkit.io/" target="_blank">Help Center</a>
									</li>
									<li class="list-inline-item">
										<a class="text-muted" href="https://adminkit.io/" target="_blank">Privacy</a>
									</li>
									<li class="list-inline-item">
										<a class="text-muted" href="https://adminkit.io/" target="_blank">Terms</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					
				</footer>
			</div>
		</div>
	
		<script src="/resources/js/app.js"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8862ea6580612c11c1adaf233a163b08&libraries=services"></script>
		<script type="text/javascript">
		
		/* 지도 생성 띄우기*/
		var mapOptions = {
		    center: new naver.maps.LatLng(37.520659, 126.982254),
		    zoom: 14
		}

		var map = new naver.maps.Map('map',mapOptions);
		/* 지도 생성 끝 */
		
		//주소-좌표 변환 객체를 생성
	    var geocoder = new daum.maps.services.Geocoder();
			
		
		// 내위치
		var infowindow = new naver.maps.InfoWindow();
		
		function onSuccessGeolocation(position) {
		    var location = new naver.maps.LatLng(position.coords.latitude,
		                                         position.coords.longitude);
		
		    map.setCenter(location); // 얻은 좌표를 지도의 중심으로 설정합니다.
		    map.setZoom(14); // 지도의 줌 레벨을 변경합니다.
		
		    var marker = new naver.maps.Marker({
		        position: new naver.maps.LatLng(location),
		        map: map
		    });
		    
		   
		    /* infowindow.setContent('<div style="padding:20px;">' + 'geolocation.getCurrentPosition() 위치' + '</div>');
		
		    infowindow.open(map, location);
		    console.log('Coordinates: ' + position.coords.latitude); */
		}
		
		function onErrorGeolocation() {
		    var center = map.getCenter();
		
		   /*  infowindow.setContent('<div style="padding:20px;">' +
		        '<h5 style="margin-bottom:5px;color:#f00;">Geolocation failed!</h5>'+ "latitude: "+ center.lat() +"<br />longitude: "+ center.lng() +'</div>');
		
		    infowindow.open(map, center); */
		}

	
		
		$("#search_btn").on("click",function(){
			if (navigator.geolocation) {
		        /**
		         * navigator.geolocation 은 Chrome 50 버젼 이후로 HTTP 환경에서 사용이 Deprecate 되어 HTTPS 환경에서만 사용 가능 합니다.
		         * http://localhost 에서는 사용이 가능하며, 테스트 목적으로, Chrome 의 바로가기를 만들어서 아래와 같이 설정하면 접속은 가능합니다.
		         * chrome.exe --unsafely-treat-insecure-origin-as-secure="http://example.com"
		         */
		        navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);
		    } else {
		     /*    var center = map.getCenter(); */
		     /*    infowindow.setContent('<div style="padding:20px;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5></div>');
		        infowindow.open(map, center); */
		        alert("위치정보 불러오기 실패")
		    }
		});
		// 내위치 끝
		
		
		</script>
	</body>

</html>