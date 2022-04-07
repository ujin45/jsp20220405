<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    
<div>

	<%
	String startStr = request.getParameter("start");
	String endStr = request.getParameter("end");
	
	int start = Integer.parseInt(startStr);
	int end = Integer.parseInt(endStr);
	
	out.print("|");
	
	for (int i=start; i<=end; i++){
	%>
		<%-- page 1~30까지 링크로 넘어가게 태그 a 사용하여 i 리턴함 --%>
		<a href="#"><%= i %></a>		
		
	<%
	}	
	%>	


</div>