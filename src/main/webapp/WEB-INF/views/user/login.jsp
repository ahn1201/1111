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

<script type="text/javascript">

window.onload = function() {
	document.getElementById("cancel").onclick = function() {
		history.back(-1);
	};
};

</script>

</head>
<body>
<div class="container">
<h1>로그인</h1>
<hr>
<div>
<form action="/user/login.do" method="post" class="form-horizontal">
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_id">아이디 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_id" name="u_id" placeholder="id"/>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_pw">패스워드 : </label>
		<div class="col-sm-6">
			<input type="password" class="form-control" 
				id="u_pw" name="u_pw" placeholder="password"/>
		</div>
	</div>
		
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">		
			<input type="submit" id="login" class="btn btn-primary" value="로그인" method="post"/>
			<input type="reset" id="cancel"
				class="btn btn-danger" value="취소"/>
				
		</div>
	</div>
	</form>
	</div>
	</div>
</body>
</html>