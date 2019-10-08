<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>기본숫자 표현하기</h3>
	<c:set var="numtest" value="1234501987"/>
	<c:set var="numtest2" value="19873000"/>
	<c:set var="numtest3" value="1"/>
	<c:set var="numtest4" value="124.546"/>
	
	<p>숫자 기본출력 <c:out value="${numtest }"/></p>
	<p>기본 fmt적용 <fmt:formatNumber value="${numtest }"/></p>
	formatNumber적용하면 자동으로 세자리수마다 , 로 구분(default)
	<p>groupingUsed속성 : 쉼표구분 속성</p>
	<p><fmt:formatNumber value="${numtest2 }" groupingUsed="true" /></p>
	<p><fmt:formatNumber value="${numtest2 }" groupingUsed="false" /></p>
	
	<h3>화폐표현하기</h3>
	<p>
		화폐는 기본적으로 톰캣에 locale값을 기준으로 자동설정됨.
		자동설정된 값을 currencySymbol속성으로 변경할 수 있음
		숫자를 화폐로 표시할때 type속성을 currency설정
	</p>
	
	<p>기본화폐출력 : <fmt:formatNumber value="${numtest2 }" type="currency"/></p>
	
	<p>톰캣설정 locale : <%=request.getLocale()%> / ${ pageContext.request.locale }</p>
	
	로케일변경하여 통화심볼을 변경해보자
	setLocale태그를 이용
	<fmt:setLocale value="en_US"/>
	
	<p>로케일 변경 후 화폐출력 : <fmt:formatNumber value="${numtest2 }" type="currency"/></p>
	
	<p>화폐 심볼 변경 : <fmt:formatNumber value="${numtest2 }" type="currency" currencySymbol="8^^8" /></p>
	
	<h3>퍼센트표시</h3>
	<p>type속성에 percent를 설정하면됨</p>
	value값이 0 ~ 1 까지 1 -> 100%, 정수 표현 가능
	<p>기본 퍼센트 표시 : <fmt:formatNumber value="${numtest3 }" type="percent" /></p>
	<p>퍼센트 표시 : <fmt:formatNumber value="${0.5 }" type="percent" /></p>
	<p>소수점 퍼센트 : <fmt:formatNumber value="${0.002 }" type="percent" pattern="0.00%" /></p>
	
	<h2>패턴에 의한 숫자표현</h2>
	<p>
		pattern속성에 지정된 표현식으로 설정하면 됨
		표현식 : 0,#
		0 : 자릿수와 그 자릿수에 해당하는 값이 없으면 0으로 표시
		# : 자릿수와 그 자릿수에 해당하는 값이 없으면 공란으로 표시
	</p>	
	
	<p>기본출력 : <fmt:formatNumber value="${numtest4 }"/></p>
	<p>패턴출력1 : <fmt:formatNumber value="${numtest4 }" pattern="0,00.00"/></p>
	<p>패턴출력2 : <fmt:formatNumber value="${numtest4 }" pattern="000,00.00000"/></p>
	<p>패턴출력3 : <fmt:formatNumber value="${numtest4 }" pattern="###,##.#####"/></p>
	<p>패턴출력4 : <fmt:formatNumber value="${123123.123123 }" pattern="###,##.#####"/></p>
	<p>패턴출력5 : <fmt:formatNumber value="${123123.123123 }" pattern="$^^$###,##.000000"/></p>
	
	<h3>소수점 표시</h3>
	<p>
		minFractionDigit : 최소소수점 자릿수
		maxFractionDigit : 최대소수점 자릿수
	</p>
	<p>최소소수점 자리 : <fmt:formatNumber value="${123.123456 }" minFractionDigits="5" pattern="#,###.####"/></p>
	<p>최소소수점 자리 : <fmt:formatNumber value="${123.123 }" maxFractionDigits="5" pattern="#,###.####"/></p>
	
	
	
</body>
</html>