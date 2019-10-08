<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>파라미터${param.title }</h1>
	<h3>JSTL이용하여 출력하기</h3>
	<P>c:out태그를 이용하여 원하는 데이터를 페이지에 출력할 수 있음
		태그 속성 : value -> 출력될 값이 대입되는 곳
		value값으로는 문자형("",'') 리터럴값 || EL표현식이 가능
	</P>
	
	<c:out value="야호~ JSTL out태그다!"/><br>
	<h3><c:out value="태그안 사용가능?"/></h3>

	<c:out value="호호호호">이거는 적용돼?</c:out><br>
	<!-- c태그는 반드시 value값이 있어야만 한다. -->
	<!-- value값에 태그형식이 들어가면?? -->
	<c:out value="<h4>병민씨 힘내요!</h4>"/><br>
	
	<!-- value안의 값에 태그형식이 들어왔을때 태그로 보게 하려면?
	escapeXml속성을 활용 
		escapeXml = true || false
		true : html구문을 해석하지 않음
		false : html구문을 해석함.
	-->
	<c:out value="<h4>병민씨 힘내요!</h4>" escapeXml="true" /><br>
	<c:out value="<h4>병민씨 힘내요!</h4>" escapeXml="false" /><br>
		
	<h3>value속성에 EL표현식 사용</h3>
	<c:out value='${ "지섭씨 컴퓨터 언제와요?" }' /><br>
	<!-- 연산이 가능해짐 -->
	<c:out value='${10+20 }'/><br>
	<%
		int age = 19;
		request.setAttribute("age", age);
	%>
	<c:out value='${age+20 }'/><br>
	<c:out value='${age>20?"크넹":"작넹" }'/><br>
	<c:out value='${name }' default="문세준"/><br>
	
	<h3>변수생성하여 값을 대입할 수 있음</h3>
	<p>c:set -> page에서 활용하는 변수를 생성, 값대입가능
		속성 : var, value, target, property
		var -> 변수명, value="변수에 들어갈 값 (리터럴, EL)"
		set으로 설정한 변수는 EL로 출력함
	</p>
	
	<c:set var="com" value="지솝!콤터"/>
	${com eq "지솝" }<br>
	<!-- 객체값을 넣을수도 있음 -->
	<c:set var="p" value="<%= new java.util.Date() %>"/>
	${ p.date }<br>
	<!-- getDate라는 getter속성을 바로 가져온것 date라고만 써서 -->
	
	<!-- set으로 변수를 대입하면 기본 pageScope에 저장된다. -->
	<c:set var="age" value="19" scope="request"/>
	<c:set var="age" value="21" scope="session"/>
	<c:set var="age" value="51" scope="application"/>
	<p><c:out value="${ age }"/></p>
	<p><c:out value="${ applicationScope.age }"/></p>
	
	<!-- 저장된 변수 지우기 -->
	<p><c:remove var="age" scope="session"/></p>
	<p>지운후 출력</p>
	<p><c:out value="${age }"/></p>
	<p><c:out value="${sessionScope.age }"/></p>
	<p><c:out value="${applicationScope.age }"/></p>
	
</body>
</html>