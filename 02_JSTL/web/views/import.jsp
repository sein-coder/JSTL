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
	<h2>import태그 활용하기</h2>
	<p>
		c:import jsp:include와 비슷한 기능을 하는 태그
		다른 페이지를 현재 페이지에 반영하는 것
		속성 : url -> 페이지 주소
			var -> 페이지를 저장하는 변수
		페이지 내에서 var를 호출하여 그 호출된 페이지를 반영
	</p>
	
	<%-- <jsp:include page="01_set_out.jsp"/> --%>
	<c:import url="01_set_out.jsp" var="set">
		<c:param name="title" value="parameter hehe!"/>
	</c:import>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	${set }
	
</body>
</html>