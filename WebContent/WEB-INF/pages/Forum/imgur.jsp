<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imgur</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
   	<link rel="icon" href="<c:url value='/img/yuruIcon.png' />" type="image/x-icon">
    <!-- Bootstrap -->
    <link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
    <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link href="<c:url value='/ionicons/css/ionicons.min.css' />" rel="stylesheet">
    <!-- main css -->
    <link href="<c:url value='/css/style.css' />" rel="stylesheet">
<!--     modernizr -->
<%--     <script src="<c:url value='/js/modernizr.js' />"></script> --%>




</head>
<body>


<jsp:include page="/WEB-INF/pages/include/top.jsp" />
 <!-- top bar -->
    <div class="top-bar">
        <h1>露營論壇</h1>
        <p><a href="#">camping</a> /enjoy life</p>
    </div>
    <!-- end top bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">  
      <li class="nav-item"><a class="nav-link"  href="<c:url value='/Forum/goInsert' />">新增文章</a></li>
      <li class="nav-item"><a class="nav-link " href="<c:url value='/Forum/articleList' />">個人文章一覽</a></li>
    </ul>
  </div>
  </nav>
    <!-- main container -->
    
     <!-- end main container -->
				





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




<!--     jQuery -->
<%--     <script src="<c:url value='/js/jquery-2.1.1.js' />"></script> --%>
<!--     <script src="https://code.jquery.com/jquery-3.5.1.js" -->
<!-- integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" -->
<!-- crossorigin="anonymous"></script> -->
<!--      plugins -->
<%--     <script src="<c:url value='/js/bootstrap.min.js' />"></script> --%>
<%--     <script src="<c:url value='/js/menu.js' />"></script> --%>
<%--     <script src="<c:url value='/js/animated-headline.js' />"></script> --%>
<%--     <script src="<c:url value='/js/isotope.pkgd.min.js' />"></script> --%>


<!--      custom script -->
<%--     <script src="<c:url value='/js/custom.js' />"></script> --%>
    
    <!-- google analytics  -->

</body>
</html>