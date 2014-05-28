<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../jsp/jsp_header.jsp"%>
</head>
<body>
	<form action="postcode_test.html" method="get">
		<table border="0">
			<tr>
				<td colspan="2" bgcolor="green">type the address of
					eupmyeondong which you would like to search</td>
			</tr>
			<tr>
				<td colspan="2"><input type="text" name="eupmyeondong"><input
					type="submit" value="search"></td>
			</tr>
			<tr>
				<td>zipcode</td>
				<td>default address</td>
			</tr>
			<c:forEach var="post" items="${postcode }">
				<tr>
					<td>${post.zipcode }</td>
					<td><a
						href="javascript:filladd('${post.zipcode }', '${post.sido } &nbsp; ${post.sigungu } &nbsp; ${post.eupmyeondong } &nbsp; ${post.ri} &nbsp; ${post.beonji} &nbsp; ${bldg } ')">${post.sido }
							&nbsp; ${post.sigungu } &nbsp; ${post.eupmyeondong } &nbsp;
							${post.ri} &nbsp; ${post.beonji} &nbsp; ${bldg } </a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>