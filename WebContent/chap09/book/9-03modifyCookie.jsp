<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.URLEncoder"%>
<% request.setCharacterEncoding("utf-8");%>

<%
	Cookie[]cookies = request.getCookies();
	if (cookies != null && cookies.length > 0){
		for (int i=0; i<cookies.length; i++){
			if (cookies[i].getName().equals("name")){
				Cookie cookie = new Cookie("name",
				  URLEncoder.encode("JSP프로그래밍", "utf-8"));
				response.addCookie(cookie);
			}
		}
	}

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>

	<h1> 값 변경  </h1>
	
	name 쿠키의 값을 변경합니다. 


</body>
</html>