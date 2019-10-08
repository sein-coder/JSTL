<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>기본 날짜 표현</h3>
	<c:set var="now" value="<%= new java.util.Date() %>" />
	<p>
		날짜표현은 fmt:formatDate태그를 이용
		속성 : value, type
		value : 날짜값이 대입됨
		type : 날짜 표현방식을 결정(날짜, 시간, 둘다 중 결정하는 것)
	</p>
	
	<%-- <fmt:setLocale value="en_US"/> --%>
	<%-- <fmt:setLocale value="ja_JP"/> --%>
	
	<p>기본출력 : <fmt:formatDate value="${now }"/></p>
	<p>type time : <fmt:formatDate value="${now }" type="time"/></p>
	<p>type time : <fmt:formatDate value="${now }" type="both"/></p>
	
	<h3>패턴을 이용한 날짜출력</h3>
	<p>패턴1 : <fmt:formatDate value="${now }" pattern="yyyy년MM월dd일"/></p>
	<p>패턴2 : <fmt:formatDate value="${now }" pattern="E요일 a hh시 mm분 ss초"/></p>
	
	<h3>dateStyle속성</h3>
	<p>날짜에 대해 기본패턴을 정해놓은것을 사용</p>
	<p>default : <fmt:formatDate value="${now }" dateStyle="default"/></p>
	<p>short : <fmt:formatDate value="${now }" dateStyle="short"/></p>
	<p>long : <fmt:formatDate value="${now }" dateStyle="long"/></p>
	<p>full : <fmt:formatDate value="${now }" dateStyle="full"/></p>
	
	<h3>timeStyle속성</h3>
	<p>시간에 대해 기본패턴을 정해놓은 것</p>
	<p>short : <fmt:formatDate value="${now }" type="both" timeStyle="short"/></p>
	<p>medium : <fmt:formatDate value="${now }" type="both" timeStyle="medium"/></p>
	<p>long : <fmt:formatDate value="${now }" type="both" timeStyle="long"/></p>
	<p>full : <fmt:formatDate value="${now }" type="both" timeStyle="full"/></p>
	
	<h3>시간 timezone</h3>
	<fmt:timeZone value="GMT"> <!-- 타임존을 설정함으로써 런던시간 -->
		<fmt:formatDate value="${now }" type="both"/>
	</fmt:timeZone>
	
	<p>날짜를 출력하면 한글 -> locale을 기준으로 설정됨</p>
	<!-- 미국으로 할시 미국방식으로 런던시간이 출력된다. -->
	<fmt:setLocale value="en_US"/>
	<fmt:timeZone value="GMT"> <!-- 타임존을 설정함으로써 런던시간 -->
		<fmt:formatDate value="${now }" type="both"/>
	</fmt:timeZone>
	
	<h3>function태그 사용하기</h3> <!-- function라이브러리 추가하기 -->
	<c:set var="str" value="How are you?"/>
	<p>모든 문자를 대문자로 바꾸기 : ${fn:toUpperCase(str) }</p>
	<p>index번호 찾기 : ${fn:indexOf(str,"are") }</p>

</body>
</html>