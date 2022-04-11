<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8");%>

<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	
	if (name != null && value != null){
		application.setAttribute(name,value);
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

	<h1>application 속성 지정</h1>
	
	<%
	if (name != null && value != null){
	%>
	application 기본 객체의 속성 설정:
	<%= name %> = <%= value %>
	
	
<%
	}else{
%>
	application 기본 객체의 속성 설정 안 함 
		
<%
	}
%>		


</body>
</html>