<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	$(document).ready(()=>{
		$('#list').click(()=>{
			location.href='${pageContext.request.contextPath}/list.do';
		});
		
		$('#remove').click(()=>{
			location.href='${pageContext.request.contextPath}/remove.do?bno='+${board.idx};
		});
	});
</script>
</head>
<body>

	<div class="container">
		<h2>Board Modify Page</h2>
		<div class="panel panel-default">
			<div class="panel-heading">게시물 수정 페이지</div>
			<div class="panel-body">
				
				<form action="${pageContext.request.contextPath}/modify.do" method="post">
					<div class="form-group">
						<label>Bno</label> 
						<input type="text" class="form-control" name="idx" id="idx" value="${board.idx}" readonly="readonly">
					</div>

					<div class="form-group">
						<label>Title</label> 
						<input type="text" class="form-control" name="title" id="title" value="${board.title }">
					</div>
					
					<div class="form-group">
						<label>Textarea</label> 
						<textarea rows="3" class="form-control" name="contents">${board.contents }</textarea>
					</div>
					
					<div class="form-group">
						<label>Writer</label> 
						<input type="text" class="form-control" name="writer" value="${board.writer }" readonly="readonly">
						
					</div>
					
					
					<button type="submit" class="btn btn-primary">수정완료</button>
					<button id="remove" class="btn btn-danger">삭제</button>
					<button id="list" class="btn btn-info">목록</button>
				</form>
				
			</div>
			<div class="panel-footer">footer</div>
		</div>
	</div>

</body>
</html>
