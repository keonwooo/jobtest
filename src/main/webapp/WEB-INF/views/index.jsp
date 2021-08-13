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
					<a class="sidebar-brand" href="index.html">
	          <span class="align-middle">AdminKit</span>
	        </a>
	
					<ul class="sidebar-nav">
						<li class="sidebar-header">
							Pages
						</li>
	
						<li class="sidebar-item active">
							<a class="sidebar-link" href="index.html">
	              <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
	            </a>
						</li>
	
						<li class="sidebar-item">
							<a class="sidebar-link" href="pages-profile.html">
	              <i class="align-middle" data-feather="user"></i> <span class="align-middle">Profile</span>
	            </a>
						</li>
	
						<li class="sidebar-item">
							<a class="sidebar-link" href="pages-sign-in.html">
	              <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Sign In</span>
	            </a>
						</li>
	
						<li class="sidebar-item">
							<a class="sidebar-link" href="pages-sign-up.html">
	              <i class="align-middle" data-feather="user-plus"></i> <span class="align-middle">Sign Up</span>
	            </a>
						</li>
	
						<li class="sidebar-item">
							<a class="sidebar-link" href="pages-blank.html">
	              <i class="align-middle" data-feather="book"></i> <span class="align-middle">Blank</span>
	            </a>
						</li>
	
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
	
								<a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
								<c:choose>
									<c:when test="${sessionScope.LoginID != null }">
										${sessionScope.LoginNickName }
									</c:when>
									<c:otherwise>
										<span class="text-dark"><a href="member/MemberLoginPage">로그인</a><br></span>
									</c:otherwise>
								</c:choose>
		
	                			
	              </a>
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
				</nav>
	
				<main class="content">
					<div id="map" style="width:100%; height: 100%"></div>
				
			
					<div class="showDetail collapsed-1">
					
					
						<%--  <form >
							<p><label>글번호</label> <input type="text" name ="work_seq" value ="${list.work_seq}" readonly="readonly"></p>
							<p><label>제목</label> <input type="text" name ="work_title" value ="${list.work_title}" readonly="readonly"></p>
							<p><label>유형</label> <input type="text" name="work_system" size="15" value = "${list.work_system}"readonly="readonly"><p>
							<label>내용</label> <textarea name="work_board" rows ="10" cols="70" readonly="readonly">${list.work_board}</textarea><br>
							<p><label>가격</label> <input type="text" name ="work_price" value ="${list.work_price}" readonly="readonly"></p> 
							
							<button type="submit" formaction="/work/modify" formmethod="get">수정</button>
							<button type="submit" formaction="/work/delete" formmethod="post">삭제</button>
							<button type="submit" formaction="/work/list" formmethod="get">목록</button>
						
						</form>  --%>
					
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
		<script type="text/javascript">
		/* 지도 생성 띄우기*/
		var mapOptions = {
		    center: new naver.maps.LatLng(37.520659, 126.982254),
		    zoom: 14
		}

		var map = new naver.maps.Map('map',mapOptions);
		/* 지도 생성 끝 */
		
	
		// markerlist,infowindowlist
		var markers = [],
			infoWindows = [];
		
		// data에 데이터 배열로 삽입
		var data = new Array();
		
	    <c:forEach items="${list}" var="list">        
        data.push({seq: "${list.work_seq}"
                ,title : "${list.work_title}"
                ,system : "${list.work_system}"
        		,board : "${list.work_board}"
        		,price : "${list.work_price}"
        		,lat : "${list.work_lat}"
        		,lng : "${list.work_lng}"
        		,indate : "${list.work_indate}"
        });
		</c:forEach>
		// 끝
		
		for (var i in data){
			
			var target = data[i];
			var latlng = new naver.maps.LatLng(target.lat, target.lng);
			
			var marker = new naver.maps.Marker({
			    position: latlng,
			    map: map
			});
			
			var content = 
				`<div class="infowindow_wrap clicktest">
				<div class="infowindow_seq">`+ target.seq +`</div>
	            <div class="infowindow_title">`+ target.title +`</div>
	            <div class="infowindow_content">`+ target.board +`</div>
	            <div class="infowindow_date">`+ target.indate +`</div>
	        	</div>`
				
			
			var infoWindow = new naver.maps.InfoWindow({
			    content: content
			});
	        
	        markers.push(marker);
	        infoWindows.push(infoWindow);
	        
		}
		
		function getClickHandler(i){
			return function(){
				var marker = markers[i],
				 	infoWindow = infoWindows[i];
				var e = document.querySelector('.showDetail');
				
				if(infoWindow.getMap()){
					infoWindow.close();
				} else {
					infoWindow.open(map, marker);
					
					$('.clicktest').click(function(){
			        	//alert("c");
			        	e.classList.toggle('collapsed-1');
			        });
				}
			}
		}
		
		//네이버 추가
		for (var i=0, ii=markers.length; i<ii; i++) {
		    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
		}
		
		
		</script>
	</body>

</html>