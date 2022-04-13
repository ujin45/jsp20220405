<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="chap11.*" %>
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
Car c1 = new Car();
Car c2 = new Car();
List<String> o1 = new ArrayList<>();
o1.add("park");
o1.add("son");

List<String> o2 = new ArrayList<>();
o2.add("cha");
o2.add("lee");

c1.setOwners(o1);
c2.setOwners(o2);

pageContext.setAttribute("aCar", c1);
pageContext.setAttribute("bCar", c2);

%>


<p>${aCar.owners[1] }</p>
<p>${bCar.owners[0] }</p>
</body>
</html>