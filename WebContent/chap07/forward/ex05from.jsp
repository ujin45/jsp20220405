<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8");%>


<%
HashMap<String,String> o = new HashMap<>();
o.put("movie1","star");
o.put("movie2","sun");


request.setAttribute("movieMap", o);
%>


<jsp:forward page="ex05to.jsp"/>