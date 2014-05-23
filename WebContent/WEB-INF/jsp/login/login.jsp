<%@page import="utils.WebConstants"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>


<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
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
							<td><form:password path="userPasswd" cssClass="userPasswd" />
								<font color="red"><form:errors path="userPasswd" /></font></td>
							<td align="center"><input type="submit" value="로그인"></td>
							<td><a href="../userentryform/member.html">신규유저등록</a></td>
						</tr>

						<tr height="40px">

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



	<div>
		<%@ include file="/WEB-INF/jsp/header.jsp"%>
	</div>
	
	<hr>
\${USER_KEY.userEmail } = ${USER_KEY.userEmail }
<hr>

</body>
</html>



