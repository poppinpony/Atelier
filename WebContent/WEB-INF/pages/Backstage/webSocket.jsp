<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>web socket</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-clearmin.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/roboto.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/material-design.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/small-n-flat.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/webSocket.css">

<script src="${pageContext.request.contextPath}/js/lib/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.mousewheel.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.cookie.min.js"></script>
<script src="${pageContext.request.contextPath}/js/fastclick.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/clearmin.min.js"></script>
<script src="${pageContext.request.contextPath}/js/demo/home.js"></script>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700">

</head>
<body class="cm-no-transition cm-1-navbar">
<jsp:include page="/WEB-INF/pages/Backstage/top.jsp" />     
<div id="global">
	 <div class="container-fluid">
	 	  <div class="container">
				<div>
		            <form id="chatRoomForm" onsubmit="return false;">
		             <input type="hidden" id="userNameInput" value="${sessionScope.memberId}" /> 
		 			<div ><ol id="messageDisplay" class="chat"> </ol></div>		
	  						<input class="textarea"   id="userinput" type="text" placeholder="Type here!"/><div class="emojis"></div>
		            </form>
		     	</div>
 	      </div>
  	</div>      
</div>
<script>
window.onload = function () {
    //獲取DOM元件
//     var loginBtn = document.getElementById("loginBtn");
    var userNameInput = document.getElementById("userNameInput");
//     var infoWindow = document.getElementById("infoWindow");
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
//             loginBtn.disabled = true;
//             userNameInput.disabled = true;
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
//             messageDisplay.innerHTML += "</br>" + messageObject.userName + " 說 : " + messageObject.message;
            messageDisplay.innerHTML += "<li class='"+direction+"'><div class='msg'><p>" 
            						+  messageObject.message  +"   </p><time>"+ messageObject.nowTime+"</time></div></li>"
        };
    }
};

function getTime() {
	var newTime = new Date();
	
	return  newTime.getHours() +":" + newTime.getMinutes();
}

</script>        
</body>
</html>