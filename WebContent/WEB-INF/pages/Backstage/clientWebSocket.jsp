<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<link rel="icon" href="<c:url value='/img/yuruIcon.png' />" type="image/x-icon">
	<!-- Bootstrap -->
	<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
	<link href="<c:url value='/ionicons/css/ionicons.min.css' />" rel="stylesheet">
	<!-- main css -->
	<link href="<c:url value='/css/style.css' />" rel="stylesheet">
	<!-- modernizr -->
	<script src="<c:url value='/js/modernizr.js' />"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/webSocket.css">
	<title>客服區</title>
</head>
<body>
	<jsp:include page="/WEB-INF/pages/include/top.jsp" />
	
	<!-- top bar -->
	<div class="top-bar">
		<h1>智慧客服</h1>
		<p><a href="#">CampSite</a>&nbsp;&nbsp;/&nbsp;&nbsp;live &amp; life</p>
	</div>
	<!-- end top bar -->

	<!-- main container -->
	<div class="main-container portfolio-inner clearfix" >
		<!-- portfolio div -->
		<div class="portfolio-div">
			<div class="portfolio">
				<div>
		            <form id="chatRoomForm" onsubmit="return false;">
		             <input type="hidden" id="userNameInput" value="${sessionScope.memberId}" /> 
		 			<div ><ol id="messageDisplay" class="chat"> </ol></div>		
	  						<input class="textarea"   id="userinput" type="text" placeholder="Type here!"/><div class="emojis"></div>
		            </form>
		     	</div>
		     </div>
			<!-- portfolio -->
		</div>
		<!-- end portfolio div -->
	</div>
	<!-- end main container -->

	<!-- footer -->
<!-- 	<footer> -->
<!-- 		<div class="container-fluid"> -->
<!-- 			<p class="copyright">© YuruCamp 2020</p> -->
<!-- 		</div> -->
<!-- 	</footer> -->
	<!-- end footer -->

	<!-- back to top -->
	<a href="#0" class="cd-top"><i class="ion-android-arrow-up"></i></a>
	<!-- end back to top -->


	<!-- jQuery -->
	<script src="<c:url value='/js/jquery-2.1.1.js' />"></script>
	<!--  plugins -->
	<script src="<c:url value='/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/js/menu.js' />"></script>
	<script src="<c:url value='/js/animated-headline.js' />"></script>
	<script src="<c:url value='/js/isotope.pkgd.min.js' />"></script>

	<!--  custom script -->
	<script src="<c:url value='/js/custom.js' />"></script>
	
	
	<script>
window.onload = function () {
    //獲取DOM元件
    var userNameInput = document.getElementById("userNameInput");
    var userinput = document.getElementById("userinput");
    var chatRoomForm = document.getElementById("chatRoomForm");
    var messageDisplay = document.getElementById("messageDisplay");
 
    var webSocket;
    var isConnectSuccess = false;
 	
    //設置登入鈕的動作，沒有登出，登入才可發言
     setWebSocket();
    //Submit Form時送出訊息
    chatRoomForm.addEventListener("submit", function () {
        sendMessage();
        $("#userinput").val('');
        return false;
    });
    //使用webSocket擁有的function, send(), 送出訊息
    function sendMessage() {
        //檢查WebSocket連接狀態
        if (webSocket && isConnectSuccess) {
            var messageInfo = {
                userName: userNameInput.value,
                message: userinput.value,
                nowTime: getTime()
            }
            webSocket.send(JSON.stringify(messageInfo));
        } else {
        	   console.log("未登入");
        }
    }
 
    //設置WebSocket
    function setWebSocket() {
        //開始WebSocket連線
        webSocket = new WebSocket('ws://localhost:8080/yurucamp/websocket');
        //以下開始偵測WebSocket的各種事件
         
        //onerror , 連線錯誤時觸發  
        webSocket.onerror = function (event) {
        	 console.log("登入失敗");
        };
 
        //onopen , 連線成功時觸發
        webSocket.onopen = function (event) {
            isConnectSuccess = true;
			   console.log("登入成功");
             
            //送一個登入聊天室的訊息
//             var firstLoginInfo = {
//                 userName : "系統",
//                 message : userNameInput.value + " 登入了聊天室",
//                 nowTime : getTime()
//             };
//             webSocket.send(JSON.stringify(firstLoginInfo));
        };
 
        //onmessage , 接收到來自Server的訊息時觸發
        webSocket.onmessage = function (event) {
            var messageObject = JSON.parse(event.data);
            var direction;
            
            if(messageObject.userName == $("#userNameInput").val()){
            	direction = "self";
            }
            console.log("messageObject"+event.data);
            messageDisplay.innerHTML += "<li class='"+direction+"'><div class='msg'><p>" 
            						+  messageObject.message  +"   </p><time>"+ messageObject.nowTime+"</time></div></li>";
            						
            				
            if(messageObject.message == 'bot'){
            	Ai("歡迎使用智慧客服機器人<br>輸入1 查詢露營營地<br>輸入2 查詢商城資訊 <br>輸入3 查詢論壇");
            }else if(messageObject.message == '1'){
            	Ai("露營地推薦:苗栗縣南庄鄉");
            }else if(messageObject.message == '2'){
            	Ai("商城熱賣:露營帳篷");
            }else if(messageObject.message == '3'){
            	Ai("最近討論:晚上的露營好趣處");
            }					
            add();						
        };
        
        function Ai(msg){
        	  var firstLoginInfo = {
                   userName : "系統",
                   message : msg,
                   nowTime : getTime()
               };
               webSocket.send(JSON.stringify(firstLoginInfo));
        }
        
    }
};

function getTime() {
	var newTime = new Date();
	return  newTime.getHours() +":" + newTime.getMinutes();
}

function add(){
	window.scrollTo(0,document.body.scrollHeight);
}

</script>   
</body>
</html>