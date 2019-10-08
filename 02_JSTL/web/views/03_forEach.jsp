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
	<h2>반복문 처리하기</h2>
	<p>
		c:forEach태그를 이용해서 반복문 로직을 수행
		기본for문과, for each문을 모두 처리가능
		1. 리스트, 배열 for실행
		속성 : items, var, varStatus
		items -> 리스트, 배열을 대입하는 속성
		var -> 값을 보관하는 변수(0 ~ 마지막 인덱스까지 *한개씩)
		varStatus -> for문의 정보를 보관하는 객체!! 
					index, count 반복문의 처음, 끝
		2. basic for문 실행
		속성 : begin, end, var, step, varStatus
		begin -> 초기값(시작값)
		end -> 종료값
		var -> 변하는 수를 받는 값
		step -> 증감크기		
	</p>
	
	<h2>리스트/배열을 이용한 forEach태그</h2>
	<%
		String[] names = {"손현태","박성술술술","유연성","유지민","황준순"};
		request.setAttribute("names", names);
		
		java.util.List<jstl.model.vo.Board> list = new java.util.ArrayList();
		
		list.add(new jstl.model.vo.Board(1,"냉무","","유병승"));
		list.add(new jstl.model.vo.Board(2,"이제저녘","맛있게 드세요","손현태"));
		list.add(new jstl.model.vo.Board(3,"아 왜 안끝나?!","왜안끝나!","문세준"));
		list.add(new jstl.model.vo.Board(4,"비온당","개굴개굴","개구리왕눈이"));
		
		request.setAttribute("list", list);
	%>
	
	
	<table>
		<tr>
			<th>이름</th>
		</tr>
		<c:forEach var="name" items="${names }">
			<c:if test='${name eq "유연성" }'>
				<tr>
					<td>
						${name} 반장
					</td>
				</tr>
			</c:if>
			<c:if test='${name ne "유연성" }'>
				<tr>
					<td>
						${name}
					</td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
	
	<h3>게시판 출력하기</h3>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
		</tr>
		<c:forEach items="${list }" var="b" varStatus="v">
			${v.index } ${v.count }<br>
			<c:if test='${ v.first||v.last }'>
			<tr>
				<td><c:out value="${b.no}"/></td>
				<td><c:out value="${b.title}"/></td>
				<td><c:out value="${b.content}"/></td>
				<td><c:out value="${b.writer}"/></td>
			</tr>
			</c:if>
		</c:forEach>
	</table>
	
	<h3>기본 for문 사용하기</h3>
	<c:forEach begin="1" end="5" var="i" step="2">
		<h${i }>하하하하하하</h${i}>
	</c:forEach>
	
</body>
</html>