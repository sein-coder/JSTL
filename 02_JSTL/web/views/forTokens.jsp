<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>forTokens태그</h3>
	<p>
		속성 : var, items, delims
	</p>
	
	<%
		String language = "자바,C,html,css,오라클,jsp,mybatis,spring";		
		request.setAttribute("lang", language);
	%>
	
	<c:forTokens var="l" items="${lang }" delims=",.">
		<c:out value="${l }"/><br>
	</c:forTokens>
	
</body>
</html>