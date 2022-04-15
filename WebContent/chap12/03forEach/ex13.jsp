<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>


	<%
	Map<String, String> map = new HashMap<>();
	map.put("movie", "thor");
	map.put("computer", "intel");
	map.put("book", "sql");
	map.put("lunch", "pizza");

	pageContext.setAttribute("maps", map);
	%>
	<ul>
	<c:forEach items="${maps }" var="item">
		<li>${item.key }:${item.value }</li>
	</c:forEach>
	</ul>

	<hr />

	<!-- table.table>thead>tr>th*2^^tbody>tr*4>td*2 -->
	<table class="table">
		<thead>
			<tr>
				<th>키</th>
				<th>값</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${maps }" var="item">
				<tr>
					<td>${item.key }</td>
					<td>${item.value }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>




