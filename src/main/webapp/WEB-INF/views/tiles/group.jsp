<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<div class="container"> 
    <select name="selOne" id="selOne" class="form-control" style="width: 130px;" >
        <option value selected>대분류</option>
        <option value="top01">문화예술</option>
        <option value="top02">음악</option>
        <option value="top03">여행</option>
        <option value="top04">스포츠</option>
        <option value="top05">외국어</option>
    </select>
    </div>
<div class="container"> 
    <select name="selTow" id="selTow" class="form-control" style="width: 130px;" >
        <option value selected>소분류</option>
    </select>
    </div>
    
    <form> </form>

<script type="text/javascript">
$(function() {
    $("select[name=selOne]").change(function() {
    	
    	var temp1 = $("select[name=selTow]");
        var cid1_val = $(this).val();
        temp1.children().remove();
        temp1.append('<option value selected>소분류</option>');
         
        if(cid1_val == 'top01') {
            temp1.append('<option value="top01_01">연극</option>');
            temp1.append('<option value="top01_02">사진</option>');
            temp1.append('<option value="top01_03">미술관</option>');
            temp1.append('<option value="top01_04">뮤지컬</option>');
 
        }
        else if(cid1_val == 'top02') {
        	temp1.append('<option value="top02_01">콘서트</option>');
        	temp1.append('<option value="top02_02">가요제</option>');
        	temp1.append('<option value="top02_03">악기</option>');
        	temp1.append('<option value="top02_04">작곡/작사</option>');
        }
        else if(cid1_val == 'top03') {
        	temp1.append('<option value="top03_01">국내여행</option>');
        	temp1.append('<option value="top03_02">일본</option>');
        	temp1.append('<option value="top03_03">중국</option>');
        	temp1.append('<option value="top03_04">동남아시아</option>');
         }
        else if(cid1_val == 'top04') {
        	temp1.append('<option value="top04_01">스키/보드</option>');
        	temp1.append('<option value="top04_02">야구</option>');
        	temp1.append('<option value="top04_03">검도</option>');
        	temp1.append('<option value="top04_04">등산/낚시</option>');
         }
        else if(cid1_val == 'top05') {
        	temp1.append('<option value="top05_01">영어</option>');
        	temp1.append('<option value="top05_02">일본어</option>');
        	temp1.append('<option value="top05_03">중국어</option>');
        	temp1.append('<option value="top05_04">스페인어</option>');
         }
    });
});

$(document).ready(function(){
    $("#selOne").on("change", function(){
        console.log($(this).find("option[value='" + $(this).val() + "']").text());
    });
});
$(document).ready(function(){
    $("#selTow").on("change", function(){
        console.log($(this).find("option[value='" + $(this).val() + "']").text());
    });
});

</script>