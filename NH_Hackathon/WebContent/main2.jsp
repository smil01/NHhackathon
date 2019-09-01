<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>상담사 페이지</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor2/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
  <link href="vendor2/fontawesome-free/css/all.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/resume.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="./css/scroll.css" />
  <style type="text/css">
  	tr:hover {
		background-color: #dcdcdc;
	}
  </style>
</head>
<body id="page-top">

  <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
      <span class="d-block d-lg-none">Clarence Taylor</span>
      <span class="d-none d-lg-block">
        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/0.png" onclick="javascript:window.open('img/0.png','new','width=500,height=500,top=100,left=100');">
      </span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#experience">Team status</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#education">Team Settings</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#skills">Best Customers</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#skills2">Attention Customers</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="/service">Mode Change</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container-fluid p-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="about">
      <div class="w-100">
        <h1 class="mb-0">Yeongyun
          <span class="text-primary">Go</span>
        </h1>
        <div class="subheading mb-5">인터넷 상담 1부 · 1팀장 · (02) 234-0302 ·
          <a href="mailto:name@email.com">YePpeuni@gmail.com</a>
        </div>
        <p class="lead mb-5">오늘의 전달사항 : 온도상승으로 인한 불쾌지수가 상승하고 있습니다. 고객님과 상담사님들을 위하여 오해를 부를 수 있는 단어에 대하여 각별하게 주의 부탁드립니다.</p>
        <div class="social-icons">
          <a href="#">
            <i class="fab fa-linkedin-in"></i>
          </a>
          <a href="#">
            <i class="fab fa-github"></i>
          </a>
          <a href="#">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="#">
            <i class="fab fa-facebook-f"></i>
          </a>
        </div>
      </div>
    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex justify-content-center" id="experience">
      <div class="w-100">
        <h2 class="mb-5">인터넷 상담 1부  1팀 업무현황</h2>

        <div class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
          <div class="resume-content">
            <h3 class="mb-0">대리 이승경 <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/1.png" width="45" height="45" onclick="javascript:window.open('img/11.png','new','width=500,height=500,top=100,left=100');"></h3>
            <div class="subheading mb-3">&nbsp;&nbsp;&nbsp;상급 상담사</div>
 			<table class="table" style="text-align: center;">
 				<thead class="thead-dark">
					<tr>
	 					<th>번호</th>
	 					<th>유형</th>
	 					<th>분류</th>
	 					<th>긍/부정</th>
	 					<th>비속어</th>
	 					<th>처리상태</th>
					</tr>
 				</thead>
 				<tbody  id="select1">
 				
 				</tbody>
 			</table>
          </div>
          <div class="resume-date text-md-right">
            <span class="text-primary">31 March 1992</span>
          </div>
        </div>

        <div class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
          <div class="resume-content">
            <h3 class="mb-0">주임 정동윤 <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/2.png" width="45" height="45" onclick="javascript:window.open('img/22.png','new','width=500,height=500,top=100,left=100');"></h3>
            <div class="subheading mb-3">&nbsp;&nbsp;&nbsp;중급 상담사</div>
 			<table class="table" style="text-align: center;">
 				<thead class="thead-dark">
					<tr>
	 					<th>번호</th>
	 					<th>유형</th>
	 					<th>분류</th>
	 					<th>긍/부정</th>
	 					<th>비속어</th>
	 					<th>처리상태</th>
					</tr>
 				</thead>
 				<tbody id="select2">

 				</tbody>
 			</table>
          </div>
          <div class="resume-date text-md-right">
            <span class="text-primary">22 February 1992</span>
          </div>
        </div>

        <div class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
          <div class="resume-content">
            <h3 class="mb-0">사원 송승준  <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/3.jpg" width="45" height="45" onclick="javascript:window.open('img/33.jpg','new','width=500,height=500,top=100,left=100');"></h3>
            <div class="subheading mb-3">&nbsp;&nbsp;&nbsp;초급 상담사</div>
 			<table class="table" style="text-align: center;">
 				<thead class="thead-dark">
					<tr>
	 					<th>번호</th>
	 					<th>유형</th>
	 					<th>분류</th>
	 					<th>긍/부정</th>
	 					<th>비속어</th>
	 					<th>처리상태</th>
					</tr>
 				</thead>
 				<tbody id="select3">
 					
 				</tbody>
 			</table>
          </div>
          <div class="resume-date text-md-right">
            <span class="text-primary">5 February 1995</span>
          </div>
        </div>

        <div class="resume-item d-flex flex-column flex-md-row justify-content-between">
          <div class="resume-content">
            <h3 class="mb-0">위촉 오대근  <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/4.jpg" width="45" height="45" onclick="javascript:window.open('img/44.jpg','new','width=500,height=500,top=100,left=100');"></h3>
            <div class="subheading mb-3">&nbsp;&nbsp;&nbsp;전문 상담사</div>
 			<table class="table" style="text-align: center;">
 				<thead class="thead-dark">
					<tr>
	 					<th>번호</th>
	 					<th>유형</th>
	 					<th>분류</th>
	 					<th>긍/부정</th>
	 					<th>비속어</th>
	 					<th>처리상태</th>
					</tr>
 				</thead>
 				<tbody  id="select4">
 					
 				</tbody>
 			</table>
          </div>
          <div class="resume-date text-md-right">
            <span class="text-primary">2 March 1992</span>
          </div>
        </div>

      </div>

    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="education">
      <div class="w-100">
        <h2 class="mb-5">인터넷 상담 1부 1팀 업무설정</h2>

        <div class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
          <div class="resume-content">
            <h3 class="mb-0">긍/부정 단계별 우선분배 설정</h3>
            <p class="lead mb-5">&nbsp;설정에 따라서 업무가 우선 분배되며, 해당 상담사의 상태가 업무혼잡 또는 공석시에는 연차순으로 순차적으로 배분됩니다.</p>
 			<form id="setting" name="setting">
 			<table class="table" style="text-align: center; width: 70%; margin-left: 50px">
 				<thead>
					<tr>
	 					<th>긍/부정(단계)</th>
	 					<th>상담사 등급</th>
					</tr>
 				</thead>
 				<tr>
 					<td>1 (부정 5단계)</td>
 					<td>
 						<select class="form-control" id="lv1" name="lv1">
							<option value="전문">전문 상담사</option>
							<option value="상급">상급 상담사</option>
							<option value="중급">중급 상담사</option>
							<option value="초급">초급 상담사</option>
						</select>
 					</td>
 				</tr>
 				<tr>
 					<td>2 (부정 4단계)</td>
 					<td>
 						<select class="form-control" id="lv2" name="lv2">
							<option value="전문">전문 상담사</option>
							<option value="상급">상급 상담사</option>
							<option value="중급">중급 상담사</option>
							<option value="초급">초급 상담사</option>
						</select>
 					</td>
 				</tr>
 				<tr>
 					<td>3 (부정 3단계)</td>
 					<td>
 						<select class="form-control" id="lv3" name="lv3">
							<option value="전문">전문 상담사</option>
							<option value="상급">상급 상담사</option>
							<option value="중급">중급 상담사</option>
							<option value="초급">초급 상담사</option>
						</select>
 					</td>
 				</tr>
 				<tr>
 					<td>4 (부정 2단계)</td>
 					<td>
 						<select class="form-control" id="lv4" name="lv4">
							<option value="전문">전문 상담사</option>
							<option value="상급">상급 상담사</option>
							<option value="중급">중급 상담사</option>
							<option value="초급">초급 상담사</option>
						</select>
 					</td>
 				</tr>
 				<tr>
 					<td>5 (부정 1단계)</td>
 					<td>
 						<select class="form-control" id="lv5" name="lv5">
							<option value="전문">전문 상담사</option>
							<option value="상급">상급 상담사</option>
							<option value="중급">중급 상담사</option>
							<option value="초급">초급 상담사</option>
						</select>
 					</td>
 				</tr>
 				<tr>
 					<td>6 (긍정 1단계)</td>
 					<td>
 						<select class="form-control" id="lv6" name="lv6">
							<option value="전문">전문 상담사</option>
							<option value="상급">상급 상담사</option>
							<option value="중급">중급 상담사</option>
							<option value="초급">초급 상담사</option>
						</select>
 					</td>
 				</tr>
 				<tr>
 					<td>7 (긍정 2단계)</td>
 					<td>
 						<select class="form-control" id="lv7" name="lv7">
							<option value="전문">전문 상담사</option>
							<option value="상급">상급 상담사</option>
							<option value="중급">중급 상담사</option>
							<option value="초급">초급 상담사</option>
						</select>
 					</td>
 				</tr>
 				<tr>
 					<td>8 (긍정 3단계)</td>
 					<td>
 						<select class="form-control" id="lv8" name="lv8">
							<option value="전문">전문 상담사</option>
							<option value="상급">상급 상담사</option>
							<option value="중급">중급 상담사</option>
							<option value="초급">초급 상담사</option>
						</select>
 					</td>
 				</tr>
 				<tr>
 					<td>9 (긍정 4단계)</td>
 					<td>
 						<select class="form-control" id="lv9" name="lv9">
							<option value="전문">전문 상담사</option>
							<option value="상급">상급 상담사</option>
							<option value="중급">중급 상담사</option>
							<option value="초급">초급 상담사</option>
						</select>
 					</td>
 				</tr>
 				<tr>
 					<td>10 (긍정 5단계)</td>
 					<td>
 						<select class="form-control" id="lv10" name="lv10">
							<option value="전문">전문 상담사</option>
							<option value="상급">상급 상담사</option>
							<option value="중급">중급 상담사</option>
							<option value="초급">초급 상담사</option>
						</select>
 					</td>
 				</tr>
 				<tr>
 					<td colspan="2">
 						<input type="button" class="btn btn-primary" id="setting_btn" name="setting_btn" value="설정">
 					</td>
 				</tr>
 				<tfoot>
 				</tfoot>
 			</table>
 			</form>
          </div>
          <div class="resume-date text-md-right">
            <span class="text-primary">September 2019</span>
          </div>
        </div>

      </div>
    </section>

    <hr class="m-0">


    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="skills">
      <div class="w-100">
       <h2 class="mb-5">긍정고객 리스트</h2>
        <div class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
          	<div class="resume-content">
        		<h3 class="mb-0">&nbsp;&nbsp;긍적적인 단어 사용으로 행복을 주는 고객 리스트</h3>
        		 <p class="lead mb-5">&nbsp;&nbsp;&nbsp;&nbsp;조금 더 밝은 단어로 고객님의 민원을 처리하여 주세요.<br>(긍부정 전체 합계 1위부터 10위를 표시하며, 긍부정 단계 합은 높을 수록 긍정적인 고객님 이십니다.)</p>
 			<table class="table" style="text-align: center;">
 				<thead class="thead-dark">
					<tr>
	 					<th>회원명</th>
	 					<th>연락처</th>
	 					<th>긍지수(총합)</th>
	 					<th>비속어(총합)</th>
					</tr>
 				</thead>
 				<tbody id="trank2">
					
 				</tbody>
 			</table>
        	</div>
	        <div class="resume-date text-md-right">
	            <span class="text-primary">September 2019 </span>
	        </div>
        </div>
      </div>
    </section>
  </div>
    
       <hr class="m-0">


    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="skills2">
      <div class="w-100">
       <h2 class="mb-5">관심고객 리스트</h2>
        <div class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
          	<div class="resume-content">
        		<h3 class="mb-0">&nbsp;&nbsp;잦은 비속어 사용으로 주의 필요 고객 리스트</h3>
        		 <p class="lead mb-5">&nbsp;&nbsp;&nbsp;&nbsp;해당 고객의 민원 발생 시 전문 상담사에게 우선배분 할 것을 권장합니다.<br>(비속어 전체 합계 1위부터 10위를 표시하며, 긍/부정 단계는 낮을 수록 심각한 상태입니다.)</p>
 			<table class="table" style="text-align: center;">
 				<thead class="thead-dark">
					<tr>
	 					<th>회원명</th>
	 					<th>연락처</th>
	 					<th>비속어(총합)</th>
	 					<th>부정지수(평균)</th>
					</tr>
 				</thead>
 				<tbody id="trank">
					
 				</tbody>
 			</table>
        	</div>
	        <div class="resume-date text-md-right">
	            <span class="text-primary">September 2019 </span>
	        </div>
        </div>
      </div>
    </section>
  


  <!-- Modal -->
  <div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" >
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" id="modal_title"></h4>
		  <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <form id="target" name="target" method="post">
        <div class="modal-body">
	          <table class="table" id="modal_table">
	          	<tr>
	          		<td width="20%">
	          			<p class="text-muted mb-0" align="center">상태</p>
	          		</td>
	          		<td width="80%">
						<select class="was-validated custom-select" id="modal_state" name="modal_state">
						    <option value="0">접수중</option>
						    <option value="1">처리중</option>
						    <option value="2">완료</option>
						</select>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td width="20%">
	          			<p class="text-muted mb-0" align="center">시간</p>
	          		</td>
	          		<td width="80%">
						<input type="text" class="form-control" id="modal_time" name="modal_time">
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<p class="text-muted mb-0" align="center">작성자</p>
	          		</td>
	          		<td>
	          			 <input type="text" class="form-control" id="modal_writer" name="modal_writer">
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
	          			 <input type="text" class="form-control" id="modal_number" name="modal_number">
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			<p class="text-muted mb-0" align="center">이메일</p>
	          		</td>
	          		<td>
	          			 <input type="email" class="form-control" id="modal_email" name="modal_email">
	          		</td>
	          	</tr>
	          	<tr>
	          		<td width="20%">
	          			<p class="text-muted mb-0" align="center">고객유형</p>
	          		</td>
	          		<td width="80%">
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
	          			 <textarea class="form-control" rows="4" maxlength="300" id="temp_content1" name="temp_content1"></textarea>
	          			 <textarea class="form-control" rows="4" maxlength="300" id="temp_content2" name="temp_content2" style="display: none;"></textarea>
	          		</td>
	          	</tr>
	          	<tr>
	          		<td>
	          			 <p class="text-muted mb-0" align="center">상담 답변</p>
	          		</td>
	          		<td align="left">
	          			 <textarea class="form-control" rows="5" maxlength="300" id="modal_ripple" name="modal_ripple"  placeholder="아직 아무런 답변이 입력되있지 않습니다." style="margin-bottom: 0px;"></textarea>
	          		</td>
	          	</tr>
	          </table>
        </div>
        </form>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="change_btn" onclick="update()">업무 처리</button>&nbsp;
          <button type="button" class="btn btn-danger" id="change_btn" onclick="textareaChange()">필터링 해체</button>&nbsp;
          <button type="button" class="btn btn-info" data-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor2/jquery/jquery.min.js"></script>
  <script src="vendor2/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor2/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/resume.min.js"></script>
  
  
  
<script type="text/javascript">	
	$('document').ready(function(){
		 getSetting(false);
		 getRank(false);
		 getSelect(false);
		 
		 
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
	
	function getRank(token) {
		$.ajax({
	        url: '/RankService',
	        success: function(result){
	        	if(result == null){
	        		alert("실패");
	        	} else {  
	        		if(token){
	        			$('#trank').empty();
	        			$('#trank2').empty();
	        		}
	        		
	        		for(var i = 0; i < result[0].size; i++){
	        			var temp = JSON.parse(result[0][i]);
	        			$('#trank').append("<tr><td>" + temp.writer + "</td><td>" + temp.phone + "</td><td>" + temp.count + "</td><td>" + temp.lv + "</td></tr>");
	        		}
	        		
	        		for(var i = 0; i < result[1].size; i++){
	        			var temp = JSON.parse(result[1][i]);
	        			$('#trank2').append("<tr><td>" + temp.writer + "</td><td>" + temp.phone + "</td><td>" + temp.lv + "</td><td>" + temp.count + "</td></tr>");
	        		}
	        	}
	        }
		});
	}
	
	/* getSelect1는 그냥 반복문으로 작업 할 수 있기는 하지만 상황에 따라서 테이블이 아닌 개별 UI로 표시해주려고 일단 1~4로 분리해둠 */
	var selectList = new Array();
	function getSelect(token) {
		$.ajax({
	        url: '/SelectService',
	        type: 'POST',
	        success: function(result){
	        	if(result == null){
	        		alert("실패");
	        	} else {
	        		getSelect1(token, result[0]);
	        		getSelect2(token, result[1]);
	        		getSelect3(token, result[2]);
	        		getSelect4(token, result[3]);
	        	}
	        }
		});
	}
	
	function getSelect1(token, result) {
		if(token){
			$('#select1').empty();
		}
		selectList[0] = result;
		for(var i = 0; i < result.size; i++){
			var temp = JSON.parse(result[i]);
			$('#select1').append("<tr><td onClick='showWindow(0, "+ i +")'>" + temp.num + "</td><td onClick='showWindow(0, "+ i +")'>" + (temp.category1=="1"?"개인":"기업") + "</td><td onClick='showWindow(0, "+ i +")'>" + (temp.category2=="1"?"서비스 불편사항":temp.category2=="2"?"거래 불편사항":temp.category2=="3"?"전산 오류":"기타") + "</td><td onClick='showWindow(0, "+ i +")'>" + temp.lv + "</td><td onClick='showWindow(0, "+ i +")'>" + temp.count + "</td><td onClick='showWindow(0, "+ i +")'>" + (temp.state=="0"?"접수중":temp.state=="1"?"처리중":"완료") +"</td></tr>");
		}
		if(result.size == 0) {
			$('#select1').append("<tr><td colspan='6'><b>현재 이승경 상담사님은 배당 된 상담이 없습니다.</b></td></tr>");
		}
	}
	
	function getSelect2(token, result) {
		if(token){
			$('#select2').empty();
		}
		selectList[1] = result;
		for(var i = 0; i < result.size; i++){
			var temp = JSON.parse(result[i]);
			$('#select2').append("<tr><td onClick='showWindow(1, "+ i +")'>" + temp.num + "</td><td onClick='showWindow(1, "+ i +")'>" + (temp.category1=="1"?"개인":"기업") + "</td><td onClick='showWindow(1, "+ i +")'>" + (temp.category2=="1"?"서비스 불편사항":temp.category2=="2"?"거래 불편사항":temp.category2=="3"?"전산 오류":"기타") + "</td><td onClick='showWindow(1, "+ i +")'>" + temp.lv + "</td><td onClick='showWindow(1, "+ i +")'>" + temp.count + "</td><td onClick='showWindow(1, "+ i +")'>" + (temp.state=="0"?"접수중":temp.state=="1"?"처리중":"완료") +"</td></tr>");
		}
		if(result.size == 0) {
			$('#select2').append("<tr><td colspan='6'><b>현재 정동윤 상담사님은 배당 된 상담이 없습니다.</b></td></tr>");
		}
	}
	
	function getSelect3(token, result) {
		if(token){
			$('#select3').empty();
		}
		selectList[2] = result;
		for(var i = 0; i < result.size; i++){
			var temp = JSON.parse(result[i]);
			$('#select3').append("<tr><td onClick='showWindow(2, "+ i +")'>" + temp.num + "</td><td onClick='showWindow(2, "+ i +")'>" + (temp.category1=="1"?"개인":"기업") + "</td><td onClick='showWindow(2, "+ i +")'>" + (temp.category2=="1"?"서비스 불편사항":temp.category2=="2"?"거래 불편사항":temp.category2=="3"?"전산 오류":"기타") + "</td><td onClick='showWindow(2, "+ i +")'>" + temp.lv + "</td><td onClick='showWindow(2, "+ i +")'>" + temp.count + "</td><td onClick='showWindow(2, "+ i +")'>" + (temp.state=="0"?"접수중":temp.state=="1"?"처리중":"완료") +"</td></tr>");
		}
		if(result.size == 0) {
			$('#select3').append("<tr><td colspan='6'><b>현재 송승준 상담사님은 배당 된 상담이 없습니다.</b></td></tr>");
		}
	}
	
	function getSelect4(token, result) {
		if(token){
			$('#select4').empty();
		}
		selectList[3] = result;
		for(var i = 0; i < result.size; i++){
			var temp = JSON.parse(result[i]);			
			$('#select4').append("<tr><td onClick='showWindow(3, "+ i +")'>" + temp.num + "</td><td onClick='showWindow(3, "+ i +")'>" + (temp.category1=="1"?"개인":"기업") + "</td><td onClick='showWindow(3, "+ i +")'>" + (temp.category2=="1"?"서비스 불편사항":temp.category2=="2"?"거래 불편사항":temp.category2=="3"?"전산 오류":"기타") + "</td><td onClick='showWindow(3, "+ i +")'>" + temp.lv + "</td><td onClick='showWindow(3, "+ i +")'>" + temp.count + "</td><td onClick='showWindow(3, "+ i +")'>" + (temp.state=="0"?"접수중":temp.state=="1"?"처리중":"완료") +"</td></tr>");
		}
		if(result.size == 0) {
			$('#select4').append("<tr><td colspan='6'><b>현재 오대근 상담사님은 배당 된 상담이 없습니다.</b></td></tr>");
		}
	}
	
	
	function showWindow(index, i) {
		var obj = JSON.parse(selectList[index][i]);

		$("#modal_title").html("<img src='./img/logo2.png' width='30px' height='30px'> 상담번호 : " + obj.num);
		$("#modal_state").val(obj.state).prop("selected", true);
		$("#modal_time").val(obj.time);
		$('#modal_writer').val(obj.writer);
		$('#modal_num').val(obj.num);
		$('#modal_id').val(obj.id);
		$('#modal_lv').val(obj.lv);
		$('#modal_count').val(obj.count);
		$("#modal_content").val(obj.content);
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
  	
  	function update() {
		 var queryString = $("form[name=target]").serialize();
		 
			$.ajax({
		        url: '/UpdateService',
	            data : queryString,
	            dataType : 'text',
		        type: 'POST',
		        success: function(result){
		        	if(result == null){
		        		alert("실패");
		        	} else {		        		
		        		alert(result);
		        	}
		        }
			});
	}
	
/*	setInterval(function(){
		getRank(true);
		getSelect(true);
	}, 15000);*/
</script>
</body>

</html>