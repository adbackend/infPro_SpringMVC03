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
</head>
<body>

	<div class="container">
		<h2>Board Register</h2>
		<div class="panel panel-default">
			<div class="panel-heading">게시물 쓰기</div>
			<div class="panel-body">
			
				<form action="${pageContext.request.contextPath}/register.do" method="post">
					<div class="form-group">
						<label>Title</label> 
						<input type="text" class="form-control" name="title">
					</div>
					
					<div class="form-group">
						<label>Textarea</label> 
						<textarea rows="3" class="form-control" name="contents"></textarea>
					</div>
					
					<div class="form-group">
						<label>Writer</label> 
						<input type="text" class="form-control" name="writer">
						
					</div>
					
					
					<button type="submit" class="btn btn-default">등록</button>
					<button type="reset" class="btn btn-default">취소</button>
				</form>
				
			</div>
			<div class="panel-footer">footer</div>
		</div>
	</div>

</body>
</html>
