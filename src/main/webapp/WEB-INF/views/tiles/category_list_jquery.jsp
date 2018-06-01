<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="json2.js"></script>
<script type="text/javascript" src="/ajax_category/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
var xhr;
//XMLHttpRequest 객체 생성하여 xhr에 할당
function createXhr(){
	if(window.ActiveXObject){
		xhr = new ActiveXObject("Microsoft.XMLHTTP");
	}else{
		xhr = new XMLHttpRequest();
	} 
}
//중분류 항목 조회 요청처리
function getSecond(){
	createXhr();
	//선택된 대분류의 value값을 조회
	var url = "controller?command=second_category&firstCategoryId="+$("#first_category").val();
	//처리를 요청
	xhr.onreadystatechange = getSecondCategory;
	xhr.open("GET", url, true);
	xhr.send(null);
}
//중분류 항목 조회 응답처리
function getSecondCategory(){
	
	if(xhr.readyState==4){
		if(xhr.status==200){
			var txt = xhr.responseText;
			var jsonData = JSON.parse(txt);
			//소분류 항목 삭제
			$("#third_category").empty().append("<option value='default'>소분류</option>");
			//테이블 삭제
			$("#thead").empty();
			$("#tbody").empty();
			
			//중분류 추가
			var str = "<option value='default'>중분류</option>";
			for(var i = 0; i<jsonData.length;i++){
				str = str+"<option value='"+jsonData[i].second_category_id+"'>"+ jsonData[i].second_category_name+"</option>";
			}
			//$("#second_category").html(str);
			//or
			$("#second_category").empty().append(str);
		}else{
			alert("중분류 요청처리 실패 : "+xhr.status+" - "+xhr.statusText);
		}
	} 
}
//소분류 항목 조회 요청처리
function getThird(){
	createXhr();
	//중분류 선택 value
	var url = "controller?command=third_category&secondCategoryId="+$("#second_category").val();
	xhr.onreadystatechange=getThirdCategory;
	xhr.open("GET",url, true);
	xhr.send(null);
}
//소분류 항목 조회 응답처리
function getThirdCategory(){
	if(xhr.readyState==4){
		if(xhr.status==200){
			var txt = xhr.responseText;
			var jsonData = JSON.parse(txt);
			//테이블 삭제
			$("#thead").empty();
			$("#tbody").empty();
			//추가
			var str = "<option value='default'>소분류</option>";
			
			for(var i=0;i<jsonData.length;i++){
				str = str +"<option value='"+jsonData[i].third_category_id+"'>"+jsonData[i].third_category_name+"</option>";
			}
			$("#third_category").html(str);
			//or
			//$("#third_category").empty().append(str);
		}else{
			alert("소분류 요청처리 실패 : "+xhr.status+" - "+xhr.statusText);
		}
	}
}
//상품 목록 조회 요청
function getProductList(){
	createXhr();
	var url = "controller?command=get_product_list&thirdCategoryId="+$("#third_category").val();
	xhr.onreadystatechange=getProductListByThirdCategory;
	xhr.open("GET",url, true);
	xhr.send(null);
}
function getProductListByThirdCategory(){
	if(xhr.readyState==4){
		if(xhr.status==200){
			var txt = xhr.responseText;
			var jsonData = JSON.parse(txt);			
			///*
			$("#thead").empty().append($("<tr>")
							.append($("<td>").text("제품ID"))
							.append($("<td>").text("제품명"))
							.append($("<td>").text("제조사"))
							.append($("<td>").text("제품가격")));
			
			$("#tbody").empty();
			for(i = 0; i<jsonData.length;i++){				
				$("#tbody").append(
					$("<tr>").append($("<td>").text(jsonData[i].productId))
								  .append($("<td>").text(jsonData[i].productName))
							  	  .append($("<td>").text(jsonData[i].productMaker))
							  	  .append($("<td>").text(jsonData[i].productPrice))
				 )
			}
			//*/
			////////////////html()이용////////////////////
			/*
			var theadStr = "<tr><td>제품ID</td><td>제품명</td><td>제조사</td><td>제품가격</td></tr>";
			var tbodyStr="";
			
			for(i = 0; i<jsonData.length;i++){
				
				tbodyStr = tbodyStr + "<tr><td>"+jsonData[i].productId+"</tr>";
				tbodyStr = tbodyStr + "<td>"+jsonData[i].productName+"</tr>";
				tbodyStr = tbodyStr + "<td>"+jsonData[i].productMaker+"</tr>";
				tbodyStr = tbodyStr + "<td>"+jsonData[i].productPrice+"</tr></tr>";
			}
			$("#thead").html(theadStr);
			$("#tbody").html(tbodyStr);
			*/
		}else{
			alert("제품조회 요청처리 실패 : "+xhr.status+" - "+xhr.statusText);
		}
	}
}

</script>
<style type="text/css">
table, th, td{
	border-collapse: collapse;
	border: 1px solid black;
	
}
table{
width:700px;
}
</style>
</head>
<body>
대분류 : 
<select name="first_category" id="first_category"  onChange="getSecond()">
<OPTION VALUE='DEFAULT'>대분류</OPTION>
<c:forEach var="fc" items="${requestScope.firstCategory }">
	<option value="${fc.first_category_id }">
		${fc.first_category_name  }
	</option>
</c:forEach>
</select>
중분류 : 
<SELECT id="second_category" onChange="getThird()">
	<OPTION VALUE='DEFAULT'>중분류</OPTION>
</SELECT>
소분류 : 
<SELECT id="third_category" onChange="getProductList()">
	<OPTION VALUE='DEFAULT'>소분류</OPTION>
</SELECT>
<p> 
<table>
	<thead id="thead"></thead>
	<tbody id="tbody"></tbody>
</table>
</body>
</html>










