<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>

	<h1>URL : 태그에 담아서 한번에 쓰면 된다.</h1>

	<c:url value ="https://www.naver.com" var="naverUrl" scope="page"></c:url>

	<br />
	

	<a href="${naverUrl }">naver.com</a>

	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat architecto voluptatum tempore inventore cupiditate! Eius sunt architecto in adipisci suscipit eos culpa dolor fuga veniam pariatur et consequatur voluptatum voluptatibus.</p>
	<p>Quisquam laboriosam ullam aliquam? Suscipit deleniti quasi aliquam excepturi voluptatem accusantium officia provident doloremque reprehenderit cum praesentium ullam nulla quo ab facilis a eligendi consequuntur adipisci dolores fuga nobis mollitia!</p>

	<a href="${naverUrl }">네이버</a>




</body>
</html>