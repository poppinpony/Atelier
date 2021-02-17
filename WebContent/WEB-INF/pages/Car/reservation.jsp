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
		rgba(255, 255, 255, .8)), url../img/car/car.jpg);
}

.cartype{
	border: 1px solid #dbcf83;
    border-radius:30px;
    width:800px;
    padding: 20px;
    margin: auto;
/*     float:left; */
}
.cartypetd {
    padding:10px;
        }
#form2{
	box-shadow: 1px 1px 7px #8a6d3b73;
	padding:16px;
}
.country{
    width: 64%;
    color: #4a462c;
    font-size: 16px;
    letter-spacing: 1.5px;
    padding: 8px 8px;
    outline: none;
    background: rgba(255, 255, 255, 0);
    border: none;
    border-bottom: 2px solid #b9af6f;
    box-sizing: border-box;
    font-family: 'Roboto', sans-serif;
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
	<div class="book-appointment">
		<!-- <h2>Personal Details</h2> -->
		<div class="book-agileinfo-form">
			<form id="form2" name="form2" action="<c:url value='/Car/reservation' />" method="post">
				<input type="hidden" id="type" name="type" value="">
				<input type="hidden" id="amount" name="amount" value="">
				<input type="hidden" id="totalPrice" name="totalPrice" value="">
				<input type="hidden" id="normalPrice" name="normalPrice" value="">
				<input type="hidden" id="discountPrice" name="discountPrice" value="">
				<input type="hidden" id="carId" name="carId" value="">
				<div class="main-agile-sectns">
					<div class="agileits-btm-spc form-text1">
						<img src="../img/car/location.png" width="15px">
						<select name="dept" id="country1" class="frm-field required sect">
							<option value="">取車地點</option>
							<option value="台北" ${dept eq '台北' ? 'selected' : ''}>台北</option>
							<option value="台中" ${dept eq '台中' ? 'selected' : ''}>台中</option>
							<option value="台南" ${dept eq '台南' ? 'selected' : ''}>台南</option>
							<option value="高雄" ${dept eq '高雄' ? 'selected' : ''}>高雄</option>
							<option value="花蓮" ${dept eq '花蓮' ? 'selected' : ''}>花蓮</option>
						</select>
					</div>
					<div class="agileits-btm-spc form-text2">
						<img src="../img/car/location.png" width="15px">
						<select name="ret" id="country" class="frm-field required">
							<option value="">還車地點</option>
							<option value="台北" ${ret eq '台北' ? 'selected' : ''}>台北</option>
							<option value="台中" ${ret eq '台中' ? 'selected' : ''}>台中</option>
							<option value="台南" ${ret eq '台南' ? 'selected' : ''}>台南</option>
							<option value="高雄" ${ret eq '高雄' ? 'selected' : ''}>高雄</option>
							<option value="花蓮" ${ret eq '花蓮' ? 'selected' : ''}>花蓮</option>
						</select>
					</div>
				</div>
				<div class="main-agile-sectns">
					<div class="agileits-btm-spc form-text1">
					<img src="../img/car/calender.png" width="15px">
						<input type="date" placeholder="取車日期" name="deptDate" class="frm-field required" required 
							style="border:none;width:380px;height:40px; border-bottom: 2px solid #b9af6f;"
							value="${deptDate}" id="deptDate">
<!-- 							<input type="text" id="datepicker"> -->
					</div>
					<div class="agileits-btm-spc form-text2">
						<img src="../img/car/clock.png" width="15px">
						<select name="deptTime" id="country" class="frm-field required" required>
							<option value="">時間</option>
							<option value="9:00" ${deptTime eq '9:00' ? 'selected' : ''}>9:00</option>
							<option value="10:00" ${deptTime eq '10:00' ? 'selected' : ''}>10:00</option>
							<option value="11:00" ${deptTime eq '11:00' ? 'selected' : ''}>11:00</option>
							<option value="12:00" ${deptTime eq '12:00' ? 'selected' : ''}>12:00</option>
							<option value="13:00" ${deptTime eq '13:00' ? 'selected' : ''}>13:00</option>
							<option value="14:00" ${deptTime eq '14:00' ? 'selected' : ''}>14:00</option>
							<option value="15:00" ${deptTime eq '15:00' ? 'selected' : ''}>15:00</option>
							<option value="16:00" ${deptTime eq '16:00' ? 'selected' : ''}>16:00</option>
							<option value="17:00" ${deptTime eq '17:00' ? 'selected' : ''}>17:00</option>
							<option value="18:00" ${deptTime eq '18:00' ? 'selected' : ''}>18:00</option>
						</select>
					</div>
				</div>
				<div class="main-agile-sectns">
					<div class="agileits-btm-spc form-text1">
					<img src="../img/car/calender.png" width="15px">
						<input type="date" placeholder="還車日期" name="returnDate" class="frm-field required" required
							style="border:none;width:380px;height:40px; border-bottom: 2px solid #b9af6f;"
							value="${returnDate}" id="returnDate">
					</div>
					<div class="agileits-btm-spc form-text2">
						<img src="../img/car/clock.png" width="15px">
						<select name="returnTime" id="country" class="frm-field required">
							<option value="">時間</option>
							<option value="9:00" ${returnTime eq '9:00' ? 'selected' : ''}>9:00</option>
							<option value="10:00" ${returnTime eq '10:00' ? 'selected' : ''}>10:00</option>
							<option value="11:00" ${returnTime eq '11:00' ? 'selected' : ''}>11:00</option>
							<option value="12:00" ${returnTime eq '12:00' ? 'selected' : ''}>12:00</option>
							<option value="13:00" ${returnTime eq '13:00' ? 'selected' : ''}>13:00</option>
							<option value="14:00" ${returnTime eq '14:00' ? 'selected' : ''}>14:00</option>
							<option value="15:00" ${returnTime eq '15:00' ? 'selected' : ''}>15:00</option>
							<option value="16:00" ${returnTime eq '16:00' ? 'selected' : ''}>16:00</option>
							<option value="17:00" ${returnTime eq '17:00' ? 'selected' : ''}>17:00</option>
							<option value="18:00" ${returnTime eq '18:00' ? 'selected' : ''}>18:00</option>
						</select>
					</div>
				</div>

				<div class="wthree-text">

				</div>
				<input type="submit" value="Search">
				<div class="clear"></div>
			</form>
		</div>

	</div>
	<br>

	<div class="container reserve-car">
    <section class="reserve-step">
        <div class="reserve-step-group">
            <ol>
                <li class="step-success">
                    <div class="step-circle"><img src="../img/car/check.png" width=12px;></div>
                    <div class="step-name">選擇地點、時間 </div>
<!--                         <a href="javascript:void(0)" class="step-edit edit_reserve_location">重新選擇<i class="svg"></i></a> -->
                </li>
                <li class="step-now">
                    <div class="step-num step-circle">2</div>
                    <div class="step-name">選擇車型、數量</div>
                </li>
                <li>
                    <div class="step-num step-circle" style="background-color: transparent;">3</div>
                    <div class="step-name">加購配件</div>
                </li>
                <li>
                    <div class="step-num step-circle" style="background-color: transparent;">4</div>
                    <div class="step-name">完成預約</div>
                </li>
<!--                 <li> -->
<!--                     <div class="step-num step-circle" style="background-color: transparent;">5</div> -->
<!--                     <div class="step-name">付款</div> -->
<!--                 </li> -->
            </ol>
        </div>
    </section>
    <br>

	<div class="book-agileinfo-form input">
			<form id="form3" name="form3" action="<c:url value='/Car/reservation2' />" method="post">
		<c:forEach items="${planList}" var="data" varStatus="step">
			<table class="cartype">
				<tr>
					<td colspan="2" style="text-align:center;width:200px;" class="cartypetd">${data.image}</td>
					<td colspan="1" class="cartypetd"><font style="font-size:20px">${data.type}</font><input type="hidden" id="type${step.index}" name="type${step.index}" value="${data.type}"></td>
				</tr>
				<tr>
					<td class="cartypetd" style="text-align:center">一般價格</td>
					<td style="text-align:center">三日價格</td>
					<td style="text-align:center">五日價格</td>
				</tr>
				<tr>
					<td style="text-align:center">${data.price} /日<input type="hidden" id="oneDayPrice_${step.index}" value="${data.price}"></td>
<%-- 					<fmt:parseNumber value="${data.price*0.95}" type="currency"/>			 --%>
<%-- 						<fmt:formatNumber type=”number” value=”${data.price*0.95}” maxFractionDigits=”0″/> --%>
					<td style="text-align:center">${data.price*0.95} /日<input type="hidden" id="threeDaysPrice_${step.index}" value="${data.price*0.95}"></td>
					<td style="text-align:center">${data.price*0.9} /日<input type="hidden" id="fiveDaysPrice_${step.index}" value="${data.price*0.9}"></td>
				</tr>
				<tr><td></td></tr>
				<tr>
					<td></td>
					<td></td>
					<td style="text-align:center">數量
					<select name="amount" id="amount${step.index}" class="country">
							<option value="">請選擇</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
					</select>
					</td>
				</tr>
				<tr>
					<td colspan="3" style="text-align:center">
						<input type="button" value="選擇這輛" onclick="doNext('${step.index}');">
						<input type="hidden" id="carId_${step.index}" value="${data.id} " >
					</td>
				</tr>
			</table>
			<br>
		</c:forEach>

		</form>
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

		//   日期檢查
		var today = new Date();
		var todayPlus3Month = '';
		var dd = today.getDate();
		var mm = today.getMonth() + 1; //January is 0!
		var mm2 = today.getMonth() + 4; //January is 0!
		var yyyy = today.getFullYear();
		if (dd < 10) {
			dd = '0' + dd
		}
		if (mm < 10) {
			mm = '0' + mm
		}

		today = yyyy + '-' + mm + '-' + dd;
		todayPlus3Month = yyyy + '-' + mm2 + '-' + dd;
		document.getElementById("deptDate").setAttribute("min", today);
		document.getElementById("returnDate").setAttribute("min", today);
		document.getElementById("deptDate").setAttribute("max", todayPlus3Month);
		document.getElementById("returnDate").setAttribute("max", todayPlus3Month);

		function changeMin() {
			let deptd = $('#deptDate').val();
			document.getElementById("returnDate").setAttribute("min", deptDate);
		}


		function doNext(count){
			var type = $('#type' + count).val();
			var amount = $('#amount' + count).val();
			var carId = $('#carId_' + count).val();
			if(amount == null || amount == ''){
				swal("請選擇車輛數量", "", "warning");
				return;
			}
			$('#type').val(type);
			$('#amount').val(amount);
			$('#carId').val(carId);

			//  金額計算
			var date1 = new Date($('#deptDate').val());
			var date2 = new Date($('#returnDate').val());
			var Difference_In_Time = date2.getTime() - date1.getTime();
			var Difference_In_Days = Difference_In_Time / (1000 * 3600 * 24);

			var price = 0;
			var price2 = 0;
			var discount = 0;
			price2 = Difference_In_Days * parseInt($('#oneDayPrice_'+count).val()) * parseInt($('#amount'+count).val());
			if(Difference_In_Days < 3){
				price = Difference_In_Days * parseInt($('#oneDayPrice_'+count).val()) * parseInt($('#amount'+count).val());
			}else if(Difference_In_Days >= 3 && Difference_In_Days < 5){
				price = Difference_In_Days * parseInt($('#threeDaysPrice_'+count).val()) * parseInt($('#amount'+count).val());
			}else if(Difference_In_Days >= 5){
				price = Difference_In_Days * parseInt($('#fiveDaysPrice_'+count).val()) * parseInt($('#amount'+count).val());
			}
			dicount = price2 - price;
			$('#normalPrice').val(price2);
			$('#totalPrice').val(price);
			$('#discountPrice').val(dicount);
			var action = document.getElementById("form2").action;
			$('#form2').attr('action', action + "2").submit();
			document.getElementById("form2").submit();
		}

		function queryContract(){
			var action = document.getElementById("form2").action;
			document.getElementById("form2").submit();
		 }

	</script>

</body>

</html>