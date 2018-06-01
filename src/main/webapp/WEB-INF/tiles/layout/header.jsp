<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Header -->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/tiles/main.do">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active">
      <li><a href="/tiles/group.do">모임</a></li>
                <li><a href="/tiles/meeting.do">정모</a></li>
                <li><a href="/tiles/meeting.do">공지사항</a></li>
                <li><a href="/tiles/signup.do">회원가입</a></li>
                <li><a data-toggle="modal" href="#myModal">로그인</a></li>
    </ul>
  </div>
</nav>

<!-- Trigger the modal with a button -->
<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="padding:35px 60px;">
        <h3><span class="glyphicon glyphicon-lock"></span> Login</h3>
      </div>
      <div class="modal-body" style="padding:40px 50px;">
        <form role="form">
          <div class="form-group">
            <label for="userid"><span class="glyphicon glyphicon-user"></span> UserId</label>
            <input type="text" class="form-control" id="userid" placeholder="Enter Id">
          </div>
          <div class="form-group">
            <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
            <input type="text" class="form-control" id="psw" placeholder="Enter Password">
          </div>
            <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> 로그인</button>
        </form>
      </div>
      <div class="modal-footer">
        <p style="text-align: center;">아직 회원이 아니신가요?</p>
        <button type="submit" id="signbtn" class="btn btn-danger btn-default pull-left" data-dismiss="modal"
        style="width: 498px; margin-left: 35px; margin-bottom: 20px;" >
        <span class="glyphicon glyphicon-remove"></span> 회원가입</button>
      </div>
    </div>
  </div>
</div>



