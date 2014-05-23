<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
<title>로그인 완료화면</title>
</head>
<body>


	<div align="center" class="body">
		<h2>로그인 완료 화면</h2>
		환영해요,${USER_KEY.userEmail }님! 환영합니다.&nbsp;&nbsp;&nbsp; 
		<a href="../mypage">마이페이지</a>
		<a href="../login/logout.html">로그아웃</a>
<!-- 		<input type="submit" value="로그아웃"> -->
	
	</div>
	
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	
		<hr>
\${USER_KEY.userEmail } = ${USER_KEY.userEmail }
<hr>
</body>
</html>