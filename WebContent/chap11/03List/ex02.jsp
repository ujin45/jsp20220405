<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>


	<%
	
	List<String> list = new ArrayList<>();
	list.add("jimin");
	list.add("bts");
	
	List<Double> list2 = new ArrayList<>();
	list2.add(3.14);
	list2.add(9.999);
	list2.add(-0.1);
	
	pageContext.setAttribute("mylist", list);
	pageContext.setAttribute("yourlist", list2);

	
	%>


	<p>${mylist[0] }</p> <%-- jimin --%>
	<p>${mylist[1] }</p> <%--bts --%>
	<p>${yourlist[0] }</p>  <%-- 3.14 --%>
	<p>${yourlist[1] }</p> <%-- 9.999 --%>
	<p>${yourlist["2"] }</p> <%-- -0.1 --%>


	


</body>
</html>