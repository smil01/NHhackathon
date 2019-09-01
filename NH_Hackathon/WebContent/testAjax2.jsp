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
	<script type="text/javascript">
	$('document').ready(function(){
		getSelect1(true);  
	});
	
	function getSelect1(token) {
			$.ajax({
		        url: '/SelectService',
		        type: 'POST',
		        success: function(result){
		        	if(result == null){
		        		alert("실패");
		        	} else {
		        		alert("성공");
		        	}
		        }
			});
	}
	</script>
</body>
</html>