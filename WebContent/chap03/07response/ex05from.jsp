<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8");%>



<%

// 특수 기호나 한글은 나오지 않음.
//response.sendRedirect("ex05to.jsp?age=90&movie=doctor&actor=윤+여정");

String actorValue = java.net.URLEncoder.encode("윤+여정","utf-8");
response.sendRedirect("ex05to.jsp?age=90&movie=doctor&actor="+actorValue);


%>