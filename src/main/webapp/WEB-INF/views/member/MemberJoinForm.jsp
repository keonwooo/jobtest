<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=utf-8>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">
	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	
	<link rel="canonical" href="https://demo-basic.adminkit.io/" />
	
	<title>JOB</title>
	<link href="/resources/css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	<script type="text/javascript" src="/resources/js/jquery-3.5.1.min.js"></script>	
	<script type="text/javascript">
		
		var idJ = /^[a-z0-9]{4,12}$/;
		var pwJ = /^[a-z0-9]{3,12}$/;
		var phJ = /^[0-9]{11}$/;
		var naJ = /^[a-z]{2,12}$/;
		var niJ = /^[a-z0-9]{3,12}$/;
 
	
		//회원가입 취소
		function join_cancel(){
	    	location.href = "/member/MemberLoginPage";
	    }
		
		$(document).ready(function(){
			$("#join_submit").attr("disabled", true);
			$("#member_id").blur(function() {
				// id = "id_reg" / name = "userId"
				var member_id = $('#member_id').val();
				$.ajax({
					url : '/member/CheckId?member_id='+ member_id,
					type : 'get',
					success : function(data) {
						console.log("1 = 중복o / 0 = 중복x : "+ data);							
						
						if (data == 1) {
								// 1 : 아이디가 중복되는 문구
								$("#IdCheck").text("사용중인 아이디입니다 :p");
								$("#IdCheck").css("color", "red");
								$("#join_submit").attr("disabled", true);
							} else {
								
								if(idJ.test(member_id)){
									// 0 : 아이디 길이 / 문자열 검사
									$("#IdCheck").text("");
									$("#join_submit").attr("disabled", false);
						
								} else if(member_id == ""){
									
									$('#IdCheck').text('아이디를 입력해주세요 :)');
									$('#IdCheck').css('color', 'red');
									$("#join_submit").attr("disabled", true);				
									
								} else {
									
									$('#IdCheck').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :)");
									$('#IdCheck').css('color', 'red');
									$("#join_submit").attr("disabled", true);
								}
								
							}
						}, 
					error : function() {
							console.log("실패");
					}
				});
			});
			
			
			$("#member_pw").blur(function() {
				// id = "id_reg" / name = "userId"
				var member_pw = $('#member_pw').val();
				
				if(pwJ.test(member_pw)){
					$("#PwCheck").text("");
					$("#join_submit").attr("disabled", false);
				} else if(member_pw == ""){
					$('#PwCheck').text('비밀번호를 입력해주세요 :)');
					$('#PwCheck').css('color', 'red');
					$("#join_submit").attr("disabled", true);				
				} else {
					$('#PwCheck').text("비밀번호는 3~12자리만 가능합니다 :)");
					$('#PwCheck').css('color', 'red');
					$("#join_submit").attr("disabled", true);
				}
			});
			
			$("#member_pwck").blur(function() {
				// id = "id_reg" / name = "userId"
				var member_pw = $('#member_pw').val();
				var member_pwck = $('#member_pwck').val();
				
				if(member_pw==member_pwck){
					$("#PwckCheck").text("");
					$("#join_submit").attr("disabled", false);
				} else{
					$('#PwckCheck').text('동일한 비밀번호를 입력해 주세요.');
					$('#PwckCheck').css('color', 'red');
					$("#join_submit").attr("disabled", true);
					
				}
			});
			
			$("#member_phone").blur(function() {
				// id = "id_reg" / name = "userId"
				var member_phone = $('#member_phone').val();
				
				if(phJ.test(member_phone)){
					$("#PhoneCheck").text("");
					$("#join_submit").attr("disabled", false);
				} else if(member_pw == ""){
					$('#PhoneCheck').text('전화번호를 입력해주세요 :)');
					$('#PhoneCheck').css('color', 'red');
					$("#join_submit").attr("disabled", true);				
				} else {
					$('#PhoneCheck').text("전화번호는 11자리를 입력해 주세요 :)");
					$('#PhoneCheck').css('color', 'red');
					$("#join_submit").attr("disabled", true);
				}
				
			});
			
			$("#member_name").blur(function() {
				// id = "id_reg" / name = "userId"
				var member_name = $('#member_name').val();
				
				if(naJ.test(member_name)){
					$("#NaCheck").text("");
					$("#join_submit").attr("disabled", false);
				} else if(member_name == ""){
					$('#NaCheck').text('이름을 입력해주세요 :)');
					$('#NaCheck').css('color', 'red');
					$("#join_submit").attr("disabled", true);				
				} else {
					$('#NaCheck').text("이름은 2~12자리만 가능합니다 :)");
					$('#NaCheck').css('color', 'red');
					$("#join_submit").attr("disabled", true);
				}
				
			});
			
			$("#member_nickname").blur(function() {
				// id = "id_reg" / name = "userId"
				var member_nickname = $('#member_nickname').val();
				$.ajax({
					url : '/member/CheckNickname?member_nickname='+ member_nickname,
					type : 'get',
					success : function(data) {
						console.log("1 = 중복o / 0 = 중복x : "+ data);							
						
						if (data == 1) {
								// 1 : 닉네임이 중복되는 문구
								$("#NickCheck").text("사용중인 닉네임입니다 :p");
								$("#NickCheck").css("color", "red");
								$("#join_submit").attr("disabled", true);
							} else {
								
								if(niJ.test(member_nickname)){
									// 0 : 닉네임 길이 / 문자열 검사
									$("#NickCheck").text("");
									$("#join_submit").attr("disabled", false);
						
								} else if(member_nickname == ""){
									
									$('#NickCheck').text('닉네임을 입력해주세요 :)');
									$('#NickCheck').css('color', 'red');
									$("#join_submit").attr("disabled", true);				
									
								} else {
									
									$('#NickCheck').text("닉네임은 영문과 숫자 3~12자리만 가능합니다 :)");
									$('#NickCheck').css('color', 'red');
									$("#join_submit").attr("disabled", true);
								}
								
							}
						}, 
					error : function() {
							console.log("실패");
					}
				});
			});
			
			$("#join_submit").click(function () {
				
				var member_id = document.getElementById("member_id").value;
				var member_pw = document.getElementById("member_pw").value;
				var member_pwck = document.getElementById("member_pwck").value;
				var member_phone = document.getElementById("member_phone").value;
				var member_name = document.getElementById("member_name").value;
				var member_nickname = document.getElementById("member_nickname").value;
			
				document.getElementById("user_id").value = member_id;
				document.getElementById("user_pw").value = member_pw;
				document.getElementById("user_phone").value = member_phone;
				document.getElementById("user_name").value = member_name;
				document.getElementById("user_nickname").value = member_nickname;
				
				document.getElementById("joinForm").submit();
				
			});
			
			
		});
		
		//회원가입
		/* function join_submit(){
			var member_id = document.getElementById("member_id").value;
			var member_pw = document.getElementById("member_pw").value;
			var member_pwck = document.getElementById("member_pwck").value;
			var member_phone = document.getElementById("member_phone").value;
			var member_name = document.getElementById("member_name").value;
			var member_nickname = document.getElementById("member_nickname").value;

			document.getElementById("user_id").value = member_id;
			document.getElementById("user_pw").value = member_pw;
			document.getElementById("user_phone").value = member_phone;
			document.getElementById("user_name").value = member_name;
			document.getElementById("user_nickname").value = member_nickname;
			
			if(member_pw==''||member_pw.length==0){
				alert("비밀번호를 입력해 주세요");
				return false;
				}else if(member_pw.length<=2||member_pw.length>=11){
					alert("비밀번호는 3~10글자 입니다");
					return false;
				}
			
			if(member_pw!=member_pwck){
				alert("동일한 비밀번호를 입력해 주세요");
				return false;
				}
			
			if(member_phone==''||member_phone.length==0){
				alert("전화번호를 입력해 주세요");
				return false;
				}

			if(member_name==''||member_name.length==0){
				alert("이름을 입력해 주세요");
				return false;
				}

			if(member_nickname==''||member_nickname.length==0){
				alert("닉네임을 입력해 주세요");
				return false;
				}else if(member_nickname.length<=2||member_nickname.length>=9){
					alert("닉네임은 3~8글자 입니다");
					return false;
				}
			
			document.getElementById("joinForm").submit();
			
		} */
		
		//아이디 중복 검사
		/* function CheckId(){
			$.ajax({
				url:"/member/CheckId",
				data:{
					member_id:$("#member_id").val()
					},
				success:function(data){
					if(data==1){
						$("#IdCheck").text("사용중인 아이디입니다");
						$("#IdCheck").css("color","red");
						$("#join_submit").attr("disabled", true);
					}else{
						if($("#member_id").val().length<=2||$("#member_id").val().length>=11){
							$("#IdCheck").text("아이디는 3~11글자 입니다");
							$("#IdCheck").css("color","red");
							$("#join_submit").attr("disabled", true);
						}else{
							$("#IdCheck").text("사용가능한 아이디입니다");
							$("#IdCheck").css("color","green");
							$("#join_submit").attr("disabled", false);
						}
					}
				},
				error:function(e){
					alert("통신 실패");
					console.log(e);
					}
			});
		} */
		
		//닉네임 중복 검사
		/* function CheckNickname(){
			$.ajax({
				url:"/member/CheckNickname",
				data:{
					member_nickname:$("#member_nickname").val()
					},
				success:function(data){
					if(data==1){
						$("#NicknameCheck").text("사용중인 닉네임입니다");
						$("#NicknameCheck").css("color","red");
						$("#join_submit").attr("disabled", true);
					}else{
						if($("#member_nickname").val().length<=2||$("#member_nickname").val().length>=9){
							$("#NicknameCheck").text("닉네임은 3~8글자 입니다");
							$("#NicknameCheck").css("color","red");
							$("#join_submit").attr("disabled", true);
						}else{
							$("#NicknameCheck").text("사용가능한 닉네임입니다");
							$("#NicknameCheck").css("color","green");
							$("#join_submit").attr("disabled", false);
						}
					}
				},
				error:function(e){
					alert("통신 실패");
					console.log(e);
					}
			});
		} */
	

		
	</script>
	
	<style type="text/css">
		#login_st{
    	margin-left: auto;
    	margin-right: auto;
    	margin: 0px auto;
    	}
    	
    	.btn_member{
    		display: flex;
    		justify-content: center;
    	}
	</style>
</head>
<body>
<div class="wrapper">
			<nav id="sidebar" class="sidebar js-sidebar">
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
										<span class="text-dark"><a href="/member/MemberLoginPage">Login</a><br></span>
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
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h2">Create account</h1>
						</div>
						</br>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<div class="mb-3">
										<label class="form-label">ID</label>
										<input class="form-control form-control-lg" type="text" name="member_id" id="member_id" placeholder="Enter your id" />
										<div class="check_font" id="IdCheck"></div>
									</div>
									<div class="mb-3">
										<label class="form-label">Password</label>
										<input class="form-control form-control-lg" type="password" name="member_pw" id="member_pw" placeholder="Enter your password" />
										<div class="check_font" id="PwCheck"></div>
									</div>
									<div class="mb-3">
										<input class="form-control form-control-lg" type="password" id="member_pwck" placeholder="Re-Enter your password" />
										<div class="check_font" id="PwckCheck"></div>
									</div>
									<div class="mb-3">
										<label class="form-label">Phone</label>
										<input class="form-control form-control-lg" type="text" id="member_phone" name="member_phone" placeholder="Enter your phone number" />
										<div class="check_font" id="PhoneCheck"></div>
									</div>
									<div class="mb-3">
										<label class="form-label">Name</label>
										<input class="form-control form-control-lg" type="text" id="member_name" name="member_name" placeholder="Enter your name" />
										<div class="check_font" id="NaCheck"></div>
									</div>
									<div class="mb-3">
										<label class="form-label">Nickname</label>
										<input class="form-control form-control-lg" type="text" id="member_nickname" name="member_nickname" placeholder="Enter your nickname" />
										<div class="check_font" id="NickCheck"></div>
									</div>
									<div>
										<a onclick="join_cancel()">cancel</a>&nbsp&nbsp
										<input type="button" id="join_submit" onclick="join_submit()" value="Sign up" class="btn btn-lg btn-primary">
									</div>
									
									<form action="/member/join" method="post" id="joinForm">
										<input type="hidden" name="member_id" id="user_id">
										<input type="hidden" name="member_pw" id="user_pw">
										<input type="hidden" name="member_phone" id="user_phone">
										<input type="hidden" name="member_name" id="user_name">
										<input type="hidden" name="member_nickname" id="user_nickname">
									</form>
								</div>
							</div>
						</div>
						<div class="btn_member">
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

</body>
</html>