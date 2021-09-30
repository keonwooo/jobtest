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
							<a class="sidebar-link" href="/">
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
										<a href="/chat" class="text-muted">Show all messages</a>
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
					<div id="u_loc">
						<span>내 위치</span>
					</div>
				</nav>
	
				<main class="content">
					<div id="map" style="width:100%; height: 100vh;"></div>
					<div>
						<div align="right" style="margin-top: 50px; margin-right: 32px" id="sort_div">
							<select id="sort">
								<option value="1"  selected="selected">---정렬 기준---</option>
								<option value="1">최신순</option>
								<option value="2">오래된순</option>
								<option value="3">높은 금액순</option>
							    <option value="4">낮은 금액순</option>
							</select>
						</div>
						<div class="showDetail" id="placesList" >
							<c:if test="${not empty list }">
								<ul style="list-style-type: none;">
								<c:forEach items="${list }" var="job_list" varStatus="status">
									<li onclick="getData(${job_list.work_seq})" style="cursor: pointer;">
											<hr style="width:300px;">
											<h3>
												${job_list.work_title }
											</h3>
											${job_list.member_id }
											</br>
											희망 가격 : ${job_list.work_price }원
											<hr style="width:300px">
									</li>
								</c:forEach>
								</ul>
							</c:if>
						</div>
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
		
		$("#sort").change(function(){
			var sort_val = $(this).val();
			getList(sort_val);
		})
		
		/* 지도 생성 띄우기*/
		var mapOptions = {
		    center: new naver.maps.LatLng(37.520659, 126.982254),
		    zoom: 14,
		   
		}

		var map = new naver.maps.Map('map',mapOptions);
		/* 지도 생성 끝 */
		 
		
	
		// markerlist,infowindowlist
		var markers = [],
			infoWindows = [];
			data = [];
	
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
			
			/*let listEl = document.getElementById("placesList");
			const el = document.createElement("li");
			const itemStr = `
						<div class="item">
							<a href="#">
								<div>
									<span class="dli-1">`+target.title+`</span>
								</div>
									
							</a>
							<a href="#">
								<div>
									<span class="dli-2">`+target.system+`</span>
								</div>
							
							</a>
						</div>
						<div class="short_img">
							<a href="#">
							<img src="http://placehold.it/110X112" />
							</a>
							<a href="#">
							<img src="http://placehold.it/110X112" />
							</a>
							<a href="#">
							<img src="http://placehold.it/110X112" />
							</a>
						</div>		
			`
			
			el.innerHTML = itemStr;
			el.classname = "libox";
			el.id = "`+target.seq+`";
			
			listEl.appendChild(el); 
			/* <form action="/work/detail?work_seq=`+ target.seq +`" method="get"> 
			</form>
			*/
			// 
			var content = 
				`
				<div class="infowindow_wrap">
				<p><label>bno</label> <input type="text" name ="work_seq" value ="`+target.seq+`" readonly="readonly"></p>
				<p><label>제목</label> <input type="text" name ="work_title" value ="`+target.title+`" readonly="readonly"></p>
				<p><label>유형</label> <input type="text" name="work_system" size="15" value = "`+target.system+`"readonly="readonly"><p>
				<p><label>가격</label> <input type="text" name ="work_price" value ="`+target.price+`" readonly="readonly"></p>
				<button type="button" class="btn_go_entry" onclick="getData(`+target.seq+`)"></button>
				</div>
				`
			
			var infoWindow = new naver.maps.InfoWindow({
			    content: content
			});
				
			
	        markers.push(marker);
	        infoWindows.push(infoWindow);
		}
		
	
		
		function showdetail(workvo, bl){
			let detailEl = document.getElementById("placesList");
		/* 	const el = document.createElement("li"); */
			const itemStr = `
				<div class= "item_wrap">
						<div class="short_img">
							<a href="#">
								<img src="http://placehold.it/110X112" />
							</a>
							<a href="#">
								<img src="http://placehold.it/110X112" />
							</a>
							<a href="#">
								<img src="http://placehold.it/110X112" />
							</a>
						</div>	
						<div class="item">
								<hr style="width:300px">
								<table width="300px" align="center">
									<tr>
										<p><td align = "right" width="150px" style="font-size:xx-large;"> `+workvo.work_title+` </td>
										<p><td align = "left" width="150px" style="padding-top:10px"> `+workvo.work_system+` </td>
									</tr>
								</table>
								<hr>
								<table width="300px" height="300px">
									<tr>
										<p><td align="left" style="vertical-align:top;"> `+workvo.work_board+`</td>
									</tr>
								</table>
								<hr>
								<table width="300px" >
									<tr>
										<p><td align="left">희망 가격 : `+workvo.work_price+`원</td>
										<p><td align="right">`+workvo.member_id+`</td>
									</tr>
									<tr height="10px"></tr>
									<tr>
										<td>
											<input type="button" value="수락" style="width:150px; height:40px;">
										</td>
										<td>
											<input type="button" value="목록" style="width:150px; height:40px;" onclick="getList(1)">
										</td>
									</tr>
								</table>
								
						</div>
							
					</div>
			`	
			
			/* el.innerHTML = itemStr;
			el.className += "libox"; */
			
			detailEl.innerHTML = itemStr;
			
			//el.id = "`+target.seq+`";
			/* listEl.appendChild(el);  */
			
			$("#sort_div").hide();
			
		}
		
		function getList(a){
			$("#sort_div").show();
			if(a==1){
				let detailEl = document.getElementById("placesList");
				/* 	const el = document.createElement("li"); */
					const itemStr = `
						<c:if test="${not empty list }">
						<ul style="list-style-type: none;">
						<c:forEach items="${list }" var="job_list" varStatus="status">
							<li onclick="getData(${job_list.work_seq})" style="cursor: pointer;">
									<hr style="width:300px;">
									<h3>
										${job_list.work_title }
									</h3>
										${job_list.member_id}
										</br>
										희망 가격 : ${job_list.work_price }원
									<hr style="width:300px">
							</li>
						</c:forEach>
						</ul>
					</c:if>
					`	
					
					/* el.innerHTML = itemStr;
					el.className += "libox"; */
					
					detailEl.innerHTML = itemStr;
			} else if(a==2){
				let detailEl = document.getElementById("placesList");
				/* 	const el = document.createElement("li"); */
					const itemStr = `
						<c:if test="${not empty list1 }">
						<ul style="list-style-type: none;">
						<c:forEach items="${list1 }" var="job_list" varStatus="status">
							<li onclick="getData(${job_list.work_seq})" style="cursor: pointer;">
									<hr style="width:300px;">
									<h3>
										${job_list.work_title }
									</h3>
										${job_list.member_id}
										</br>
										희망 가격 : ${job_list.work_price }원
									<hr style="width:300px">
							</li>
						</c:forEach>
						</ul>
					</c:if>
					`	
					
					/* el.innerHTML = itemStr;
					el.className += "libox"; */
					
					detailEl.innerHTML = itemStr;
			} else if(a==3){
				let detailEl = document.getElementById("placesList");
				/* 	const el = document.createElement("li"); */
					const itemStr = `
						<c:if test="${not empty list2 }">
						<ul style="list-style-type: none;">
						<c:forEach items="${list2 }" var="job_list" varStatus="status">
							<li onclick="getData(${job_list.work_seq})" style="cursor: pointer;">
									<hr style="width:300px;">
									<h3>
										${job_list.work_title }
									</h3>
										${job_list.member_id}
										</br>
										희망 가격 : ${job_list.work_price }원
									<hr style="width:300px">
							</li>
						</c:forEach>
						</ul>
					</c:if>
					`	
					
					/* el.innerHTML = itemStr;
					el.className += "libox"; */
					
					detailEl.innerHTML = itemStr;
			} else if(a==4){
				let detailEl = document.getElementById("placesList");
				/* 	const el = document.createElement("li"); */
					const itemStr = `
						<c:if test="${not empty list3 }">
						<ul style="list-style-type: none;">
						<c:forEach items="${list3 }" var="job_list" varStatus="status">
							<li onclick="getData(${job_list.work_seq})" style="cursor: pointer;">
									<hr style="width:300px;">
									<h3>
										${job_list.work_title }
									</h3>
										${job_list.member_id}
										</br>
										희망 가격 : ${job_list.work_price }원
									<hr style="width:300px">
							</li>
						</c:forEach>
						</ul>
					</c:if>
					`	
					
					/* el.innerHTML = itemStr;
					el.className += "libox"; */
					
					detailEl.innerHTML = itemStr;
			}
		}
		
		
		function getData(a) {
			$.ajax({
				type:"get",  //전송타입
				url:`/work/detail?work_seq=`+a,//서버요청대상파일
/* 				dataType:"text",  //응답타입 */
				success: function (workvo) {
					const e = document.querySelector('.showDetail');
					showdetail(workvo);
			        
				},
				error: function (workvo) {
					alert("존재하지 않는 글입니다.");
				}
			});
		}  	
	       
	
		/* $('.btn_go_entry').click(function(){
			
			
        }); */
		
		function getClickHandler(i){
			return function(){
				var marker = markers[i],
				 	infoWindow = infoWindows[i];
				
				
				if(infoWindow.getMap()){
					infoWindow.close();
				} else {
					infoWindow.open(map, marker);
				}
			}
		}
		
	
		
		
		// 지도 클릭시 infoWindow.close
		function clickMap(i){
			return function() {
				var infoWindow = infoWindows[i];
				infoWindow.close();
			}
		}
		
		
		
		
		for (var i=0, ii=markers.length; i<ii; i++) {
		    naver.maps.Event.addListener(map, 'click', clickMap(i));
		    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
		}
		
		
		// 검색 기능 구현
	
		let ps = new kakao.maps.services.Places(); 
		let search_arr = [];
		
		$("#search_input").on("keydown",function(e){	// keyCode 13 enter 입력시 이벤트 
			if(e.keyCode === 13){
				let content = $(this).val();
				ps.keywordSearch(content, placeSearchCB);
			}
		});
		
		$("#search_btn").on("click",function(e){
			let content = $("#search_input").val();
			ps.keywordSearch(content, placeSearchCB);
		});
		
		function placeSearchCB(data, status, pagination){
			if(status === kakao.maps.services.Status.OK){	//카카오 맵 연결상태 체크
				
				let target = data[0];
				const lat = target.y;
				const lng = target.x;
				const latlng = new naver.maps.LatLng(lat, lng);
				
				marker = new naver.maps.Marker({
					position: latlng,
					map: map
				});
				if(search_arr.length == 0 ){
					search_arr.push(marker)
					
				}else{
					search_arr.push(marker)
					let pre_marker = search_arr.splice(0,1);
					pre_marker[0].setMap(null);
				}
				map.setZoom(14, false);
				map.panTo(latlng);
			} else {
				alert("false");
			}
		}
		
		
		function job_list(){
			href="/";
		}
		
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

	
		
		$("#u_loc").on("click",function(){
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
		
		
		// 보이는 위치 마커
		naver.maps.Event.addListener(map, 'idle', function() {
		    updateMarkers(map, markers);
		    console.log("--idle--")
		
		});
		
		function updateMarkers(map, markers) {
		
		    var mapBounds = map.getBounds(); //현재 화면에 표시되고 있는 지도 영역을 LatLngBounds 객체로 반환
		    var marker, position;
		
		    for (var i = 0; i < markers.length; i++) {
		
		        marker = markers[i]
		        position = marker.getPosition();
		
		        if (mapBounds.hasLatLng(position)) {
		            showMarker(map, marker);
		            showdetail();
		          	console.log(marker)
		        } else {
		            hideMarker(map, marker);
		        }
		    }
		}
		
		function showMarker(map, marker) {
		
		    if (marker.getMap()) return;
		    marker.setMap(map);
		}
		
		function hideMarker(map, marker) {
		
		    if (!marker.getMap()) return;
		    marker.setMap(null);
		}
		// 보이는 위치 마커 끝
		</script>
	</body>

</html>