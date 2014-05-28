<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<%@page import="utils.WebConstants"%><%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>
<title>로그인</title>
<!-- Bootstrap CDN css -->
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
</head>
<body>

	<div>
		<%@ include file="/WEB-INF/jsp/header.jsp"%>
	</div>
	
	
	<c:choose>
		<c:when test="${loginMemberVo.userEmail == null }">
			
			<div align="center" class="body">
				<form:form modelAttribute="memberVo" method="post"
					action="../login/login.html">
					<spring:hasBindErrors name="memberVo">
						<font color="red"> <c:forEach
								items="${errors.globalErrors }" var="error">
								<spring:message code="${error.code}" />
							</c:forEach>
						</font>
					</spring:hasBindErrors>

					<table>

						<tr height="40px">
							<td>유저Email</td>
							<td><form:input path="userEmail" cssClass="userEmail" /> <font
								color="red"><form:errors path="userEmail" /></font></td>
							<td>패스워드</td>
							<td><form:password path="userPasswd" cssClass="userPasswd" hint="Password"/>
								<font color="red"><form:errors path="userPasswd" /></font></td>
							<td align="center"><input type="submit" value="로그인" class="btn btn-primary login-button"></td>
							<td><a href="../memberentry/memberEntry.html" class="btn btn-info member-button">신규유저등록</a></td>
						</tr>

					</table>

				</form:form>
			</div>
		</c:when>

		<c:when test="${loginMemberVo.userEmail != null }">


					<table>

						 <tr height="40px">
							<td align="center">${loginMemberVo.userEmail }님이 접속됨</td>
							<td><a href="../userentryform/member.html">신규유저등록</a></td>
							<td><a href="../login/logout.html">로그아웃</a></td>
						</tr>

						<tr height="40px">

						</tr> 

					</table>

		</c:when>

	</c:choose>



	
	<hr>
\${USER_KEY.userEmail } = ${USER_KEY.userEmail }
<hr>

</body>
</html>


