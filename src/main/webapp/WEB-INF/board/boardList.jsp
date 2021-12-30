<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#regBtn').click(()=>{
			location.href="<c:url value='/register.do'/>";
		});
	});
</script>
</head>
<body>

	<div class="container">
		<h2>메인</h2>
		<div class="panel panel-default">
			<div class="panel-heading">Spring Web MVC 게시판 만들기
			<button id="regBtn" class="btn btn-xs pull-right btn-primary" >게시판 게시물 쓰기</button>
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>게시물 번호</th>
								<th>제목</th>
								<th>조회수</th>
								<th>등록자</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="vo" items="${list}">
						
							<tr>
								<td>${vo.idx }</td>
								<td><a href="${pageContext.request.contextPath}/get.do?bno=${vo.idx}">${vo.title }</a></td>
								<td>${vo.count }</td>
								<td>${vo.writer }</td>
								<td><fmt:formatDate value="${vo.indate}" pattern="yyyy-MM-dd"/></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="panel-footer">푸터</div>
		</div>
	</div>

</body>
</html>
