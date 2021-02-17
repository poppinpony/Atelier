<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>YuruCamp</title>
    <link rel="icon" href="<c:url value='/img/yuruIcon.png' />" type="image/x-icon">
	
	<!-- Bootstrap -->
	<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
	<link href="<c:url value='/ionicons/css/ionicons.min.css' />" rel="stylesheet">
	<!-- main css -->
	<link href="<c:url value='/css/style.css' />" rel="stylesheet">
	<!-- modernizr -->
	<script src="<c:url value='/js/modernizr.js' />"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<jsp:include page="/WEB-INF/pages/include/top.jsp" />
	
	<!-- box-intro -->
	<section class="box-intro">
		<div class="table-cell">
			<h1 class="box-headline letters rotate-2">
				<span class="box-words-wrapper">
					<b class="is-visible">yuru.</b>
	<!-- 			<b>&nbsp;coding.</b> -->
					<b style="text-align:center" >&nbsp;&nbsp;camp</b>
					<b>キャンプ</b>
				</span>
			</h1>
			<h5>everything you need, and enjoy your personal travel</h5>
		</div>
		
		<div class="mouse">
			<div class="scroll"></div>
		</div>
	</section>
	<!-- end box-intro -->


    <!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright">© Yuru Camp 2020</p>
        </div>
    </footer>
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
    
    <!-- google analytics  -->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-76796224-1', 'auto');
        ga('send', 'pageview');
    </script>
    
</body>

</html>