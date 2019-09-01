<%@page import="com.ProblemsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>고객 페이지</title>

  <!-- Font Awesome Icons -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>

  <!-- Plugin CSS -->
  <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

  <!-- Theme CSS - Includes Bootstrap -->
  <link href="css/creative.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="./css/scroll.css" />
  <style type="text/css">
  	.table h5{
  		color: white;
  	}
  	.table td{
  		vertical-align: middle;
  	}
  	.table input {
		width: 100%;
		border-radius: 4px;
		padding-left: 10px;
		padding-right: 10px;
		color: #495057;
		font-size: 1rem;
	}
	#services th, td, a{
		color: white;
	}
	#services tr:hover{
		background-color: #FF8200;
	}
	.modal-footer button{
		background-color: #cccccc;
	}
	.modal-footer button:hover{
		background-color: #FF8200;
	}
  </style>
</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">NH Counseling</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto my-2 my-lg-0">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#top">Top</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about" id="img_link1">NH 상담신청</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#services">상담조회</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" data-toggle="modal" href="#" id="myModal2_a" onclick="showModal2()">고객정보</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/service2" id="myModal2_b">모드전환</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Masthead -->
  <header class="masthead">
    <div class="container h-100" id="top">
      <div class="row h-100 align-items-center justify-content-center text-center">
        <div class="col-lg-10 align-self-end">
          <h1 class="text-uppercase text-white font-weight-bold">NH 고객상담</h1>
          <hr class="divider my-4">
        </div>
        <div class="col-lg-8 align-self-baseline">
          <p class="text-white-75 font-weight-light mb-5">고객님의 고충을 소중하게 생각합니다.<br><small>(공지사항 : 짧은시간 프로젝트에 이해력을 높이기 위하여 사용자와 관리자 페이지를 통합하였습니다.)</small></p>
          <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about" id="img_link2"><h5 class="text-uppercase text-white font-weight-bold">상 담 신 청</h5></a>
        </div>
      </div>
    </div>
  </header>

  <!-- About Section -->
  <section class="page-section bg-primary" id="about">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 text-center">
          <h2 class="text-white mt-0">NH 상 담 신 청 서</h2>
          <hr class="divider light my-4">
          <form id="target" name="target" method="post">
	          <table class="table" id="on_table" style="display: none;">
	          	<tr>
	          		<td>
	          			<h5>작성자</h5>
	          		</td>
	          		<td>
	          			 <input type="text" id="writer" name="writer" value="${user.name}">
	          			 <input type="text" id="id" name="id" value="${user.id}" style="display: none;">
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<h5>연락처</h5>
	          		</td>
	          		<td>
	          			 <input type="text" id="number" name="number" value="${user.number}">
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<h5>이메일</h5>
	          		</td>
	          		<td>
	          			 <input type="email" id="email" name="email" value="${user.email}">
	          		</td>
	          	</tr>
	          	<tr>
	          		<td width="40%">
	          			<h5>고객유형</h5>
	          		</td>
	          		<td width="60%">
						<select class="was-validated custom-select" id="category1" name="category1">
						    <option value="0">개인/기업 선택</option>
						    <option value="1">개인</option>
						    <option value="2">기업</option>
						</select>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<h5>상담분류</h5>
	          		</td>
	          		<td>
						<select class="was-validated custom-select" id="category2" name="category2">
							<option value="0">상담분류 선택</option>
						    <option value="1">서비스 불편사항</option>
						    <option value="2">거래 불편사항</option>
						    <option value="3">전산 오류</option>
						    <option value="4">기 타</option>
						</select>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			 <h5>민원내용</h5>
	          		</td>
	          		<td align="left">
	          			 <textarea class="form-control" rows="10" maxlength="300" id="content" name="content"></textarea>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td colspan="2">
	          			<a class="btn btn-light btn-xl js-scroll-trigger" id="submit1" href="#about">상담보내기</a> 
	          			<a class="btn btn-light btn-xl js-scroll-trigger" id="clean1" href="#about">취소</a>
	          		</td>
	          	</tr>
	          </table>
          </form>
          <table class="table" id="off_table">
          	<tr>
          		<td>
          			<a id="img_link3" class="btn btn-light btn-xl js-scroll-trigger" href="#about">상담작성하기</a>
          		</td>
          	</tr>
          </table>
        </div>
      </div>
    </div>
  </section>

  <!-- Services Section -->
  <section class="page-section">
    <div class="container">
      <h2 class="text-center mt-0">At Your NH-Service</h2>
      <hr class="divider my-4">
      <div class="row">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-gem text-primary mb-4"></i>
            <h3 class="h4 mb-2">Sturdy Themes</h3>
            <p class="text-muted mb-0">Our Service are updated regularly to keep AI bug free!</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-laptop-code text-primary mb-4"></i>
            <h3 class="h4 mb-2">Up to Date</h3>
            <p class="text-muted mb-0">All AI-Model are kept current to keep things fresh.</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-globe text-primary mb-4"></i>
            <h3 class="h4 mb-2">Ready to Publish</h3>
            <p class="text-muted mb-0">You can use this NH-Service as is, or you can make changes!</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-heart text-primary mb-4"></i>
            <h3 class="h4 mb-2">Made with Love</h3>
            <p class="text-muted mb-0">Is it really NH-Counseling if it's not made with love?</p>
          </div>
        </div>
      </div>
    </div>
  </section>



  <!-- Call to Action Section -->
  <section class="page-section bg-dark text-white" id="services">
    <div class="container text-center">
      <h2 class="mb-4"><img src="./img/logo1.png" width="30px" height="50px"> 상담현황 확인</h2>
		<table class="table">
			<tr>
				<th>번호</th>
				<th>유형</th>
				<th>분류</th>
				<th>상태</th>
			</tr>
			<c:forEach var="dto" items="${list}" varStatus="status">
				<c:if test="${dto.writer eq user.name}">
				<tr>
					<td><a href="#services" onclick="showModal(${status.count-1})">${dto.num}</a></td>
					<td><a href="#services" onclick="showModal(${status.count-1})">${dto.category1 == "1" ? "개인" : "기업"}</a></td>
					<td><a href="#services" onclick="showModal(${status.count-1})">${dto.category2 == "1" ? "서비스 불편사항" : dto.category2 == "2" ? "거래 불편사항" : dto.category2 == "3" ? "전산 오류" : "미확인"}</a></td>
					<td><a href="#services" onclick="showModal(${status.count-1})">${dto.state == 0 ? "접수중" : dto.state == 1 ? "처리중" : "기타"}</a></td>
				</tr>
				</c:if>
			</c:forEach>
		</table>
    </div>
  </section>


  <!-- Footer -->
  <footer class="bg-light py-5">
    <div class="container">
      <div class="small text-center text-muted">Copyright &copy; 2019 - Team찰칵</div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/creative.min.js"></script>
<script type="text/javascript">
var list = new Array;
$('document').ready(function(){	
	<% ArrayList<ProblemsDTO> list = (ArrayList<ProblemsDTO>)request.getAttribute("list");%>
	<%if(list!=null)for(int i = 0; i < list.size(); i++) {%>
		list[<%=i%>] = <%=list.get(i)%>;
	<%}%>
	
	/* 필요함수 및 인스턴스 */
   var DebugPoint = "브라우저 개발자 디버그 모드용(지워도됨)";
   function displayOnOff() {
      if($('#on_table').css("display") != "table"){
    	   $('#on_table').attr('style', 'display:display');
    	   $('#off_table').attr('style', 'display:none');
      }
   }
   
   /* 초기화 */
    if("${msg}" != "null" && "${msg}" != "") {
	   alert("${msg}");
	   <%session.removeAttribute("msg");%>
   } 
   if("${link}" != "null" && "${link}" != "") {
	   document.location.href = "${link}";
	   <%session.removeAttribute("link");%>
   } 

   $('#img_link1').click(function() {
	   displayOnOff();
  });
  $('#img_link2').click(function() {
	  displayOnOff();
  });
  $('#img_link3').click(function() {
	  displayOnOff();
  });

  
  $('#submit1').click(function() {
	  var category1 = $("#category1 option:selected").val();
	  var category2 = $("#category2 option:selected").val();
	  var content = $("#content").val();
	  
	  if(category1 == "0"){
		  alert("고객 유형이 입력되지 않았습니다.");
		  $("#category1").focus();
	  } else if(category2 == "0"){
		  alert("상담분류가 입력되지 않았습니다.");
		  $("#category2").focus();
	  } else if(content == "" || content == null){
		  alert("상담내용가 입력되지 않았습니다.");
		  $("#content").focus();
	  } else if(confirm("상담을 신청합니다. 상담내용을 하셨나요?")){
		  $("#target").attr("action", "/UploadService");
		  $('#target').submit();
	  }
  });
  
  $('#clean1').click(function() {
	    $('#on_table').attr('style', 'display:none');
	    $('#off_table').attr('style', 'display:display');
  });

});
</script>

  <!-- Modal -->
  <div class="modal" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" id="modal_title"></h4>
		  <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body">
	          <table class="table" id="modal_table">
	          	<tr>
	          		<td width="40%">
	          			<p class="text-muted mb-0" align="center">상태</p>
	          		</td>
	          		<td width="60%">
						<select class="was-validated custom-select" id="modal_state" name="modal_state">
						    <option value="0">접수중</option>
						    <option value="1">처리중</option>
						    <option value="2">완료</option>
						</select>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td width="40%">
	          			<p class="text-muted mb-0" align="center">시간</p>
	          		</td>
	          		<td width="60%">
						<input type="text" id="modal_time" name="modal_time">
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<p class="text-muted mb-0" align="center">작성자</p>
	          		</td>
	          		<td>
	          			 <input type="text" id="modal_writer" name="modal_writer">
	          			 <input type="text" id="modal_num" name="modal_num" style="display: none;">
	          			 <input type="text" id="modal_id" name="modal_id" style="display: none;">
	          			 <input type="text" id="modal_lv" name="modal_lv" style="display: none;">
	          			 <input type="text" id="modal_count" name="modal_count" style="display: none;">
	          			 <input type="text" id="modal_content" name="modal_content" style="display: none;">
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<p class="text-muted mb-0" align="center">연락처</p>
	          		</td>
	          		<td>
	          			 <input type="text" id="modal_number" name="modal_number">
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<p class="text-muted mb-0" align="center">이메일</p>
	          		</td>
	          		<td>
	          			 <input type="email" id="modal_email" name="modal_email">
	          		</td>
	          	</tr>
	          	<tr>
	          		<td width="40%">
	          			<p class="text-muted mb-0" align="center">고객유형</p>
	          		</td>
	          		<td width="60%">
						<select class="was-validated custom-select" id="modal_category1" name="modal_category1">
						    <option value="0">개인/기업 선택</option>
						    <option value="1">개인</option>
						    <option value="2">기업</option>
						</select>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<p class="text-muted mb-0" align="center">상담분류</p>
	          		</td>
	          		<td>
						<select class="was-validated custom-select" id="modal_category2" name="modal_category2">
							<option value="0">상담분류 선택</option>
						    <option value="1">서비스 불편사항</option>
						    <option value="2">거래 불편사항</option>
						    <option value="3">전산 오류</option>
						    <option value="4">기 타</option>
						</select>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			 <p class="text-muted mb-0" align="center">민원내용</p>
	          		</td>
	          		<td align="left">
	          			 <textarea class="form-control" rows="10" maxlength="300" id="temp_content2" name="temp_content1"></textarea>
	          			 <textarea class="form-control" rows="10" maxlength="300" id="temp_content1" name="temp_content2" style="display: none;"></textarea>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			 <p class="text-muted mb-0" align="center">상담 답변</p>
	          		</td>
	          		<td align="left">
	          			 <textarea class="form-control" rows="10" maxlength="300" id="modal_ripple" name="modal_ripple"   placeholder="상담사의 답변을 기다리고 있습니다."></textarea>
	          		</td>
	          	</tr>
	          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" id="change_btn" onclick="textareaChange()" style="display: none;">필터링 해체</button>&nbsp;
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>

  <script type="text/javascript">
  	function showModal(i) {
    	var obj = list[i];
    	
		$("#modal_title").html("<img src='./img/logo2.png' width='30px' height='30px'> 상담번호 : " + obj.num);
		$("#modal_state").val(obj.state).prop("selected", true);
		$("#modal_time").val(obj.time);
		$('#modal_writer').val(obj.writer);
		$('#modal_num').val(obj.num);
		$('#modal_id').val(obj.id);
		$('#modal_lv').val(obj.lv);
		$('#modal_count').val(obj.count);
		$("#modal_content").text(obj.content);
		$('#modal_number').val(obj.number);
		$('#modal_email').val(obj.email);
		$("#modal_category1").val(obj.category1).prop("selected", true);
		$("#modal_category2").val(obj.category2).prop("selected", true);
		$("#temp_content1").text(obj.c_content);
		$("#temp_content2").text(obj.content);
		if(obj.ripple != "null"){
			$("#modal_ripple").html(obj.ripple);
		}
    	
  		$('#myModal').modal('show');
	}
  	
  	function textareaChange() {
  		if($('#temp_content2').css("display") != "block"){
  		    $('#temp_content1').attr('style', 'display:none');
  		    $('#temp_content2').attr('style', 'display:display');
  		    
  		    $('#change_btn').text('필터링 적용');
  	      } else {
    		$('#temp_content1').attr('style', 'display:display');
      		$('#temp_content2').attr('style', 'display:none');
      		
      		$('#change_btn').text('필터링 해체');
  	      }
	}
  </script>
  
  
  <!-- Modal -->
  <form id="target3" method="post" action="/UserService">
  <div class="modal" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" id="modal_title">사용자정보 수정</h4>
		  <button type="button" class="close" onclick="close2()">×</button>
        </div>
        <div class="modal-body">
	          <table class="table" id="modal_table">
	          	<tr>
	          		<td>
	          			<p class="text-muted mb-0" align="center">이름</p>
	          		</td>
	          		<td>
	          			 <input type="text" id="modal2_name" name="modal2_name" value="${user.name}" required>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<p class="text-muted mb-0" align="center">전화번호</p>
	          		</td>
	          		<td>
	          			 <input type="text" id="modal2_number" name="modal2_number" value="${user.number}" required>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<p class="text-muted mb-0" align="center">아이디</p>
	          		</td>
	          		<td>
	          			<input type="text" id="modal2_id" name="modal2_id" value="${user.id}" required>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<p class="text-muted mb-0" align="center">비밀번호</p>
	          		</td>
	          		<td>
	          			<input type="password" id="modal2_pw" name="modal2_pw" value="${user.pw}" required>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<p class="text-muted mb-0" align="center">email</p>
	          		</td>
	          		<td>
	          			 <input type="email" id="modal2_email" name="modal2_email" value="${user.email}" required>
	          		</td>
	          	</tr>
	          </table>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default">수정</button>
          <button type="button" class="btn btn-default" onclick="close2()">닫기</button>
        </div>
      </div>
      
    </div>
  </div>
  </form>
  <script type="text/javascript">
  	function showModal2() {
 		 $('#myModal2').modal('show');
  	}
  	
  	function close2() {
 		 $('#myModal2').modal("hide");
 	}
  </script>
</body>
</html>
