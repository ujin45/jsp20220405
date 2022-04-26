<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	referrerpolicy="no-referrer"></script>

<script>
	$(document).ready(function() {
		$(".delete-button").click(function(e) {
			e.preventDefault(); // 진행이 더 되지 않도록 하는 메소드 

			if (confirm("삭제하시겠습니다??")) {
				$(this).closest("form").submit();
			}
		});
	});
</script>



<title>Insert title here</title>
</head>
<body>


	<h1>고객 명단</h1>

	<c:if test="${not empty param.success }">
		<c:if test="${param.success }">
			<div class="alert alert-success">삭제되었습니다.</div>
		</c:if>
	</c:if>

	<c:if test="${not param.success }">
		<c:if test="${param.success }">
			<div class="alert alert-danger">삭제하는 중에 문제가 발생하였습니다.</div>
		</c:if>
	</c:if>

	<table class="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>CITY</th>
				<th>COUNTRY</th>
				<th>POSTCODE</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${customerList }" var="cst">
				<tr>
					<td>${cst.id }</td>
					<td>${cst.name }</td>
					<td>${cst.city }</td>
					<td>${cst.country }</td>
					<td>${cst.postCode }</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- nav>ul.pagination>li.page-item*7>a.page-link  하나씩 나오게 하는 코드-->
	<!-- c:forEach 사용해서 간단하게 작성   -->
	<nav>
		<ul class="pagination justify-content-center">

			<!-- li.page-item>a.page-link>span{&laquo;} -->
			<c:if test="${prevPage >= 1 }">
				<li class="page-item">
					<a href="S14Servlet19?page=${prevPage }" class="page-link">
						<span>&laquo;</span>
					</a>
				</li>
			</c:if>

			<c:forEach begin="${startPage }" end="${endPage }" var="pageNum">
				<li class="page-item ${pageNum == currentPage ? 'active' : '' }">
					<a href="S14Servlet19?page=${pageNum }" class="page-link">${pageNum }</a>
				</li>
			</c:forEach>

			<!-- li.page-item>a.page-link>span{&raquo;} -->

			<c:if test="${endPage != lastPage }">
				<li class="page-item">
					<a href="S14Servlet19?page=${nextPage }" class="page-link">
						<span>&raquo;</span>
					</a>
				</li>
			</c:if>
		</ul>
	</nav>


</body>
</html>











