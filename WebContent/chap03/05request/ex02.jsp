<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--https://search.naver.com/search.naver
?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=%ED%8C%8C%EC%B9%9C%EC%BD%94 --%>

<h1>요청파라미터 (request parameter)</h1>

<h3>?name=donald&age=30</h3>

<h3>name 파라미터 : <%= request.getParameter("name") %></h3>
<h3>age 파라미터 : <%= request.getParameter("age") %></h3>


</body>
</html>