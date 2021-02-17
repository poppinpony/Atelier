<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>YURU.camp</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<!-- //匯入bootstrap -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- //匯入bootstrap javascript -->
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<!-- 機器人驗證 -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script	src="https://www.google.com/recaptcha/api.js?render=explicit&onload=onReCaptchaLoad"></script>
<!-- google登入 -->
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="916965697921-kvipep3dqn362pk86etoa1les14pharh.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style>
	
	.mempic{
 		display:inline-block; 
 		width:200px; 
		height:200px; 
/*  	overflow:hidden;  */ 
 		-webkit-clip-path:circle(50% at 50% 50%);
	}
	
	#imgshow {
 		max-width:300px; 
 		max-height:300px;	 
/*  		-webkit-clip-path:circle(50% at 50% 50%); */
/* 		border:1px solid pink; 
/* 		myimg:expression(onload=function(){ */
/* 		this.style.width=(this.offsetWidth > 250)?"250px":auto */
/* 		this.style.height=(this.offsetHeight > 250)?auto:"250px"}); */
	/* 	border-radius:50%; */
	}
	
	</style>

</head>
<body>

	<!-- Preloader -->
	<div id="preloader">
		<div class="pre-container">
			<div class="spinner">
				<div class="double-bounce1"></div>
				<div class="double-bounce2"></div>
			</div>
		</div>
	</div>
	<!-- end Preloader -->

	<div class="container-fluid">
		<!-- box-header -->
		<header class="box-header">

			<div class="box-logo">
				<a href="/yurucamp"><img
					src="<%=request.getContextPath()%>/img/yuruLogo.png" width="160"
					alt="Logo"></a>
			</div>

			<!-- box-nav -->

			<c:choose>
				<c:when test="${memberRolse eq 'admin'}">
					<button type="button" class="btn btn-light"
						style="float: right; margin-right:400px; margin-top: -90px;background-color:#dbcf83;">
						<a href="<c:url value='/Backstage/index' />" style="color:black;"/>後臺管理</a>
					</button>
					<button type="button" class="btn btn-light entermem"
						style="float: right; margin-right: 195px; margin-top: -90px;background-color:transparent;border:2px solid #dbcf83">
						<img src=${memberBean.image} style="max-width:20px;max-height:20px"><a href="<c:url value='/Member/MemberCenter' />" style="color:black;" /> ${memberBean.name}</a>
					</button>
					<button type="button" class="btn btn-light out2"
						style="float: right; margin-right: 130px; margin-top: -90px;background-color:transparent;border:2px solid #dbcf83;;background-color:transparent">
						<a href="<c:url value='/Member/LoginOut' />" style="color:black" />登出</a>
					</button>
				</c:when>
				<c:when test="${not empty memberId}">
					<button type="button" class="btn btn-light entermem"
						style="float: right; margin-right: 195px; margin-top: -90px;background-color:transparent;border:2px solid #dbcf83">
						<img src=${memberBean.image} style="max-width:20px;max-height:20px"><a href="<c:url value='/Member/MemberCenter' />" style="color:black;" /> ${memberBean.name}</a>
					</button>
					<button type="button" class="btn btn-light out2"
						style="float: right; margin-right: 130px; margin-top: -90px;background-color:transparent;border:2px solid #dbcf83;;background-color:transparent">
						<a href="<c:url value='/Member/LoginOut' />" style="color:black" />登出</a>
					</button>
				</c:when>
				<c:otherwise>
					<a style="float: right; margin-right: 130px; margin-top: -87px">
						<span class="box-menu-text"><i class='fas fa-user-circle'
							data-toggle="modal" data-target="#loginModal" id="icon"
							style='font-size: 28px; color: black'></i></span>
					</a>
				</c:otherwise>
			</c:choose>

			<a class="box-primary-nav-trigger" id="menu" href="#0"> <span
				class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
			</a>
			
			<div  style="float: right; margin-right: 130px;margin-top: -120px">
<%-- 		${sessionScope.memberId} --%>
<%-- 		${memberRolse} --%>
<%-- 		${sessionScope.memberPaid} --%>
<%-- 		${sessionScope.id}	 --%>
<%-- 		${memberBean.name} --%>

			</div>
			
		</header>	
		
  


		<!-- end box-header -->

		<!-- nav -->

		<nav>
			<ul class="box-primary-nav">
				<li class="box-label">About Yuru.Camp</li>
				<!--            <li><a href="index.html">Intro</a> <i class="ion-ios-circle-filled color"></i></li> -->
				<!--            <li><a href="about.html">會員</a></li> -->
				<li><a href="<c:url value='/CampSite/Index' />">露營營地</a><i
					class="ion-ios-circle-filled color"></i></li>
				<li><a href="<c:url value='/Product/Index' />">露營商城</a></li>
				<li><a href="<c:url value='/Car/Index' />">露營車租借</a></li>
				<li><a href="<c:url value='/Forum/Index' />">露營論壇</a></li>
				<li><a href="<c:url value='/Backstage/socket' />">智慧客服</a></li>
				<!--            <li class="box-label">會員系統</li> -->
				<!-- 			<li><a class="glyphicon glyphicon-user" href="about.html">會員中心</a></li> -->
				<li class="box-social"><a
					href="https://www.facebook.com/YURUCAMPFAVORITE"><i
						class="ion-social-facebook"></i></a></li>
				<li class="box-social"><a
					href="https://www.instagram.com/YURU_CAMPFAVORITE/"><i
						class="ion-social-instagram-outline"></i></a></li>
				<li class="box-social"><a href="https://twitter.com/camp_yuru"><i
						class="ion-social-twitter"></i></a></li>
				<!--            <li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li> -->
			</ul>
		</nav>
		<!-- end nav -->
	</div>

	<!-- login Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #dbcf83;height:70px;">
					<h5 class="modal-title" id="exampleModalLabel"
						style="font-size: large; font-weight: bolder;width:70%;display:inline;">會員登入</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" style="float:right">
						<span aria-hidden="true">&times;</span>
					</button>
					<div id="ermsg" style="color: red; font-weight: bold;"></div>
				</div>
				<div class="modal-body">

                        <div class="input-contact" style="width:50%">
                            <input type="text" name="Accountin" id="Accountin" autocomplete="off">
                            <span>帳號</span>                 
                    	</div>                    
                       <div class="input-contact" style="width:50%">
                            <input type="password" name="Passwordin" id="Passwordin" autocomplete="off" style="border-style:none;height:100%;padding: 0 20px;">
                            <span>密碼</span>                 
                    	</div>
                    	<div class="form-check">
					        <input type="checkbox" class="form-check-input" id="dropdownCheck">
					        <label class="form-check-label" for="dropdownCheck">
					          Remember me
					        </label>
					    </div>					   

					<div class="modal-footer" style="height:65px;">
					<div style="width:70%;display:inline;float:left;">
						<a href='#' class="mr-auto" data-dismiss="modal"
							data-toggle="modal" data-target="#registerModal"
							style="float: left; color: black;">註冊一個新帳號</a><br><br>
						<a href='#' class="mr-auto" data-dismiss="modal"
							data-toggle="modal" data-target="#forgetpsdModal"
							style="float: left; color: black;">忘記密碼</a>
					</div>
					<div style="width:30%;display:inline;float:left;">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">取消</button>
						<button type="button" class="btn btn-primary" id="signIn"
							style="background-color: #dbcf83; border-color:#dbcf83;color: black;">登入</button>
					</div>
					</div>
					<hr>
						<div>
							<div class="g-signin2" data-onsuccess="onSignIn" onclick="ClickLogin()"
								data-theme="dark"></div>
<!-- 							<a href="#" οnclick="signOut();">Sign out</a> -->
					</div>
					<hr>
					<div>
						<button type="button" class="btn btn-secondary" id="m1">一般會員</button>
						<button type="button" class="btn btn-secondary" id="m2">付費會員</button>
						<button type="button" class="btn btn-secondary" id="m3">管理者</button>
						<button type="button" class="btn btn-secondary" id="m4">會員</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- register Modal -->
	<div class="modal fade" id="registerModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="background-color:#dbcf83;;height:70px;">
					<h5 class="modal-title" id="exampleModalLabel"
						style="font-size: large; font-weight: bolder;width:70%;display:inline;">會員註冊</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" style="float:right">
						<span aria-hidden="true">&times;</span>
					</button>
					<div id="ermsg2" style="color: red; font-weight: bold;"></div>

				</div>
				<div class="modal-body" style="height:320px;">

					<div style="width: 55%; float: left">

						<div class="input-contact" style="width: 48%; float:left;margin-bottom:15px;">
							<input type="text" name="name" id="name" autocomplete="off" data-toggle="tooltip" title="請輸入姓名">
							<span>姓名</span>
						</div>
						<div class="input-contact"
							style="width: 48%; float: right; text-align: left;margin-bottom:15px;">
							<input type="text" name="memberId" id="memberId" 
								autocomplete="off" > <span>帳號</span>
						</div>
						<div class="input-contact" style="width: 48%; float:left;margin-bottom:15px;">
							<input type="password" name="password" id="password"
								 autocomplete="off"
								style="border-style: none; height: 100%; padding: 0 20px; width: 100%;" />
							<span>密碼</span>
						</div>
						<div class="input-contact"
							style="width: 48%; float: right; text-align:left;margin-bottom:15px;">
							<input type="password" name="password2" id="password2"
								 autocomplete="off"
								style="border-style: none; height: 100%; padding: 0 20px; width: 100%" />
							<span>確認密碼</span>
						</div>
						
						<div class="input-contact" style="width: 65%; float:left; text-align: left;margin-bottom:15px;">
							<input type="date" id="birthday" name="birthday" value=""
								max="tDate" class='limit-max-date' autocomplete="off"
								style="border-style: none; height: 100%; padding: 0 20px; width: 100%; text-align:right;color:#BEBEBE" />
							<span>生日</span>
						</div>
						
						<div class="input-contact" style="width: 30%; float:right;margin-bottom:15px;">
							<input type="text" name="gender" id="gender" autocomplete="off" /> <span>性別</span>
						</div>

						<!--                     	<div class="input-contact" style="width:100%;float:left;"> -->
						<!--                             <input type="text" name="phone" id="phone" autocomplete="off"> -->
						<!--                             <span>電話</span>                  -->
						<!--                     	</div> -->
						<div class="input-contact" style="width: 65%; float: left;margin-bottom:15px;">
							<input type="text" name="mail" id="mail"
								autocomplete="off" /> <span>mail</span>
						</div>
						<div style="float:right;margin-bottom:15px;">
							<button type="button" class="btn btn-secondary" id="sendregstermail"
								style="border-radius: 5px">發送驗證碼</button>
						</div>
						<div style="float:right;margin-bottom:15px;">
								<button type="button" class="btn btn-secondary" id="oksendregstermail"
								style="border-radius:5px;display:none;">已完成驗證</button>
						</div>
<!-- 						<div class="input-contact" style="width: 65%; float:left;margin-bottom:15px;"> -->
						<div id="myCaptcha" style="width: 65%;height:40%"></div>
						</div>
					

					<div style="width: 45%; float: left; padding-left: 40px;">
						照片：<br>
						<div id="pox">
							<input id="filed" type="file" accept="image/*" />
						</div>
						<br>
						<div id="box">
							<span class="mempic"><img id="imgshow" src="" alt="" /></span>
						</div>
					</div>
					</div>

					<div class="modal-footer" style="clear: both;">
					<div>
						<a href='#' class="mr-auto" data-dismiss="modal"
							data-toggle="modal" data-target="#loginModal"
							style="float:left;color: black;">已經有帳號，直接登入</a>
					</div>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">取消</button>
						<button type="button" class="btn btn-primary" id="regieted"
							style="background-color: #dbcf83; border-color: #dbcf83; color: black;">註冊</button>
										<hr>
					<div>
						<button type="button" class="btn btn-secondary" id="fasregister" style="float:left">快速註冊</button>
					</div>
					</div>

				</div>
			</div>
	</div>
	</div>
	
	<!-- forgotpassword Modal -->
	<div class="modal fade" id="forgetpsdModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="background-color:#dbcf83;;height:70px;">
					<h5 class="modal-title" id="exampleModalLabel"
						style="font-size: large; font-weight: bolder;width:70%;display:inline;">忘記密碼</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" style="float:right">
						<span aria-hidden="true">&times;</span>
					</button>
					<div id="ermsg3" style="color: red; font-weight: bold;"></div>

				</div>
				<div class="modal-body">
                        <div class="input-contact" style="width:50%">
                            <input type="text" name="forgotname" id="forgotname" autocomplete="off">
                            <span>姓名</span>                 
                    	</div>                    
                       <div class="input-contact" style="width:50%">
                            <input type="text" name="forgotaccount" id="forgotaccount" autocomplete="off" style="border-style:none;height:100%;padding: 0 20px;">
                            <span>帳號</span>                 
                    	</div>
					</div>

					<div class="modal-footer" style="clear: both;height:150px;">
					<div>
						<a href='#' class="mr-auto" data-dismiss="modal" id="forgettologin"
							data-toggle="modal" data-target="#loginModal"
							style="float: left; color: black;">已經有帳號，直接登入</a>
					</div>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">取消</button>
						<button type="button" class="btn btn-primary" id="forgetenter"
							style="background-color: #dbcf83; border-color: #dbcf83; color: black;">確認</button>
					<hr>
					<button type="button" class="btn btn-secondary" id="forgotwrite" style="float:left">填寫</button>
					
					</div>
					
				</div>
			</div>
	</div>
	
	<script>
	
	$("#filed").change(function(){
		var fileReader=new FileReader();
		var prviewFile=this.files[0];
		var form=new FormData();
		form.append("files",prviewFile);
		$.ajax({
			type:"POST",
			url : "/yurucamp/Member/registeraddpic",
			dataType : 'json',
			data : form,
			mimeType:"multipart/form-data",
			cache:false,
			processData:false,
			contentType:false
			}).done(function(result) {			
				
			})	
		});
	
		$("#icon").click(function(){
			$("#ermsg").html("");
			$("#ermsg2").html("");
			$("#Accountin").val("");
			$("#Passwordin").val("");
		});
		
		$("#signIn").click(function() {
			$("#ermsg").html("")
			var data = new Object();
			data.Account = $("#Accountin").val();
			data.Password = $("#Passwordin").val();
			console.log(data);
			$.ajax({
				url : "/yurucamp/Member/SignIn",
				method : 'POST',
				dataType : 'json',
				data : data
			}).done(function(result) {
				if(result.msg== "登入成功!"){ 
					$("#loginModal").click();
					window.location.reload();
				} else {
					$("#ermsg").html("帳號或密碼錯誤，請重新輸入!");
				}
			})
		});
		
		
		$("#forgetenter").click(function() {
			$("#ermsg1").html("");
			$("#ermsg2").html("");
			$("#ermsg3").html("");
			if ($("#forgotname").val()==""||$("#forgotaccount").val()==""){
				$("#ermsg3").html("請輸入姓名及帳號");
				 return false;
			}
			var data = new Object();
			data.name= $("#forgotname").val();
			data.memberId= $("#forgotaccount").val();
			console.log(data);
			$.ajax({
				url : "/yurucamp/Member/forgetinfo",
				method : 'POST',
				dataType : 'json',
				data : data
			}).done(function(result) {
				$("#ermsg3").html("");
				if(result.r==true){ 
					$("#forgettologin").click();
					alert("請至mail收信後重新登入");
					} else {
					$("#ermsg3").html("查無相關資訊!");
				}
			})
		});
		
		$("#sendregstermail").click(function() {
			$("#ermsg").html("");
			$("#ermsg2").html("");
			if ($("#mail").val()==""||$("#mail").val().length < 8){
				$("#ermsg2").html("mail格式錯誤");
				return false;
			}if($("#name").val()===""){
				$("#ermsg2").html("姓名不得為空值");
				return false;
			};
			var data = new Object();
			data.mail = $("#mail").val();
			data.name = $("#name").val();			
			console.log(data);
			$.ajax({
				url : "/yurucamp/Member/sendRegisterMail",
				method : 'POST',
				dataType : 'json',
				data : data
			}).done(function(result) {
// 				bootbox.alert({<input type="text">});		
				confirmnum=prompt("請輸入mail驗證碼:");
				
				while (confirmnum!=result.num){
					if (confirmnum==null){return null};
					confirmnum=prompt("您輸入的驗證碼錯誤，請再次輸入!")
				}
				if(confirmnum==result.num){
					$("#sendregstermail").hide();
					$("#oksendregstermail").show();
					$("#oksendregstermail").attr("disabled", true);					
				}
			})			
		});
		

		$("#regieted").click(function() {
			$("#ermsg").html("");
			$("#ermsg2").html("");
			if ($("#name").val()===""){
				$("#ermsg2").html("姓名不得為空值")
				 return false;
			}else if($("#memberId").val()===""){
				$("#ermsg2").html("帳號不得為空值")
				 return false;				
			}else if($("#password").val().length < 8){
				$("#ermsg2").html("密碼請大於8位數")
				 return false;				
			}else if($("#password").val()!==$("#password2").val()){
				$("#ermsg2").html("密碼與驗證密碼不一致")
				 return false;				
			}else if($("#gender").val()!="F"&&$("#gender").val()!="M"){
				$("#ermsg2").html("性別請填寫M(男生)或F(女生)")
				 return false;				
			}else if($("#birthday").val()===""){
				$("#ermsg2").html("生日不得為空值")
				 return false;	
			}else if($("#mail").val()===""){
				$("#ermsg2").html("mail不得為空值")
				 return false;	}
// 			}else if($("#oksendregstermail").display==none){
// 				$("#ermsg2").html("請驗證您的mail")
// 				 return false;	}
			var data = new Object();
			var formData = new FormData($( "#uploadPic" )[0]);  
			data.name = $("#name").val();
			data.memberId = $("#memberId").val();
			data.password = $("#password").val();
			data.gender = $("#gender").val();
			data.birthday = $("#birthday").val();
			data.phone = "0988888888";
			data.address = "新北市新店區";
			data.mail = $("#mail").val();
			data.registerDate = new Date();
			data.status = "Y";
			data.paid = 0;
			data.roles = "member";
			console.log(data);
			$.ajax({
				url : "<c:url value='/Member/Rer'/>",
				method : 'POST',
				dataType : 'json',
				data : data
			}).done(function(result) {
				if (result.mes == "帳號重複") {
					$("#ermsg2").html("有相同帳號，請重新輸入")
				} else if(result.mes == "新增成功") {
					$("#ermsg2").html("")
					$("#name").val("");
					$("#memberId").val("");
					$("#password").val("");
					$("#password2").val("");
					$("#gender").val("");
					$("#birthday").val("");
					$("#mail").val("");
					$("#mailc").val("");
					$("#registerModal").click();
					alert("註冊成功，您可以正常登入!");
				}

			})
		});

		
		$("#m1").click(function() {
			$("#ermsg").html("");
			$("#Accountin").val("M001");
			$("#Passwordin").val("M001");
			$("#Accountin").focus();
			$("#Passwordin").focus();

		});

		$("#m2").click(function() {
			$("#ermsg").html("");
			$("#Accountin").val("M002");
			$("#Passwordin").val("M002");
			$("#Accountin").focus();
			$("#Passwordin").focus();
		});

		$("#m3").click(function() {
			$("#ermsg").html("");
			$("#Accountin").val("M003");
			$("#Passwordin").val("M003");
			$("#Accountin").focus();
			$("#Passwordin").focus();
		});

		$("#m4").click(function() {
			$("#ermsg").html("");
			$("#Accountin").val("fst12234");
			$("#Passwordin").val("fst12234");
			$("#Accountin").focus();
			$("#Passwordin").focus();
		});

		$("#fasregister").click(function() {
			$("#ermsg").html("");
			$("#ermsg2").html("")
			$("#Accountin").val("");
			$("#Passwordin").val("");
			$("#name").val("陳花花");
			$("#memberId").val("fst12234");
			$("#password").val("fst12234");
			$("#password2").val("fst12234");
			$("#gender").val("F");
			$("#birthday").val("1987-06-04");
			$("#mail").val("ccch28315@gmail.com");
			$("#name").focus();
			$("#memberId").focus();
			$("#password").focus();
			$("#password2").focus();
			$("#gender").focus();
			$("#birthday").focus();
			$("#mail").focus();
			$("#name").focus();
		});

		//在input file內容改變的時候觸發事件
		$('#filed').change(function() {
			//獲取input file的files檔案陣列;
			//$('#filed')獲取的是jQuery物件，.get(0)轉為原生物件;
			//這邊預設只能選一個，但是存放形式仍然是陣列，所以取第一個元素使用[0];
			var file = $('#filed').get(0).files[0];
			//建立用來讀取此檔案的物件
			var reader = new FileReader();
			//使用該物件讀取file檔案
			reader.readAsDataURL(file);
			//讀取檔案成功後執行的方法函式
			reader.onload = function(e) {
				//讀取成功後返回的一個引數e，整個的一個進度事件
				console.log(e);
				//選擇所要顯示圖片的img，要賦值給img的src就是e中target下result裡面
				//的base64編碼格式的地址
				$('#imgshow').get(0).src = e.target.result;
			}
		});

		$(document).keydown(function(event) {
			var keyNum = event.which; //獲取鍵值
			var Item = $('#imgshow'); //要移動的元素
			Item.css({
				position : 'relative'
			}); //設定position
			switch (keyNum) { //判斷按鍵
			case 37:
				Item.animate({
					left : '-=10px'
				});
				break;
			case 38:
				Item.animate({
					top : '-=10px'
				});
				break;
			case 39:
				Item.animate({
					left : '+=10px'
				});
				break;
			case 40:
				Item.animate({
					top : '+=10px'
				});
				break;
			case 90:
				Item.animate({
					width : '+=5px'
				});
				break;
			case 89:
				Item.animate({
					width : '-=5px'
				});
				break;
			default:
				break;
			}
		});

		var input1 = document.querySelector('.limit-max-date');
		// 今天的日期
		var tDate = (function() {
			var date = new Date();
			var seperator1 = "-";
			var month = date.getMonth() + 1; //月
			var strDate = date.getDate(); //日
			if (month >= 1 && month <= 9) {
				month = "0" + month;
			}
			if (strDate >= 0 && strDate <= 9) {
				strDate = "0" + strDate;
			}
			return date.getFullYear() + seperator1 + month + seperator1
					+ strDate
		})()
		input1.setAttribute('max', tDate)

		$(document).ready(function(){
		  $(".out2").hover(function(){
		    $(".out2").css("background-color","#dbcf83");
		    },function(){
		    $(".out2").css("background-color","transparent");
		  });
		});
		
		
		//我不是機器人
		var captchaWidgetId;
		var onReCaptchaLoad = function() {

			captchaWidgetId = grecaptcha.render('myCaptcha', {
				'sitekey' : '6Lcks-UZAAAAAPrLqlwVUnFrKNXaetgKmnJ6hK7a', // required   
				'theme' : 'light', // optional   
				'callback' : 'verifyCallback' // optional   
			});
		};

		var verifyCallback = function(recaptcha) {
			//接到回傳值
			// recaptcha =回傳值
			console.log("ajax:"+ recaptcha);
			$.ajax({
				type : 'POST',
				url : "<c:url value='/Ajax/CampSite/recaptchaV2' />",
				data : {
					recaptcha : recaptcha
				},success : function(res) {
					console.log('5. Return => ',res);
				}
			});

		}
		
		//google驗證登入
		var clicked = false;//Global Variable
		function ClickLogin() {
			clicked = true;
		}
		function onSignIn(googleUser) {
			// 客户端如果有需要的话可以通过profile来获取用户信息
			var profile = googleUser.getBasicProfile();
			// 传回后台验证，并获取userid
			var id_token = googleUser.getAuthResponse().id_token;
			console.log(id_token);
			if (id_token==null){
// 				alert("google登入失敗");
				return false;
			}
// 				alert("google登入完成");
				var auth2 = gapi.auth2.getAuthInstance();
				auth2.signOut().then(function() {
					console.log('User signed out.');
				});
				var data = new Object();
				data.Account = "M001";
				data.Password = "M001";
				console.log(data);
				$.ajax({
					url : "/yurucamp/Member/SignIn",
					method : 'POST',
					dataType : 'json',
					data : data
				}).done(function(result) {
					if(result.msg== "登入成功!"){ 
						$("#loginModal").click();
						window.location.reload();
					} else {
						alert("googole登入失敗!")
					}
				})
			
		};

// 		function signOut() {
// 			var auth2 = gapi.auth2.getAuthInstance();
// 			auth2.signOut().then(function() {
// 				console.log('User signed out.');
// 			});
// 		}
		
		$("#forgotwrite").click(function() {
			$("#ermsg3").html("");
			$("#forgotname").val("陳花花");
			$("#forgotaccount").val("fst12234");
			$("#forgotname").focus();
			$("#forgotaccount").focus();
		});

		
	</script>
	

</body>
</html>