<!doctype html>
<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Untitled Document</title>

<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- Bootstrap CDN css -->
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">


</head>

<body>

	<header id="top" class="navbar">
		<a href="login.html" class="btn btn-info">로그인</a><a href="member.html"
			class="btn btn-info">회원가입</a>
		<nav class="navbar navbar-inverse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">홈으로</a></li>
				<li><a href="#">Link</a></li>
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
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</nav>
	</header>
	<section class="container">
		<div id="cafeCarousel" class="carousel-slide">
			<ol>
				<li data-target="#cafeCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#cafeCarousel" data-slide-to="1"></li>
				<li data-target="#cafeCarousel" data-slide-to="2"></li>
				<li data-target="#cafeCarousel" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner">

				<div class="item active">
					<img src="../../../images/bg/sortingBeans.jpg" alt="intro"
						class="img-responsive" />
					<div class="carousel-caption">
						<h2>Cafe 4.0</h2>
						<p>
							세 명의 아름다운 젊은이와 어정쩡한 중년이 모여 커피향과 아름다운 체험을 모토로<br> 느낌있는 Cafe를
							만들었습니다.<br> 커피를 매개로 풍성한 맛과 향기가 있는 사람들의 어울림. Cafe 4.0으로 모십니다.
						</p>
					</div>
				</div>
				<div class="item">
					<img src="../../../images/bg/woodenBike.jpg" alt="woodenBike"
						class="img-responsive" />
					<div class="carousel-caption">
						<h2>나무 자전거</h2>
						<p>
							르완다에서도 자주 보기 어려운 나무 자전거입니다.<br> 넓지 않은 고산지대의 소로길에 운반수단으로
							적합하지요.<br> Cafe 4.0은 어린 소년의 저 꿈을 지원합니다.
						</p>
					</div>
				</div>
				<div class="item">
					<img src="../../../images/bg/pickingCoffeCherries.jpg" alt="cherryPicking"
						class="img-responsive" />
					<div class="carousel-caption">
						<h2>르완다</h2>
						<p>
							천개의 고원으로 유명한 아프리카 고산지 르완다~!<br> 르완다는 아프리카 대륙의 중부 내륙에 위친한 작은
							나라입니다.<br> 식민지배를 용이하게 하고 종족간 갈등 유도한 결과 내부 대립에 이어 참혹한 학살 이미지가
							강한 곳입니다.<br> 하지만, 요즘 르완다는 아프리카 대륙 전체에서도 치안이 잘 유지되는 곳입니다.<br>
							아울러 우리와 유사한 역사적 경험과 부족한 자원을 지혜로 극복하고 점점 아프리카에서 두각을 나타내는 곳이기도 합니다.
						</p>
					</div>
				</div>
				<div class="item">
					<img src="../../../images/bg/coffeParchments.jpg" alt="parchments"
						class="img-responsive" />
					<div class="carousel-caption">
						<h2>파치먼트 상태</h2>
						<p>
							커피는 나무에서 열매상태인 커피 체리를 따고,<br> 수세식 방식의 경우, 겉 껍질을 벗겨 워싱스테이션이란
							곳에서 씻고는 속 껍질 채로 말립니다.<br> 그 말린 콩을 '파치먼트'라고 하고, 르완다 워싱스테이션에서
							흔히 볼 수 있는 파치먼트를 말리고 있는 사진입니다.
						</p>

					</div>
				</div>
			</div>
			<a class="carousel-control left" href="#cafeCarousel"
				data-slide="prev"> <span class="icon-prev"></span>
			</a> <a class="carousel-control right" href="#cafeCarousel"
				data-slide="next"> <span class="icon-next"></span>
			</a>
		</div>
	</section>

	<!-- jQuery  -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<!-- Bootstrap CDN js -->
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>

</body>
</html>
