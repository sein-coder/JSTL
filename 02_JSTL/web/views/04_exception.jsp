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
	<%
		String[] strs = null;
		request.setAttribute("strs", strs);
	%>
	
	<c:catch var="e">
		<h3>에러발생 전</h3>
		<%= strs[0] %>
		<h3>에러발생 후</h3>
	</c:catch>
	
	<h2>${e }</h2>
</body>
</html>