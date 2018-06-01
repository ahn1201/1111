<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>이름을 제바알 정해주세요!!</title>

<!-- 부트스트랩 style 적용 -->
<style>

/* Remove the navbar's default margin-bottom and rounded borders */ 
.navbar {
  margin-bottom: 0;
  border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
  background-color: #f2f2f2;
  padding: 25px;
}

.carousel-inner img {
    width: 100%; /* Set width to 100% */
    margin: auto;
    min-height:200px;
}

/* Hide the carousel text when the screen is less than 600 pixels wide */
@media (max-width: 600px) {
  .carousel-caption {
    display: none; 
  }
}
/* 로그인 모달 스타일 */
modal-header, h4, .close {
background-color: #5cb85c;
color:white !important;
text-align: center;
font-size: 30px;
	}
.modal-footer {
background-color: #f9f9f9;
	}

#login-Modal-Footer {
    margin-top: 10px;
    text-align: right;
    width: 83%;
    margin: 10px auto;
    border-top: 1px solid #dfdfdf;
    padding: 26px 0;
    padding-bottom: 7px;
}
.modal-footer-desc button {
    float: right;
    position: relative;
    bottom: 6px;
    border-color: #67D8FF !important;
    color: #00beff !important;
    background-color: #fff !important;
}
.btn {
    border-radius: 3px;
    font-size: 13px;
    border-color: transparent;
    -webkit-appearance: none;
    outline: none !important;
    -webkit-transition: all 0.1s;
    -o-transition: all 0.1s;
    transition: all 0.1s;
}

/* 회원가입 스타일 */
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}
/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
/* 사이드 메뉴 스타일 */
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    right: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}


@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>

<script type="text/javascript">
/* model*/
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
 
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
 
}
//회원 가입이 되어 있지 않을 때
$(document).ready(function() {
	$("#signbtn").click(function() {
		location = "/tiles/signup.do";
	});
});
</script>

<div class="wrap">
	<!-- header -->
	<tiles:insertAttribute name="header" />
	<!-- body -->
	<tiles:insertAttribute name="body" />
	<!-- footer -->
	<tiles:insertAttribute name="footer" />
</div>
</body>
</html>