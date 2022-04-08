<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8");%>






<%

List<String> list = new ArrayList<>();
list.add("jimin");
list.add("rm");
list.add("jhope");

String o1 = "sunja";

request.setAttribute("job", o1);
request.setAttribute("job", "strange");
request.setAttribute("names", list);

%>

<jsp:forward page="ex06to.jsp"/>

