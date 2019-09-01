<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="vendor2/jquery/jquery.min.js"></script>
</head>
<body>
	<form id="setting" name="setting">
		<select id="lv1" name="lv1">
			<option value="전문">전문</option>
			<option value="상급">상급</option>
			<option value="중급">중급</option>
			<option value="하급">하급</option>
		</select><br>
		<select id="lv2" name="lv2">
			<option value="전문">전문</option>
			<option value="상급">상급</option>
			<option value="중급">중급</option>
			<option value="하급">하급</option>
		</select><br>
		<select id="lv3" name="lv3">
			<option value="전문">전문</option>
			<option value="상급">상급</option>
			<option value="중급">중급</option>
			<option value="초급">초급</option>
		</select><br>
		<select id="lv4" name="lv4">
			<option value="전문">전문</option>
			<option value="상급">상급</option>
			<option value="중급">중급</option>
			<option value="초급">초급</option>
		</select><br>
		<select id="lv5" name="lv5">
			<option value="전문">전문</option>
			<option value="상급">상급</option>
			<option value="중급">중급</option>
			<option value="초급">초급</option>
		</select><br>
		<select id="lv6" name="lv6">
			<option value="전문">전문</option>
			<option value="상급">상급</option>
			<option value="중급">중급</option>
			<option value="초급">초급</option>
		</select><br>
		<select id="lv7" name="lv7">
			<option value="전문">전문</option>
			<option value="상급">상급</option>
			<option value="중급">중급</option>
			<option value="초급">초급</option>
		</select><br>
		<select id="lv8" name="lv8">
			<option value="전문">전문</option>
			<option value="상급">상급</option>
			<option value="중급">중급</option>
			<option value="초급">초급</option>
		</select><br>
		<select id="lv9" name="lv9">
			<option value="전문">전문</option>
			<option value="상급">상급</option>
			<option value="중급">중급</option>
			<option value="초급">초급</option>
		</select><br>
		<select id="lv10" name="lv10">
			<option value="전문">전문</option>
			<option value="상급">상급</option>
			<option value="중급">중급</option>
			<option value="초급">초급</option>
		</select><br>
		<input type="button" id="setting_btn" name="setting_btn" value="설정">
	</form>
	
	<script type="text/javascript">
	$('document').ready(function(){
		 getSetting(false);
		 
		 
		 $('#setting_btn').click(function() {
			 getSetting(true);
		 });  
	});
	
	function getSetting(token) {
		 var queryString = null;
		 
		 if(token) {
			 queryString = $("form[name=setting]").serialize();
		 }
		 
			$.ajax({
		        url: '/SettingService',
	            data : queryString,
	            dataType : 'json',
		        type: 'POST',
		        success: function(result){
		        	if(result == null){
		        		alert("실패");
		        	} else {
		        		$("#lv1").val(result.lv1).attr("selected", true);
		        		$("#lv2").val(result.lv2).attr("selected", true);
		        		$("#lv3").val(result.lv3).attr("selected", true);
		        		$("#lv4").val(result.lv4).attr("selected", true);
		        		$("#lv5").val(result.lv5).attr("selected", true);
		        		$("#lv6").val(result.lv6).attr("selected", true);
		        		$("#lv7").val(result.lv7).attr("selected", true);
		        		$("#lv8").val(result.lv8).attr("selected", true);
		        		$("#lv9").val(result.lv9).attr("selected", true);
		        		$("#lv10").val(result.lv10).attr("selected", true);
		        		
		        		if(token) alert("설정을 완료하였습니다.");
		        	}
		        }
			});
	}
	</script>
</body>
</html>