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
	
	<%-- <c:set var="page" value="https://search.naver.com/search.naver"/> --%>
	<c:url value="https://search.naver.com/search.naver" var="page">
		<c:param name="query" value="국푸름"/>
	</c:url>
	
	<!-- set과 url의 차이는 파라미터를 보낼수있냐 없냐의 차이 -->
	<c:redirect url="${page }">
		<c:param name="query" value="류현진"/>
	</c:redirect>
	
</body>
</html>