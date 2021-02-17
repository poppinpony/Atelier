<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>YURU.悠遊租車</title>
<link rel="icon" href="../img/yuruIcon.png" type="image/x-icon">
<!-- Bootstrap -->
<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
<link href="<c:url value='/ionicons/css/ionicons.min.css' />" rel="stylesheet">
<!-- main css -->
<link href="<c:url value='/css/style.css' />" rel="stylesheet">
<!-- form css -->
<link href="<c:url value='/css/formstyle.css' />" rel='stylesheet' type='text/css' />
<!-- step css -->
<link href="<c:url value='/css/stepstyle.css' />" rel='stylesheet' type='text/css' />
<!-- ad css -->
<link href="<c:url value='/css/computer.css' />" rel='stylesheet'
	type='text/css' />
<!-- modernizr -->
<script src="<c:url value='/js/modernizr.js' />"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>

/* guide */

.cal-container {
    margin-right: auto;
    margin-left: auto;
    padding-left: 10px;
    padding-right: 10px;
}

.cal-app_list {
    margin: 0 auto;
    background: #dbcf83;
    min-height: 200px;
}

.cal-app_list .cal-app_item a p {
    margin: 0;
    color: #5d5030e0;
    letter-spacing: 0;
    text-align: center;
    font-size: 14px;
}

.cal-app_list .cal-app_item a p>span {
    display: inline-block;
    vertical-align: middle;
}

.cal-app_list .cal-app_item img {
    display: inline-block;
    vertical-align: middle;
    margin-bottom: 34px;
}

.cal-app_list .cal-app_item.cal-xs-5 {
    width: 20%;
}

.cal-app_list .cal-app_item {
    float: left;
    text-align: center;
    padding-top: 5%;
    position: relative;
    min-height: 1px;
    padding-left: 15px;
    padding-right: 15px;
}

ul, li {
    list-style: outside none;
    padding: 0;
    margin: 0;
}

@media (min-width: 1200px)
.cal-container {
    width: 1200px;
}



</style>
</head>

<body>

	<jsp:include page="/WEB-INF/pages/include/top.jsp" />

	<!-- top bar -->
	<div class="top-bar">
		<h1>聯絡我們</h1>
<!-- 		<p> -->
<!-- 			<a href="#">Travel is the only thing you buy that makes you richer.</a> -->
<!-- 		</p> -->
	</div>
	<!-- end top bar -->

	<!-- main container -->
	
	
        <div class="about-info fill-info">
            <div class="fill-form-group">
                <div class="fill-form" style="padding: 100px;">
                    <h3 class="box-til">
                  	      聯絡我們
                    </h3>
                    <div class="fill-forms">
                        <div class="fill-forms-hint">請留下您的資訊，我們將盡快與您聯繫。</div>
                        <div class="field-container field-container-half" id="divContactName">
                            <label class="field-container-til">姓名 : *</label>
                            <input type="text" class="field-container-input" id="ContactName">
                            <div class="field-container-invaild-txt">
                        	        請輸入姓名
                            </div>
                        </div>
                        <div class="field-container field-container-half">
                            <label class="field-container-til">手機號碼 :</label>
                            <input type="text" class="field-container-input" id="ContactCP">
                        </div>
                        <div class="field-container field-container-half">
                            <label class="field-container-til">市內電話 :</label>
                            <input type="text" class="field-container-input" id="ContactPhone">
                        </div>
                        <div class="field-container field-container-half" id="divContactEmail">
                            <label class="field-container-til">Email : *</label>
                            <input type="text" class="field-container-input" id="ContactEmail">
                            <div class="field-container-invaild-txt">
                           	    請輸入Email
                            </div>
                        </div>

                        <div class="field-container field-container-half about-contact-category" id="divContactType">
                            <label class="field-container-til">留言類別 : *</label>
                            <select id="ContactType"  onchange="changeType(this);">
                                <option value="">
                                  	  請選擇
                                </option>
                            </select>
                            <div class="field-container-invaild-txt">
                             	   請選擇留言類別
                            </div>
                        </div>
						<div class="field-container field-container-half about-contact-stop" id="divContactStation">
                            <label class="field-container-til">選擇站點 :</label>
                            <select id="ContactStation">
                                <option value="">
                                	    請選擇
                                </option> 

                            </select>
                            <div class="field-container-invaild-txt">
                            	    請選擇站點
                            </div>
                        </div>
                        <div class="field-container">
                            <label class="field-container-til">寶貴意見 :</label>
                            <textarea id="ContactMemo" class="field-container-textarea"></textarea>
                        </div>
                        <div class="field-container about-contact-reply" id="divReply">
                            <div class="about-contact-reply-til">處理方式 :</div>
                            <div class="about-contact-reply-radio">
                                <input type="radio" class="fill-forms-radio" name="about_contact_reply" id="need_reply">
                                <label for="need_reply">需要回覆</label>
                            </div>
                            <div class="about-contact-reply-radio">
                                <input type="radio" class="fill-forms-radio" name="about_contact_reply" id="no_need_reply">
                                <label for="no_need_reply">不需要回覆</label>
                            </div>
                            <div class="field-container-invaild-txt">
                            	    請選擇處理方式
                            </div>
                        </div>
                        <div class="book-agileinfo-form input">
                 	  <input type="button" value="送出 "> 
                    </div>
                </div>
            </div>

			<div class="clear"></div>
            </div>


        </div>
        
        <div class="clear"></div>

	
		
<!-- 導覽列 -->
           <section class="cal-app_list">
    <div class="cal-container">
        <ul class="clearfix">
                        <li class="cal-xs-5 cal-app_item" cal-hover-img="../img/car/information.png">
                            <a href="/tw/zh/faq/index">
                                <img src="../img/car/information.png" width="40px">
                                <p class="cal-app_name"><span>預約流程</span></p>
                            </a>
                        </li>
                        <li class="cal-xs-5 cal-app_item" cal-hover-img="../img/car/order.png">
<%--                             <a href="<c:url value='/Car/Order' />"> --%>
							<a href="javascript:queryContract();">
                                <img src="../img/car/order.png" width="30px">
                                <p class="cal-app_name"><span>訂單查詢</span></p>
                            </a>
                        </li>
                        <li class="cal-xs-5 cal-app_item" cal-hover-img="../img/car/map.png">
                            <a href="<c:url value='/Car/Location' />">
                                <img src="../img/car/map.png" width="50px">
                                <p class="cal-app_name"><span>營業據點</span></p>
                            </a>
                        </li>
                        <li class="cal-xs-5 cal-app_item" cal-hover-img="../img/car/qa.png">
                            <a href="https://calec.china-airlines.com/OnlineSurvey/esv_introduction.aspx?lang=zh-TW&amp;country=tw&amp;locale=zh">
                                <img src="../img/car/qa.png" width="40px">
                                <p class="cal-app_name"><span>常見問與答</span></p>
                            </a>
                        </li>
                        <li class="cal-xs-5 cal-app_item" cal-hover-img="../img/car/email.png">
                            <a href="<c:url value='/Car/Contact' />">
                                <img src="../img/car/email.png" width="40px">
                                <p class="cal-app_name"><span>聯絡我們</span></p>
                            </a>
                        </li>

        </ul>
    </div>

    </section>
    <form id="form2" name="form2" action="<c:url value='/Car/Order' />" method="post"></form>

<!-- 	end main container -->

	<!-- footer -->
	<footer>
		<div class="container-fluid">
			<p class="copyright">© YURU.camp</p>
		</div>
	</footer>
	<!-- end footer -->

	<!-- back to top -->
	<a href="#0" class="cd-top"><i class="ion-android-arrow-up"></i></a>
	<a class="dot-link" style="bottom: 65px; background-image: url('../img/car/car-icon.png');" href="<c:url value='/Car/CarMenu' />"></a>
	<a class="dot-link" style="bottom: 125px; background-image: url('../img/car/index.png');" href="<c:url value='/Car/Index' />"></a>
	<!-- end back to top -->




	<!-- jQuery -->
	<script src="../js/jquery-2.1.1.js"></script>
	<!--  plugins -->
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/menu.js"></script>
	<script src="../js/animated-headline.js"></script>
	<script src="../js/isotope.pkgd.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<!--  custom script -->
	<script src="../js/custom.js"></script>

	<!-- google analytics  -->
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'https://www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-76796224-1', 'auto');
		ga('send', 'pageview');
	
		function queryContract(){
			var action = document.getElementById("form2").action;
			document.getElementById("form2").submit();
		 }
		
	</script>

</body>

</html>