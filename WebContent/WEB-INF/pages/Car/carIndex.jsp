<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<link href="<c:url value='/ionicons/css/ionicons.min.css' />"
	rel="stylesheet">
<!-- main css -->
<link href="<c:url value='/css/style.css' />" rel="stylesheet">
<!-- form css -->
<link href="<c:url value='/css/formstyle.css' />" rel='stylesheet'
	type='text/css' />
<!-- ad css -->
<link href="<c:url value='/css/computer.css' />" rel='stylesheet' type='text/css' />
<%-- <link href="<c:url value='/css/computer2.css' />" rel='stylesheet' --%>
<!-- 	type='text/css' /> -->
<!-- modernizr -->
<script src="<c:url value='/js/modernizr.js' />"></script>
<!-- datepicker -->
<!-- 	<link href="/css/bootstrap.css" rel="stylesheet" /> -->
<!-- 	<link href="/css/bootstrap-datepicker.css" rel="stylesheet" /> -->
<!-- 	<script src="/js/datepicker/jquery-1.10.2.js" type="text/javascript"></script> -->
<!-- 	<script src="/js/datepicker/bootstrap.js" type="text/javascript"></script> -->
<%-- 	<script src="<c:url value='/js/datepicker/bootstrap-datepicker.js' /> type="text/javascript"></script> --%>

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
		rgba(255, 255, 255, .8)), url(../img/car.jpg);
	background: linear-gradient(rgba(255, 255, 255, .8),
		rgba(255, 255, 255, .8)), url(../img/car.jpg);
}

#form1 {
	box-shadow: 1px 1px 7px #8a6d3b73;
	padding: 16px;
	background-color: white;
	width: 600px;
	margin: auto;
}
</style>


<style>
/***** key__visual *****/
.key__visual {
	position: relative;
	height: 760px;
	padding-top: 115px;
	min-width: 1000px;
	z-index: 1;
	background: #fff;
}

.key__visual::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 115px;
	background: #fff;
	z-index: 9997;
}

.key__visual--inner {
	position: relative;
	height: 630px;
}

.key__visual--inner::before {
	content: "";
	background: url("../img/car/wave_top.png") repeat-x center 0;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 60px;
	z-index: 1;
}

.key__visual--inner::after {
	content: "";
	background: url("../img/car/wave_bottom.png") repeat-x center 0;
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 60px;
}

.key__visual .key__visual--main {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	margin: auto;
	width: 100%;
	height: 630px;
	overflow: hidden;
	z-index: 0;
	display: flex;
}

.key__visual .key__visual--main video {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	width: 100%;
	z-index: 0;
}

.key__visual .key__visual--main::after {
	content: "";
	background: #000;
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0.1;
	width: 100%;
	height: 100%;
	z-index: 1;
}

.key__visual h1 {
	color: #fff;
	font-size: 285.7%;
	font-weight: bold;
	position: absolute;
	top: 210px;
	left: 50%;
	transform: translateX(-50%);
	text-align: center;
	width: 980px;
	margin: 0 auto;
	z-index: 1;
}

.key__visual--movie {
	position: absolute;
	top: 270px;
	left: 50%;
	transform: translateX(-50%);
	text-align: center;
	margin: 8px auto 0;
	width: 980px;
	z-index: 1;
}

.key__visual--movie a {
	background: url(/car/common_new/images/parts/icon_link_01.png) no-repeat
		0 center;
	background-size: 25px;
	color: #fff;
	font-size: 128.5%;
	font-weight: bold;
	padding: 6px 0 6px 35px;
}

.key__visual--movie a:hover {
	text-decoration: underline;
}

.key__visual--banner {
	position: absolute;
	left: 50%;
	bottom: 15%;
	margin-left: -359px;
}

.key__visual--search {
	position: relative;
	text-align: center;
	margin-top: 38px;
	z-index: 1;
}

.key__visual--search button {
	position: relative;
	background: url(/car/common_new/images/parts/icon_search.png) no-repeat
		18px center #F08300;
	background-size: 20px;
	border: 2px solid #fff;
	border-radius: 25px;
	color: #fff;
	display: inline-block;
	font-size: 114.2%;
	font-weight: bold;
	vertical-align: middle;
	overflow: hidden;
	padding: 11px 40px 10px;
	position: relative;
	width: 240px;
	z-index: 1;
}

.key__visual--search button:before, .key__visual--search button:after {
	content: "";
	background: #fff;
	position: absolute;
	top: 0;
	bottom: 7px;
	right: 15px;
	margin: auto 0;
	width: 10px;
	height: 1px;
	transform: rotate(50deg);
	z-index: 0;
}

.key__visual--search button:after {
	top: 7px;
	bottom: 0;
	transform: rotate(-50deg);
}

.key__visual--bnr {
	position: absolute;
	bottom: 214px;
	left: 0;
	z-index: 9999;
	width: 100%;
}

#img {
	opacity: 0.7;
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
	<!-- 	<div class="top-bar"> -->
	<!-- 		<h1>露營車租借</h1> -->
	<!-- 		<p> -->
	<!-- 			<a href="#">Travel is the only thing you buy that makes you richer.</a> -->
	<!-- 		</p> -->
	<!-- 	</div> -->
	<!-- end top bar -->

	<!-- main container -->

	<div class="key__visual">
		<div class="book-appointment key__visual--inner">
			<div class="key__visual--main">
				<video class="lazyloaded" src="../img/car/key_movie.mp4" id="img"
					playsinline loop muted autoplay></video>
			</div>
			<div class="key__visual--bnr book-agileinfo-form">
				<form id="form1" name="form1"
					action="<c:url value='/Car/reservation' />" method="post">

					<div class="main-agile-sectns">
						<div class="agileits-btm-spc form-text1">
							<img src="../img/car/location.png" width="15px"> <select
								name="dept" id="country1" class="frm-field required sect"
								required>
								<option value="">取車地點</option>
								<option value="台北">台北</option>
								<option value="台中">台中</option>
								<option value="台南">台南</option>
								<option value="高雄">高雄</option>
								<option value="花蓮">花蓮</option>
							</select>
						</div>
						<div class="agileits-btm-spc form-text2">
							<img src="../img/car/location.png" width="15px"> <select
								name="ret" id="country" class="frm-field required" required>
								<option value="">還車地點</option>
								<option value="台北">台北</option>
								<option value="台中">台中</option>
								<option value="台南">台南</option>
								<option value="高雄">高雄</option>
								<option value="花蓮">花蓮</option>
							</select>
						</div>
					</div>
					<div class="main-agile-sectns">
						<div class="agileits-btm-spc form-text2">
							<img src="../img/car/calender.png" width="15px"> 
							<input type="date" placeholder="取車日期" name="deptDate"
								class="frm-field required" required id="deptDate" style="border:none;width:230px;height:40px; border-bottom: 2px solid #b9af6f;"
								onchange="changeMin();">
<!-- 							<input class="datepicker form-control" type="text"/> -->
						</div>
						<div class="agileits-btm-spc form-text2">
							<img src="../img/car/clock.png" width="15px"> <select
								name="deptTime" id="country" class="frm-field required" required>
								<option value="">時間</option>
								<option value="9:00">9:00</option>
								<option value="10:00">10:00</option>
								<option value="11:00">11:00</option>
								<option value="12:00">12:00</option>
								<option value="13:00">13:00</option>
								<option value="14:00">14:00</option>
								<option value="15:00">15:00</option>
								<option value="16:00">16:00</option>
								<option value="17:00">17:00</option>
								<option value="18:00">18:00</option>
							</select>
						</div>
					</div>
					<div class="main-agile-sectns">
						<div class="agileits-btm-spc form-text1">
							<img src="../img/car/calender.png" width="15px"> <input
								type="date" title="還車日期" name="returnDate" style="border:none;width:230px;height:40px;border-bottom: 2px solid #b9af6f;"
								class="frm-field required" required id="returnDate">
						</div>
						<div class="agileits-btm-spc form-text2">
							<img src="../img/car/clock.png" width="15px"> <select
								name="returnTime" id="country"
								onchange="change_country(this.value)" class="frm-field required"
								required>
								<option value="">時間</option>
								<option value="9:00">9:00</option>
								<option value="10:00">10:00</option>
								<option value="11:00">11:00</option>
								<option value="12:00">12:00</option>
								<option value="13:00">13:00</option>
								<option value="14:00">14:00</option>
								<option value="15:00">15:00</option>
								<option value="16:00">16:00</option>
								<option value="17:00">17:00</option>
								<option value="18:00">18:00</option>
							</select>
						</div>
					</div>

					<div class="wthree-text"></div>
					<input type="submit" value="Search">
					<div class="clear"></div>
				</form>
				<form id="form2" name="form2" action="<c:url value='/Car/Order' />" method="post"></form>
			</div>

		</div>
	</div>
	</div>

		<section class="main-news">
        <h4 class="section-til">
           	 最新情報
        </h4>
                <a href="/News/Detail?ID=62" class="main-news-box1">
                    <div class="content main-news-box-pic" style="background: url(../img/car/001.jpg) center no-repeat;
                    -moz-background-size: cover; -o-background-size: cover; -webkit-background-size: cover; background-size: cover;">
                        <div class="main-news-box-til">
                            <span>多日租車優惠活動</span>
                        </div>
                    </div>
                    <div class="main-news-hover">
                        <div class="main-news-hover-til">
                         	  多日租車優惠活動
                        </div>
                        
                        <p class="main-news-hover-desc">提供多日租車優惠活動，租越久省越多</p>
                    </div>
                </a>
                <a href="/News/Detail?ID=65" class="main-news-box1">
                    <div class="content main-news-box-pic" style="background: url(../img/car/002.jpg) center no-repeat;
                    -moz-background-size: cover; -o-background-size: cover; -webkit-background-size: cover; background-size: cover;">
                        <div class="main-news-box-til">
                            <span>秋日舒活．悠遊趣</span>
                        </div>
                    </div>
                    <div class="main-news-hover">
                        <div class="main-news-hover-til">
                         	   秋日舒活．悠遊趣
                        </div>
                        
                        <p class="main-news-hover-desc">在落雨松林下睡一晚</p>
                    </div>
                </a>
                <a href="/News/Detail?ID=64" class="main-news-box2">
                    <div class="content main-news-box-pic" style="background: url(../img/car/003.png) center no-repeat;
                    -moz-background-size: cover; -o-background-size: cover; -webkit-background-size: cover; background-size: cover;">
                        <div class="main-news-box-til">
                            <span>租車優惠券限時大方送</span>
                        </div>
                        
                    </div>
                    <div class="main-news-hover">
                        <div class="main-news-hover-til">
                            	感恩時節．優惠券送給您
                        </div>
                        
                        <p class="main-news-hover-desc">快來預約拿好康</p>
                    </div>
                </a>
                <a href="/News/Detail?ID=63" class="main-news-box2">
                    <div class="content main-news-box-pic" style="background: url(../img/car/004-3.png) center no-repeat;
                    -moz-background-size: cover; -o-background-size: cover; -webkit-background-size: cover; background-size: cover;">
                        <div class="main-news-box-til">
                            <span>悠遊租車 x 台新GOGO 卡友優惠</span>
                        </div>
                    </div>
                    <div class="main-news-hover">
                        <div class="main-news-hover-til">
                           	 悠遊租車 x 台新GOGO 卡友優惠
                        </div>
                        
                        <p class="main-news-hover-desc">台新GOGO卡友享8折</p>
                    </div>
                </a>
                <a href="/News/Detail?ID=66" class="main-news-box2">
                    <div class="content main-news-box-pic" style="background: url(../img/car/005.png) center no-repeat;
                    -moz-background-size: cover; -o-background-size: cover; -webkit-background-size: cover; background-size: cover;">
                        <div class="main-news-box-til">
                            <span>LINE Pay租車  送LINE POINTS</span>
                        </div>
                    </div>
                    <div class="main-news-hover">
                        <div class="main-news-hover-til">
                            LINE Pay租車  送LINE POINTS
                        </div>
                        
                        <p class="main-news-hover-desc">平日回饋15%，假日10%</p>
                    </div>
                </a>
        <a href="/News" class="main-news-more-btn btn">看更多</a>
    </section>
    
<!--服務特色 -->

  <section class="how-service">
        <h3 class="section-til" id="HowService">
            服務特色
        </h3>
        <div class="icon-grid how-service-grid">
            <ul>
                <li>
                    <div class="how-service-unlimited">
                        <i class="svg"><img src="../img/car/01.png"></i>
                        <div class="icon-grid-til">無單日里程上限</div>
                        <div class="icon-grid-desc">
                            	租車不限里程數，讓您盡情安排行程不受限制
                        </div>
                        <!--<span class="icon-grid-hint">
                            本服務需視車輛調度情況始能確定是否提供，中租租車保留異地還車之接單決定權。
                        </span>-->
                    </div>
                </li>
                <li>
                    <div class="how-service-clock">
                        <i class="svg"><img src="../img/car/02.png"></i>
                        <div class="icon-grid-til">逾時10小時以1日租金計算</div>
                        <div class="icon-grid-desc">
                            	逾時超過10小時才以1日租金計算，優於同業，讓您還車不趕時，平安回家
                        </div>
                        
                    </div>
                </li>
                <li>
                    <div class="how-service-24">
                        <i class="svg"><img src="../img/car/03.png"></i>
                        <div class="icon-grid-til">24小時0800服務專線</div>
                        <div class="icon-grid-desc">
                            24小時0800服務專線，服務不打烊
                        </div>
                    </div>
                </li>
                <li>
                    <div class="how-service-identity">
                        <i class="svg"><img src="../img/car/04.png"></i>
                        <div class="icon-grid-til">免押證件、免簽本票</div>
                        <div class="icon-grid-desc">
                            	免押證件、免簽本票，承租人符合規定出示相關證件，刷卡後即可租車
                        </div>
                    </div>
                </li>
                <li>
                    <div class="how-service-oil">
                        <i class="svg"><img src="../img/car/05.png"></i>
                        <div class="icon-grid-til">無加收里程費</div>
                        <div class="icon-grid-desc">
                            	租車不依里程收費，讓您輕鬆使用無負擔
                        </div>
                    </div>
                </li>
                <li>
                    <div class="how-service-return">
                        <i class="svg" ><img src="../img/car/06.png"></i>
                        <div class="icon-grid-til">異地還車服務</div>
                        <div class="icon-grid-desc">
                            	提供全台短租站異地還車服務
                        </div>
                        <span class="icon-grid-hint">
                            	本服務需視車輛調度情況始能確定是否提供，中租租車保留異地還車之接單決定權
                        </span>
<!--                         <a href="#" data-href="notice_Return" class="icon-grid-hint notice-anchor-item"> -->
<!--                           	  詳細資訊 -->
<!--                         </a> -->
                    </div>
                </li>
                <li>
                    <div class="how-service-shield">
                        <i class="svg"><img src="../img/car/07.png"></i>
                        <div class="icon-grid-til">安全保障</div>
                        <div class="icon-grid-desc">
                           	 車損險、竊盜險、乘客險、強制險、第三人責任險
                        </div>
<!--                         <a href="#" data-href="notice_Shield" class="icon-grid-hint notice-anchor-item"> -->
<!--                            	 詳細資訊 -->
<!--                         </a> -->
                    </div>
                </li>
                <li>
                    <div class="how-service-value">
                        <i class="svg"><img src="../img/car/08.png"></i>
                        <div class="icon-grid-til">行車守護加購</div>
                        <div class="icon-grid-desc">
                            	加購即免負擔車損自負額、營業損失及竊盜自負額
                        </div>
<!--                         <a href="https://www.rentalcar.com.tw/News/Detail?ID=47" target="_blank" class="icon-grid-hint notice-anchor-item">詳細資訊</a> -->
                    </div>
                </li>
            </ul>
        </div>
    </section>

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
	if('${errorMsg}' != ''){
// 		alert('${errorMsg}');
		swal('${errorMsg}', "", "warning");
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
			document.getElementById("returnDate").setAttribute("min", deptd);
		}
		
			 
		 function queryContract(){
			var action = document.getElementById("form2").action;
			document.getElementById("form2").submit();
		 }
		 
	</script>

</body>

</html>