<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/styles.css">
  <title>Chat</title>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body class="body-chat" style="background-color: #a1c0d6;">
  <header class="top-header chat-header">
    <div class="header__top">
      <div class="header__column">
        <!-- plane icon -->
        <i class="fa fa-plane"></i>

        <!-- wifi icon -->
        <i class="fa fa-wifi"></i>

      </div>
      <div class="header__column">
        <span class="header__time">18:00</span>
      </div>
      <div class="header__column">
        <!-- moon icon -->
        <i class="fa fa-moon-o"></i>

        <!-- blue icon -->
        <i class="fa fa-bluetooth-b"></i>

        <span class="header__battery">77% <!-- battery icon --><i class="fa fa-battery-full"></i></span>
      </div>
    </div>
    <div class="header__bottom">
      <div class="header__column">
        <a href="chats.jsp">
          <i class="fa fa-chevron-left fa-lg"></i>
        </a>
      </div>
      <div class="header__column">
        <span class="header__text">긍/부정 10단계</span>
      </div>
      <div class="header__column">
        <i class="fa fa-search"></i>
        <i class="fa fa-bars"></i>
      </div>
    </div>
  </header>
  
  
<div class="chat" id="chat">
  <div class="date-divider">
    <span class="date-divider__text">Saturday, September 7, 2019</span>
  </div>
  
</div>


<div class="type-message">
  <i class="fa fa-plus fa-lg"></i>
  <div class="type-message__input">
    <input type="text" id="content" placeholder="대화를 입력 후  Enter">
    <i class="fa fa-smile-o fa-lg"></i>
    <span class="record-message">
      <i class="fa fa-microphone fa-lg"></i>
    </span>
  </div>
</div>
<div class="bigScreenText">
  Please make your screen smaller
</div>

<script type="text/javascript">
$(document).ready(function() {
	$("#content").keydown(function(key) {
		if (key.keyCode == 13) {
			if($("#content").val()!=null || $("#content").val()==""){
				$.ajax({
			        url: '/NH_Hackathon_Chat/AIService',
		            data : {
		            	content : $("#content").val()
		            },
		            dataType : 'json',
			        type: 'POST',
			        success: function(result){
			        	if(result.lv != -1){
				        	setMyMsg($("#content").val());
				        	
				        	setOrgAiMsg("긍/부정 10단계 : " + result.lv + "단계<br><br>" +
				        			"비속어 사용 횟수 : " + result.count + "회");
				        	setAiMsg("필터링 내용 : " + result.content);
			        	} else {
							setMyMsg($("#content").val());
							
							setAiMsg("올바른 문장을 입력하여 주세요.");
			        	}
			        }
				});
			} else {
				setMyMsg($("#content").val());
				
				setAiMsg("올바른 문장을 입력하여 주세요.");
			}
		}
	});

	function setMyMsg(msg) {
		$("#content").val("");
		
		$("#chat").append("<div class='chat__message chat__message-from-me'>" +
								"<span class='chat__message-time'>" +
									"방금" +
								"</span>" +
								"<span class='chat__message-body'>" +
								split10(msg) +
								"</span>" +
							"</div>");
		
		if(line++ > 10) $('html, body').scrollTop(document.body.scrollHeight);
	}
	
	function setAiMsg(msg) {
		$("#chat").append("<div class='chat__message chat__message-to-me'>" +
				    			"<img src='images/0.png' alt='' class='chat-message-avatar' onclick=\"javascript:window.open('images/0.png','new','width=500,height=500,top=100,left=100');\">" +
				    			"<div class='chat__message-center'>" +
					      			"<h3 class='chat__message-username'>고영윤 팀장</h3>" +
					     			"<span class='chat__message-body'>" +
					     				split10(msg) + "<br><br><br>" +
					      			"</span>" +
				   				"</div>" +
				   				"<span class='chat__message-time'>방금</span>" +
			  				"</div>");
		if(line++ > 10) $('html, body').scrollTop(document.body.scrollHeight);
	}
	
	function setOrgAiMsg(msg) {
		$("#chat").append("<div class='chat__message chat__message-to-me'>" +
				    			"<img src='images/0.png' alt='' class='chat-message-avatar' onclick=\"javascript:window.open('images/0.png','new','width=500,height=500,top=100,left=100');\">" +
				    			"<div class='chat__message-center'>" +
					      			"<h3 class='chat__message-username'>고영윤 팀장</h3>" +
					     			"<span class='chat__message-body'>" +
					     				msg +
					      			"</span>" +
				   				"</div>" +
				   				"<span class='chat__message-time'>방금</span>" +
			  				"</div>");
		if(line++ > 10) $('html, body').scrollTop(document.body.scrollHeight);
	}
	
	function split10(targetMsg) {
		var lineSize = 20;
		var msg = targetMsg;
		var result = "";
		var size = parseInt(msg.length / lineSize);
		var size2 = parseInt(msg.length % lineSize);
		
		for(var i = 0; i < size; i++) {
			result += msg.substring(0, lineSize) + "<br>";
			msg = msg.substring(lineSize, msg.length);
		}
		
		if(size2 > 0) {
			result += msg.substring(0, msg.length);
		} else {
			result = result.substring(0, result.length-4);
		}
		
		return result;
	}
	
	var line = 0;
	
	setTimeout(function() {
		setOrgAiMsg("편하게 이야기를 해보세요! 긍/부정<br>"+ 
				"10단계 결과와 필터링을 거친 말이<br>" +
				"돌아옵니다.");
	}, 1000);
});
</script>
</body>
</html>