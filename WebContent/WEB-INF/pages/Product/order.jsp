<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>訂單完成</title>
<link rel="icon" href="../img/yuruIcon.png" type="image/x-icon">
<!-- Bootstrap -->
<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
<link href="<c:url value='/ionicons/css/ionicons.min.css' />"
	rel="stylesheet">
<!-- main css -->
<link href="<c:url value='/css/style.css' />" rel="stylesheet">
<!-- form css -->
<link href="<c:url value='/css/formstyle.css' />" rel='stylesheet'
	type='text/css' />
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
/* 	border: 5px solid #dbcf83; */
/* 	border-radius: 30px; */
	font-size:17px ;
	background-color:#FFFAF4;
	width: 600px;
	padding: 30px;
/* 	float:left; */
	margin:auto;
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
			<h1>商品訂購完成!!</h1>
			<p>
				<a href="#">Travel is the only thing you buy that makes you richer.</a>
			</p>
		</div>
	<!-- end top bar -->

	<!-- main container -->
	
		<div  class="book-agileinfo-form"><br><br>
   	
	<table id="amount-table">
		<tr>
			<td colspan="3" style="background:#dbcf83; font-size:20px; padding:6px" >訂單資料</td>
		</tr>
<!-- 		<tr> -->
<!-- 			<td class="tabletd">訂單編號</td> -->
<%-- 			<td colspan="2">${orderBean.id}</td> --%>
<!-- 		</tr> -->
        <tr>
			<td class="tabletd">訂購人</td>
			<td colspan="2">${memberBean.name}</td>
		</tr>
        <tr>
			<td class="tabletd">訂購人電話</td>
			<td colspan="2">${memberBean.phone}</td>
		</tr>
		<tr>
			<td class="tabletd">訂購日期</td>
			<td colspan="2"><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${orderBean.createTime}"/></td>
		</tr>
		<tr>
		<tr>
			<td class="tabletd">寄送地址:</td>
			<td id="couponName">${orderBean.orderAddress}</td>
			<td></td>
		</tr>
		
        <tr>
			<td class="tabletd">消費金額</td>
			<td colspan="2">$<fmt:formatNumber type="number" value="${(orderBean.total *10/9) - orderBean.fee }" maxFractionDigits="0"/>NT</td>
		</tr>
        <tr>
			<td class="tabletd">運費</td>
			<td colspan="2">$${orderBean.fee}</td>
		</tr>
		<tr>
			<td class="tabletd">合計總金額</td>
			<td colspan="2">$<fmt:formatNumber type="number" value="${orderBean.total}" maxFractionDigits="0"/>NT</td>
		</tr>
		<form>
		<tr>
			<td class="tabletd"><input type="button" value="查看訂單明細" onclick="qurey('${orderBean.id}')" style="padding: 5px "></td>
			<td></td>
			<td><input type="button" value="返回商城" onclick="location.href='<c:url value='/Product/Index'/>'" style="padding: 5px "></td>
		</tr>
		</form>
	</table>
	
	</div>
	<br><br>
	
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
                            <a href="https://news.china-airlines.com/bvct/branch?country=tw&amp;locale=zh">
                                <img src="../img/car/map.png" width="50px">
                                <p class="cal-app_name"><span>營業所資訊</span></p>
                            </a>
                        </li>
                        <li class="cal-xs-5 cal-app_item" cal-hover-img="../img/car/qa.png">
                            <a href="https://calec.china-airlines.com/OnlineSurvey/esv_introduction.aspx?lang=zh-TW&amp;country=tw&amp;locale=zh">
                                <img src="../img/car/qa.png" width="40px">
                                <p class="cal-app_name"><span>常見問與答</span></p>
                            </a>
                        </li>
                        <li class="cal-xs-5 cal-app_item" cal-hover-img="../img/car/email.png">
                            <a href="https://bookingportal.china-airlines.com/eRetailInterface/SubscribeNews.aspx?lang=zh-TW">
                                <img src="../img/car/email.png" width="40px">
                                <p class="cal-app_name"><span>聯絡我們</span></p>
                            </a>
                        </li>

        	</ul>
    	</div>

    </section>

	<div class="clear"></div>
	

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
	<!-- end back to top -->




	<!-- jQuery -->
	<script src="../js/jquery-2.1.1.js"></script>
	<!--  plugins -->
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/menu.js"></script>
	<script src="../js/animated-headline.js"></script>
	<script src="../js/isotope.pkgd.min.js"></script>


	<!--  custom script -->
	<script src="../js/custom.js"></script>

	<!-- google analytics  -->
	<script>
	
	function qurey(id){
		console.log(id);
		document.forms[0].action="<c:url value='/shoppingcart/orderDetail?id=" + id + "'/>" ;
		document.forms[0].method="post";
		document.forms[0].submit();
	}
	
	
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
		
	</script>

</body>

</html>