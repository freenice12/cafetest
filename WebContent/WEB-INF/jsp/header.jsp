<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header id="top" class="fluid">
	<div class="navbar navbar-inverse navbar-static-top"
			role="navigation" >

			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button"
					data-toggle="collapse" data-target=".bs-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div id="logo">
				<a href="../index/index.html"><img src="../images/cafe_logo.png"
					class="logo img-responsive"></a>
			</div>
			<nav class="collapse navbar-collapse bs-navbar-collapse"
				role="navigation">

				<ul class="nav navbar-nav">
					<li class="active"><a href="../index/index.html">홈으로</a></li>
					<li><a href="#">about</a></li>
					<li><a href="#">구매</a></li>
					<li><a href="#">체험</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">게시판 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">공지</a></li>
							<li><a href="#">FAQ</a></li>
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">체험후기</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-warning">Submit</button>
					<c:choose>
					
					<c:when test="${USER_KEY == null }">
					<font color="white">&nbsp;로그인을 해주세요.</font>
				
					</c:when>
					
					<c:when test="${USER_KEY != null }">
					<font color="white">&nbsp;환영해요,${USER_KEY.userEmail }님! 환영합니다.</font>
					</c:when>
					
					</c:choose>
					
				
				</form>
		
				<!-- <span id="loginButtons"><a href="../login/login.html"
					class="btn btn-primary login-button">로그인</a>
					<a href="../memberentry/memberEntry.html" class="btn btn-info member-button">회원가입</a></span> -->
			</nav>

		</div>
	
</header>
<hr>