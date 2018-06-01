<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
.container{
	width:1000px;
}

</style>

</head>
<body>
<div class="container">
<h1>모임 등록</h1>
<hr>
<form action="/mygroup/groupRegistration.do" method="post" class="form-horizontal">
	<div class="form-group">
		<label class="col-sm-2 control-label" for="group_id">작성자 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="u_id" name="u_id" value="${userid}" />
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="group_id">모임 이름 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="group_id" name="group_id" placeholder="모임 이름을 입력해주세요"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="theme">분 류 : </label>
		<div class="col-sm-6">
			<select type="text" class="form-control" id="theme" name="theme">
				<option>대분류</option>
				<option>문화예술</option>
				<option>음악</option>
				<option>여행</option>
				<option>음악</option>
			</select>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="location">정모 지역 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="location" name="location" placeholder="동 / 읍 / 면  입력해주세요"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="personnel">정 원 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="personnel" name="personnel" placeholder="정원 수 (ex: 1~20 사이 수 입력)"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="intro">소개글 : </label>
		<div class="col-sm-6">
			<textarea class="form-control" 
				id="intro" name="intro" placeholder="모임을 소개해주세요"></textarea>
		</div>
	</div>
	
	<!-- <div class="form-group">
		<label class="col-sm-2 control-label" for="file">첨부파일</label>
		<div class="col-sm-6">
		<input type="file" id="file" name="file" class="form-control" />
		</div>
	</div> -->
	
	<br>
	<div>
		<button class="btn btn-primary" style="width:100px; margin-left:300px;" id="Add">모임생성</button>
	</div>
	
</form>
</div>
</body>
</html>