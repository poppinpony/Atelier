<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${forumClassifyIndex}</title>
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
    <!-- jQuery -->
    <script src="<c:url value='/js/jquery-2.1.1.js' />"></script>
    <!--  plugins -->
    <script src="<c:url value='/js/bootstrap.min.js' />"></script>
    <script src="<c:url value='/js/menu.js' />"></script>
    <script src="<c:url value='/js/animated-headline.js' />"></script>
    <script src="<c:url value='/js/isotope.pkgd.min.js' />"></script>


    <!--  custom script -->
    <script src="<c:url value='/js/custom.js'/>"></script>
	 <link href="<c:url value='/css/forum.css' />" rel="stylesheet">
	 
	 
	 
	 
	 
	 
	 
</head>
<body>
<jsp:include page="/WEB-INF/pages/include/top.jsp" />
 <!-- top bar -->
    <div class="top-bar">
        <h1>露營論壇</h1>
        <p><a href="#">camping</a> /enjoy life</p>
    </div>
    <!-- end top bar -->



    <!-- main container -->
    <div  class="classify-enter" style="list-style-type:none;">
       
                <!-- Classify_enter -->
                <div >
                    <nav class="">
                        <ul >
                            <li style="list-style-type:none;margin:center;"></li><br/>
                       	  	<li style="list-style-type:none;margin:center;"><a href="<c:url value='/Forum/forumIndex' />"  >露營休閒討論區</a></li><br/>
                            <li style="list-style-type:none;margin:center;"><a href="<c:url value='/Forum/forumIndex' />"  >露營帳篷討論區</a></li><br />
                            <li style="list-style-type:none;margin:center;"><a href="<c:url value='/Forum/forumIndex' />"  >露營寢具討論區</a></li><br />
                            <li style="list-style-type:none;margin:center;"><a href="<c:url value='/Forum/forumIndex' />"  >露營爐具桌椅討論區</a></li><br />
                            <li style="list-style-type:none;margin:center;"><a href="<c:url value='/Forum/forumIndex' />"  >露營料理討論區</a></li><br />
                            <li style="list-style-type:none;margin:center;"><a href="<c:url value='/Forum/forumIndex' />"  >露營地點討論區</a></li><br />
                            <li style="list-style-type:none;margin:center;"><a href="<c:url value='/Forum/forumIndex' />"  >露營車討論區</a></li><br />
                        </ul>
                    </nav>
                </div>
  </div>
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

    
    
    <!-- google analytics  -->


</body>

</html>