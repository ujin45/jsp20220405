<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="chap07.*"%>
<% request.setCharacterEncoding("utf-8");%>



<%

Car car1 = new Car();
car1.setName("kia");
car1.setPrice(500);

Car car2 = new Car();
car2.setName("hyundai");
car2.setPrice(700);

request.setAttribute("myCar",car1);
request.setAttribute("yourCar", car2);


%>



<jsp:forward page="ex09to.jsp"/>