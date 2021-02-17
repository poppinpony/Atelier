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
	<title>露營區</title>
	
	<style type="text/css">
		.col-md-4{
			padding: 5pt;
		}
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/pages/include/top.jsp" />
	
	<!-- top bar -->
	<div class="top-bar">
		<h1>營地推薦</h1>
		<p><a href="#">CampSite</a>&nbsp;&nbsp;/&nbsp;&nbsp;live &amp; life</p>
	</div>
	<!-- end top bar -->

	<!-- main container -->
	<div class="main-container portfolio-inner clearfix">
		<!-- portfolio div -->
		<div class="portfolio-div">
			<div class="portfolio">

				<!-- portfolio_filter -->
				<div class="categories-grid wow fadeInLeft">
					<nav class="categories text-center">
						<ul class="portfolio_filter">
							<li><a href="" class="active" data-filter="*">全部露營區</a></li>
							<li><a href="" data-filter=".north">北部</a></li>
							<li><a href="" data-filter=".central">中部</a></li>
							<li><a href="" data-filter=".south">南部</a></li>
							<li><a href="" data-filter=".east">東部</a></li>
							<c:choose>
				            	<c:when test="${sessionScope.memberRolse eq 'admin'}">
									<li><a href="" 
									 onclick="location.href='<c:url value='/CampSite/QueryAllCamp'/>'">營地管理</a></li>
								</c:when>
						   </c:choose>
						</ul>
					</nav>
				</div>
				<!-- portfolio_filter -->

				<!-- portfolio_container -->
				<div class="no-padding portfolio_container clearfix">

					<!-- single work -->
					<div class="col-md-4 col-sm-6 north">
						<a href="<c:url value='/CampSite/reCAPTCHA_v3' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/tmd239/tmd239_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>甜蜜點休閒莊園</span> <em>北部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-12 central">
						<a href="<c:url value='/CampSite/fy374' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/nzfhg119/nzfhg119_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>南庄 鳳凰谷</span> <em>中部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-12 south">
						<a href="<c:url value='/CampSite/Test' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/cm349/cm349_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>啟茗露營區</span> <em>南部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-6 north">
						<a href="<c:url value='/CampSite/TestOne' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/dlh279/dlh279_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>得拉互</span> <em>北部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-6 east">
						<a href="<c:url value='/CampSite/xldkayu186' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/xldkayu186/xldkayu186_index.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>星亮點 Kayu</span> <em>東部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-6 north">
						<a href="<c:url value='#' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/lhb438/lhb438_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>利河伯休閒農園露營區</span> <em>北部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-12 central">
						<a href="<c:url value='#' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/hpmt248/hpmt248_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>西伯米達露營區</span> <em>中部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-12 south">
						<a href="<c:url value='#' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/jed394/jed394_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>吉恩典山丘</span> <em>南部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-6 east">
						<a href="<c:url value='/CampSite/PureInsert' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/ag332/ag332_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>阿柑果園露營區</span> <em>東部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-6 north">
						<a href="<c:url value='#' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/jstd143/jstd143_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>景色天地露營區</span> <em>北部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-12 central">
						<a href="<c:url value='#' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/smhck263/smhck263_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>司馬限360度景觀</span> <em>中部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-12 central">
						<a href="<c:url value='#' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/fy374/fy374_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>逢雲露營區</span> <em>中部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-6 north">
						<a href="<c:url value='#' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/smks369/smks369_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>司馬庫斯舊部落營地</span> <em>北部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

					<!-- single work -->
					<div class="col-md-4 col-sm-12 central">
						<a href="<c:url value='#' />" class="portfolio_item"> <img
							src="<c:url value='/img/camp/pltbyd193/pltbyd193_1.png' />" alt="image" class="img-responsive" />
							<span class="portfolio_item_hover">
								<span class="portfolio-border clearfix">
									<span class="item_info">
										<span>埔里聽瀑森林營地</span> <em>中部營地</em>
									</span>
								</span>
							</span>
						</a>
					</div>
					<!-- end single work -->

				</div>
				<!-- end portfolio_container -->
			</div>
			<!-- portfolio -->
		</div>
		<!-- end portfolio div -->
	</div>
	<!-- end main container -->

	<!-- footer -->
	<footer>
		<div class="container-fluid">
			<p class="copyright">© YuruCamp 2020</p>
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
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})
		(window, document, 'script','https://www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-76796224-1', 'auto');
		ga('send', 'pageview');
	</script>

</body>

</html>