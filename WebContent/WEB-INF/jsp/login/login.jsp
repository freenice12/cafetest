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

	<div align="center" class="body">
		<h2>로그인 화면</h2>
		<form:form modelAttribute="memberVo" method="post"
			action="../login/login.html">
			<spring:hasBindErrors name="memberVo">
				<font color="red"> <c:forEach items="${errors.globalErrors }"
						var="error">
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
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
</body>
</html>



