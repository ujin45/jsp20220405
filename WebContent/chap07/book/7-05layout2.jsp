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


<table width="400" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="2"> <%--colspan : 열(가로) 합칠 개수  --%>
		<jsp:include page="top.jsp" flush="false"/>
		</td>
	</tr>
	<tr>
		<td width="100" valign="top">
		<jsp:include page="left.jsp" flush="false"/>
		</td>
		<td width="300" valign="top">
		<!-- 내용 부분 : 시작 -->
		이 부분은 layout2.jsp가 생성한다.  <br />
		레이아웃 2
		<br /><br /><br />
		<!-- 내용 부분 : 끝 -->
		</td>
	</tr>
	<tr>
		<td colspan="2"> 
			<jsp:include page="bottom.jsp" flush="false"/>
		</td>
	</tr>
</table>


</body>
</html>