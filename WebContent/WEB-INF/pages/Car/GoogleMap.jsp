<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Box personal portfolio Template</title>

<script type="text/javascript">

var centerX = 25.033561;
var centerY = 121.542594;
var myCenter=new google.maps.LatLng(centerX,  centerY);
var map ;
function init() {
	var mapProp = {
		center : myCenter,
		zoom: 8,
		mapTypeId : google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
	var marker=new google.maps.Marker({
		  position: myCenter,
		  map: map,
// 		  animation: google.maps.Animation.DROP
// 		  animation: google.maps.Animation.BOUNCE
// 		  icon:'../img/car/motorhomes-icon2.png'
// 		  icon:'http://www.oxxostudio.tw/img/articles/201801/google-maps-3-marker-icon.png'
			icon: {
		      url: '../img/car/motorhomes-icon2.png',
		      scaledSize: new google.maps.Size(50, 50)
		    }
		});
	
	var markerGrandPlace = new google.maps.Marker({
		  position: new google.maps.LatLng(24.150641,120.650998),
		  map: map,
		  icon: {
		      url: '../img/car/motorhomes-icon2.png',
		      scaledSize: new google.maps.Size(50, 50)
		    }
// 		  title: "台中"
		});
	
	var markerGrandPlace = new google.maps.Marker({
		  position: new google.maps.LatLng(22.623332,120.301835),
		  map: map,
		  icon: {
		      url: '../img/car/motorhomes-icon2.png',
		      scaledSize: new google.maps.Size(50, 50)
		    }
// 		  title: "高雄"
		});
	
	var markerGrandPlace = new google.maps.Marker({
		  position: new google.maps.LatLng(24.030552,121.627325),
		  map: map,
		  icon: {
		      url: '../img/car/motorhomes-icon2.png',
		      scaledSize: new google.maps.Size(50, 50)
		    }
// 		  title: "花蓮"
		});
	
	var markerGrandPlace = new google.maps.Marker({
		  position: new google.maps.LatLng(22.997198,120.212359),
		  map: map,
// 		  title:"台南"
		  icon: {
		      url: '../img/car/motorhomes-icon2.png',
		      scaledSize: new google.maps.Size(50, 50)
		    }
		});
	
	marker.setMap(map);
	var infowindow = new google.maps.InfoWindow({
		content:"台北據點 <br> 大安捷運站4號出口  <br> (02)8982-8966  <br> 週一至週日 09:00 - 18:00"
		});
	google.maps.event.addListener(marker, 'click', function() {
		infowindow.open(map,marker);
		});

	
};


function addMarker(){
	var x1  = centerX + (Math.random() - 0.5 ) / 50.0;
	var y1  = centerY + (Math.random() - 0.5 ) /10.;
	var aCenter=new google.maps.LatLng(x1,  y1);
	var marker=new google.maps.Marker({
		  position: aCenter
		});
		marker.setMap(map);
}
function addMarkers(){
	var arr = [];
	for (x = 0; x < 10; x++){
	   var x1  = centerX + (Math.random() - 0.5 ) / 3.0;
	   var y1  = centerY + (Math.random() - 0.5 ) ;
	   arr.push(
		 {'x':x1,'y':y1}	  
	   );
	} 
	for (i = 0; i < arr.length; i++){
		var aCenter = new google.maps.LatLng(arr[i].x,  arr[i].y);
		var marker = new google.maps.Marker({
			  position: aCenter
		});
		marker.setMap(map);	   
	}
	
	
}

google.maps.event.addDomListener(window, 'load', init);

</script>
<link rel="icon" href="../img/yuruIcon.png" type="image/x-icon">
<!-- Bootstrap -->
<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
<link href="<c:url value='/ionicons/css/ionicons.min.css' />" rel="stylesheet">
<!-- main css -->
<link href="<c:url value='/css/style.css' />" rel="stylesheet">
<!-- form css -->
<link href="<c:url value='/css/formstyle.css' />" rel='stylesheet' type='text/css' />
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
		<h1>營業據點</h1>
		<p>
			<a href="#">Travel is the only thing you buy that makes you richer.</a>
		</p>
	</div>
	<!-- end top bar -->

	<!-- main container -->
<!-- 	<input type='button' value='加一個Marker' id='btn' onclick=addMarker() /> -->
<!-- 	<input type='button' value='加一組Marker' id='btn' onclick=addMarkers() /> -->
	<div id="googleMap" style="height:600px; width:100%;"></div><br>	
	
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