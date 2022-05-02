<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>첫번째 jsp 파일</h1>
	<c:if test="true">
		<p>hello</p>
	</c:if>

	<c:forEach begin="1" end="3" var="i">
		${i },
	</c:forEach>
	
	<br />
	
	
	<c:choose>
		<c:when test="true">
			hello
		</c:when>
		<c:when test="true">
			world
		</c:when>
		<c:otherwise>
			hi
		</c:otherwise>
	</c:choose>
	
	<br />
	
	<c:url value="/board">
		<c:param name="id" value="1"/>
	</c:url>
	
	<br />
	
	${true ? 'active' : '' }
	
	

	
</body>
</html>