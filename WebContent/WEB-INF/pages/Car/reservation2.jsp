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
<link href="<c:url value='/css/computer.css' />" rel='stylesheet' type='text/css' />
<!-- modernizr -->
<script src="<c:url value='/js/modernizr.js' />"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
.input-contact {
	height: 40px;
	width: 100%;
	border: solid 0px rgba(0, 0, 0, .1);
	position: relative;
	margin-bottom: 30px;
}

.top-bar {
	background: -webkit-linear-gradient(rgba(255, 255, 255, .8),
		rgba(255, 255, 255, .8)), url(../img/car/car.jpg);
	background: linear-gradient(rgba(255, 255, 255, .8),
		rgba(255, 255, 255, .8)), url(../img/car/car.jpg);
}

h3 {
	font-size: 15px;
	/* font-weight: 500; */
	text-transform: capitalize;
	color: #5d5030e0;
	/* text-shadow: 1px 1px 7px #6b6b6b; */
	/* letter-spacing: 5px; */
	margin: 1.0em 0 1em;
	/* text-align: center; */
	/* font-family: 'Montserrat Alternates', sans-serif; */
}

.deviceform {
	/* border:3px solid #f5f0de;
            background-color: #f5f0de; */
	border-radius: 30px;
	width: 450px;
	padding: 30px;
	padding-bottom: 20px;
	float: left;
	box-shadow:1px 1px 7px #8a6d3b73;
 	margin:10px;
}

#amount-table {
	border: 3px solid #dbcf83;
	border-bottom: none;
	border-radius: 30px;
	width: 400px;
	padding: 30px;
	float:left;
/* 	box-shadow:1px 1px 7px #8a6d3b73; */
}

.tabletd {
	padding: 7px;
}

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
		<h1>露營車租借</h1>
		<p>
			<a href="#">Travel is the only thing you buy that makes you richer.</a>
		</p>
	</div>
	<!-- end top bar -->

	<!-- main container -->

	<br><br>
	<div class="container reserve-car">
    <section class="reserve-step">
        <div class="reserve-step-group">
            <ol>
                <li class="step-success">
                    <div class="step-circle"><img src="../img/car/check.png" width=12px;></div>
                    <div class="step-name">選擇地點、時間 </div>
<!--                         <a href="javascript:void(0)" class="step-edit edit_reserve_location">重新選擇<i class="svg"></i></a> -->
                </li>
                <li class="step-success">
                    <div class="step-circle"><img src="../img/car/check.png" width=12px;></div>
                    <div class="step-name">選擇車型、數量</div>
                </li>
                <li class="step-now">
                    <div class="step-num step-circle">3</div>
                    <div class="step-name">加購配件</div>
                </li>
                <li>
                    <div class="step-num step-circle" style="background-color: transparent;">4</div>
                    <div class="step-name">完成預約</div>
                </li>
            </ol>
        </div>
    </section>
    </div>
    <br>

	<div class="book-appointment">
		<div class="book-agileinfo-form">

			<form action="<c:url value='/Car/reservation2' />" method="post" class="deviceform">

						<p style="font-size:20px;">加購裝備</p>
						<p>露營組<br>內含露營椅、小木桌、露營燈、小音箱</p>
						<img alt="" src="../img/car/monster.png">
						<br> <select id="country1" class="frm-field required sect" name="device" onchange="deviceChange()">

							<option value="">數量</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>

						<br><br><p style="font-size:20px;">優惠序號 coupon</p>
						<p>請輸入您的優惠券號碼</p>
						<br> <input type="text" placeholder="請輸入" name="discount" id="discount" onblur="couponRedeem()">

			</form>
		</div>

   <div  class="book-agileinfo-form">
   	<form action="<c:url value='/Car/reservation3'/>" method="POST">
	<table id="amount-table">
		<tr>
			<td colspan="3" style="background:#dbcf83; font-size:20px; padding:6px" >您選擇的方案</td>
		</tr>
		<tr>
			<td class="tabletd">取車地點</td>
			<td colspan="2">${dept}</td>
		</tr>
		<tr>
			<td class="tabletd">還車地點</td>
			<td colspan="2">${ret}</td>
		</tr>
		<tr>
			<td class="tabletd">取車日期</td>
			<td>${deptDate}</td>
			<td>${deptTime}</td>
		</tr>
		<tr>
			<td class="tabletd">還車日期</td>
			<td>${returnDate}</td>
			<td>${returnTime}</td>
		</tr>
		<tr>
			<td class="tabletd">租用車款</td>
			<td colspan="2">${type}</td>
		</tr>
		<tr>
			<td class="tabletd">數量</td>
			<td colspan="2">${amount}</td>
		</tr>
		<tr>
			<td class="tabletd">租車費用</td>
			<td></td>
			<td id="price2">${normalPrice}</td>
		</tr>
		<tr>
			<td class="tabletd">加購裝備數量</td>
			<td id="deviceAmount">${device}</td>
			<td id="devicePrice"></td>
		</tr>
		<tr>
			<td class="tabletd">適用多日優惠</td>
			<td></td>
			<td id="discount">- ${discountPrice}</td>
		</tr>
		<tr>
			<td class="tabletd">優惠券折抵</td>
			<td id="couponName"></td>
			<td id="discountAmount"></td>
		</tr>
		<tr>
			<td colspan="2" class="tabletd">合計金額</td>
			<td id="totalPrice">${totalPrice}</td>
		</tr>
		<tr>
			<td colspan="3"><input type="submit" value="確定預約"></td>
		</tr>
		<tr>
			<td>
				<input type="hidden" id="dept" name="dept" value="${dept}">
				<input type="hidden" id="ret" name="ret" value="${ret}">
				<input type="hidden" id="deptDate" name="deptDate" value="${deptDate}">
				<input type="hidden" id="deptTime" name="deptTime" value="${deptTime}">
				<input type="hidden" id="returnDate" name="returnDate" value="${returnDate}">
				<input type="hidden" id="returnTime" name="returnTime" value="${returnTime}">
				<input type="hidden" id="type" name="type" value="${type}">
				<input type="hidden" id="carId" name="carId" value="${carId}">
				<input type="hidden" id="device" name="device" value="${device}">
				<input type="hidden" id="couponName" name="couponName" value="${couponName}">
				<input type="hidden" id="couponNo" name="couponNo" value="${discount}">
				<input type="hidden" id="amount" name="amount" value="${totalPrice}">
				<input type="hidden" id="count" name="count" value="${amount}">

			</td>
		</tr>
	</table>
	</form>



	<div class="clear"></div>
		</div>
	</div><br>
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


<!-- 	new start -->
<%-- 	<form:form method='POST' modelAttribute="bookBean" class='form-horizontal' enctype="multipart/form-data" > --%>
<!-- 		<input type="hidden" id="carId" name="carId" value="carId"> -->
<!-- 		<input type="hidden" id="dept" name="dept" value="dept"> -->
<!-- 		<input type="hidden" id="ret" name="ret" value="ret"> -->
<!-- 		<input type="hidden" id="deptDate" name="deptDate" value="deptDate"> -->
<!-- 		<input type="hidden" id="deptTime" name="deptTime" value="deptTime"> -->
<!-- 		<input type="hidden" id="returnDate" name="returnDate" value="returnDate"> -->
<!-- 		<input type="hidden" id="returnTime" name="returnTime" value="returnTime"> -->
<!-- 		<input type="hidden" id="device" name="device" value="device"> -->
<!-- 		<input type="hidden" id="amount" name="amount" value="amount"> -->
<!-- 		<input type="hidden" id="type" name="type" value="type"> -->
<!-- 		<input type="hidden" id="discount" name="discount" value="discount"> -->
<!-- 		<div class='col-lg-offset-2 col-lg-10'> -->
<!-- 			<input id="btnAdd" type='submit' class='btn btn-primary' value="送出" /> -->
<!--		</div>-->
<%-- 	</form:form> --%>

<!-- 	new end -->

	<!-- end main container -->

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
	<script src="<c:url value='/js/jquery-2.1.1.js' />"></script>
	<!--  plugins -->
	<script src="<c:url value='/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/js/menu.js' />"></script>
	<script src="<c:url value='/js/animated-headline.js' />"></script>
	<script src="<c:url value='/js/isotope.pkgd.min.js' />"></script>
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


	<script>
	
	if('${errorMsg}' != ''){
		swal('${errorMsg}', "", "warning");
	}

	function deviceChange(){
		var country = $('#country1').val();
		$('#deviceAmount').html(country);
		$('#device').val(country);
		if('' != country){
			var price = parseInt(country) * 1200;
			$('#devicePrice').html(price);
			$('#totalPrice').html(${totalPrice} + price + ($('#discountAmount').html() == '' ? 0 : parseInt($('#discountAmount').html())) );
			$('#amount').val(${totalPrice} + price + ($('#discountAmount').html() == '' ? 0 : parseInt($('#discountAmount').html())) );
		} else {
			$('#devicePrice').html('');
			$('#totalPrice').html(${totalPrice}  + ($('#discountAmount').html() == '' ? 0 : parseInt($('#discountAmount').html())) );
			$('#amount').val(${totalPrice}  + ($('#discountAmount').html() == '' ? 0 : parseInt($('#discountAmount').html())) );
		}
	}

	function couponRedeem(){
		var couponUrl = "<c:url value='/Car/Discount' />";
		$.ajax({type: 'POST',url: couponUrl,data: {couponNumber:$('#discount').val()},
			success: function(result){
		    if('Y' == result.invalidFlag){
		    	if($('#discount').val() != ""){
					swal("此優惠序號已過期或為無效序號", "", "warning");		    		
		    	}
		    	$('#couponName').html('');
		    	$('#couponName').val('');
			    $('#discountAmount').html('');
			    $('#totalPrice').html(${totalPrice} + ($('#devicePrice').html() == '' ? 0 : parseInt($('#devicePrice').html()) ));
			    $('#amount').val(${totalPrice} + ($('#devicePrice').html() == '' ? 0 : parseInt($('#devicePrice').html()) ));
		    } else {
			    $('#couponName').html(result.couponName);
			    $('#couponName').val(result.couponName);
			    $('#couponNo').val($('#discount').val());
			    $('#discountAmount').html(- result.discountAmount);
			    $('#totalPrice').html(${totalPrice} - result.discountAmount + ($('#devicePrice').html() == '' ? 0 : parseInt($('#devicePrice').html())) );
			    $('#amount').val(${totalPrice} - result.discountAmount + ($('#devicePrice').html() == '' ? 0 : parseInt($('#devicePrice').html())) );
		    }
		  }});
	}

	</script>

</body>

</html>