<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
  			
  			$('#modify').click(()=>{
  				var idx = $('#idx').val();
//   				location.href='${pageContext.request.contextPath}/modify.do?bno='+idx;
  				location.href='${pageContext.request.contextPath}/modify.do?bno='+${board.idx};
  			});
  		});
  </script>
</head>
<body>
 
<div class="container">
  <h2>Board Read</h2>
  <div class="panel panel-default">
    <div class="panel-heading">Panel Heading</div>
    <div class="panel-body">
		<div class="form-group">
			<label>Bno</label> 
			<input type="text" class="form-control" id="idx" name="idx" value="${board.idx }" readonly="readonly">
		</div>
		<div class="form-group">
			<label>Title</label> 
			<input type="text" class="form-control" name="title" value="${board.title }" readonly="readonly">
		</div>
					
		<div class="form-group">
			<label>Textarea</label> 
			<textarea rows="3" class="form-control" name="contents" readonly="readonly">${board.contents}</textarea>
		</div>
					
		<div class="form-group">
			<label>Writer</label> 
			<input type="text" class="form-control" name="writer" value="${board.writer}" readonly="readonly">
		</div>    	
    	
    	<button id="modify" class="btn btn-default">Modify</button>
    	<button id="list" class="btn btn-info">List</button>
    </div>
    <div class="panel-footer">footer</div>
  </div>
</div>

</body>
</html>
