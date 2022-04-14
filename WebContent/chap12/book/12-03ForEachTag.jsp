<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>

	<%
	HashMap<String, Object> mapData = new HashMap<>();
	mapData.put("name","최범균");
	mapData.put("today", new java.util.Date());
	%>
	
	<c:set var="intArray" value="<%= new int[]{1,2,3,4,5} %>"/>
	<c:set var="map" value="<%= mapData %>"/>
	
	<h1> 1부터 100까지 홀수의 합 </h1>
	
	<c:set var="sum" value="0" />
	<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="sum" value="${sum + i }"/>
	</c:forEach>
	결과 = ${sum }
	
	<hr />
	
	<h1>구구단 : 4단</h1>
	
	<ul>
	<c:forEach var="i" begin="1" end="9">
		<li>4 * ${i } = ${4 * i }</li>
	</c:forEach>
	</ul>	
	
	<hr />
	
	<h1>int형 배열</h1>
	
	<c:forEach var="i" items="${intArray }" begin="2" end="4" varStatus="status">
		${status.index } - ${status.count } - [${i }] <br />
	</c:forEach>
	
	<hr />
	
	<h1>Map</h1>
	
	<c:forEach var="i" items="${map }">
		${i.key } = ${i.value } <br />
	</c:forEach>


</body>
</html>













