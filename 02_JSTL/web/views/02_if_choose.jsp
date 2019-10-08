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
	<h2>if문 사용하기</h2>
	<p>c:if태그를 이용하여 조건문을 사용할 수 있다. -> java의 if문
		속성 : var, test
		test : 조건절이 들어가는 속성(비교연산)
		var : test조건의 결과를 저장하는 변수
	</p>
	
	<% if(19<20) { %>
		<h4>19는 20보다 작다</h4>
	<% } %>
	
	<c:if test="${19<20}">
		<c:if test='${ "유병승" eq "병승" }'>
			<h4>19는 20보다 작다</h4>
		</c:if>
	</c:if>	
	
	${result }
	
	<% request.setCharacterEncoding("utf-8"); %>
	
	<h1>파라미터로 받아온 값 분기처리 하기</h1>
	<c:if test='${param.food eq "라면" }'>
		<h3>라면은 구공탄에 끓여야 제맛!!!</h3>
	</c:if>
	<c:if test='${param.food eq "족발" }'>
		<h3>돼지발 발발족족!!!</h3>
	</c:if>
	<c:if test='${param.food eq "치킨" }'>
		<h3>닭다리잡고 삐약삐약!!!</h3>
	</c:if>
	<c:if test='${param.food eq "햄벅" }'>
		<h3>버거킹짱!!!</h3>
	</c:if>
	
	<h3>choose문 활용하기</h3>
	<p>자바의 switch문과 비슷한 조건문
		c:choose
			c:when test = "조건문"
			c:otherwise
	</p>
	
	<c:choose>
		<c:when test='${param.food eq "라면" }'>
			<h3>choose문 구공탄라면!</h3>
		</c:when>
		<c:when test='${param.food eq "족발" }'>
			<h3>choose문 족발선택!</h3>
		</c:when>
		<c:otherwise>
			<h3>그런거 없슈!!!</h3>
		</c:otherwise>		
	</c:choose>
	
	<c:if test="${not empty list }">
		
	</c:if>
	
</body>
</html>