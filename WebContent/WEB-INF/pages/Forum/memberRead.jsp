<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${memberRead}</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<link rel="icon" href="<c:url value='/img/yuruIcon.png'/>" type="image/x-icon">

<!-- Bootstrap -->
<link href="<c:url value='/css/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/ionicons/css/ionicons.min.css'/>" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    
    <link rel="stylesheet" href="<c:url value='/css/article.css'/>" type="text/css">


<!-- modernizr -->
     <script src="<c:url value='/js/modernizr.js' />"></script>
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
     integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <!-- main css -->
    <link href="<c:url value='/css/style.css'/>" rel="stylesheet">



</head>
<body>


	<jsp:include page="/WEB-INF/pages/include/top.jsp" />
	<!-- top bar -->
	<div class="top-bar">
		<h1>露營論壇</h1>
		<p>
			<a href="#">camping</a> /enjoy life
		</p>
	</div>
	<!-- end top bar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0"> 
      <li class="nav-item"><a class="nav-link" href="<c:url value='/Forum/forumIndex' />" class="" >回上一頁</a></li>     
      <li class="nav-item"><a class="nav-link" href="<c:url value='/Forum/goInsert' />" class="" >新增文章</a></li>
      <li class="nav-item"><a class="nav-link " href="<c:url value='/Forum/articleList' />">個人文章一覽</a></li>
    </ul>
  </div>
</nav>
	
	<div style="float:right;width:20%;margin-right:80px">
					<div>&nbsp;</div>
                 	<img class="d-block img-fluid" src="<c:url value='/img/forum/sidebanner_2.png'/>" alt="First slide">
                    <div>&nbsp; </div>
                    <img  class="d-block img-fluid" src="<c:url value='/img/forum/sidebanner_1.png'/>" alt="First slide">
                    <div>&nbsp;</div>
                    <img class="d-block img-fluid" src="<c:url value='/img/forum/sidebanner_4.png'/>" alt="First slide">
                    <div>&nbsp;</div>
                    <img class="d-block img-fluid" src="<c:url value='/img/forum/sidebanner_3.png'/>" alt="First slide">
  					<div>&nbsp;</div>
	
				</div>
	
	
	
	
	      <!-- /.col-lg-3 -->

      <div class="col-lg-8" style="left:100px;">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="<c:url value='/img/forum/banner_4.png'/>" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="<c:url value='/img/forum/banner_1.jpg'/>" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="<c:url value='/img/forum/banner_2.jpg'/>" alt="Third slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="<c:url value='/img/forum/banner_3.jpg'/>" alt="Third slide">
            </div>
<!--             <div class="carousel-item"> -->
<!--               <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Third slide"> -->
<!--             </div> -->
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
	
	
	
	
	<!-- main container -->
	
	
	
	<div>&nbsp;</div>
	 <div id="container">
      <!-- User Column -->
      <div class="user-column">
        <img src="${memberBean.image}" height="100" alt="headshot">
        <div class="user-info">
          <a href="#" class="user-account">${PostBean.memberId}</a>
          <p class="user-sequence-first">樓主</p>
          <div class="extra-user-info">
            <dl class="pairs-justified">
              <dt>article : </dt>
              <dd style="float:left;"><div >  ${PostBean.poId}</div></dd>
            </dl>
            <dl class="pairs-justified">
              <dt>讚:</dt>
              <dd style="float:left;">${PostBean.likeNumber}</dd>
            </dl>
          </div> 
        </div>
      </div>
      
      <!-- Article Column -->
      
      <div class="article-column">
        <!-- Article Topic -->
        <div class="article-info">
          <p class="article-topic">${PostBean.poTitle}</p>
          
          
          <p class="article-act-list">${PostBean.poCreatTime}</p>
          <p class="article-act-list list-divider"></p>  
          <p class="article-act-list">${PostBean.clickNumber} views</p>
          <div style="float:right;">
            <p class="article-act-list">
              <i class="fa fa-share-alt" aria-hidden="true"></i> 分享</p>
            <p class="article-act-list list-divider"></p>
            <p class="article-act-list">
            <a href="<c:url value='/Forum/goReply?poId=${PostBean.poId}'/>">
            	<i class="fa fa-reply" aria-hidden="true"></i> 回覆</a></p>
            <p class="article-act-list list-divider"></p>
            <p class="article-act-list">
              <i class="fa fa-quote-right" aria-hidden="true"></i> 引用</p>            
          </div>
        </div>
        <!-- Article Content -->
        <div style="width:96%;padding:15px 0;" class="article-content">
         ${PostBean.poContent}
        <img src="${PostBean.poImage}" style="height:300px;">
         </div>
        <!-- Article Bottom Info -->
        <div class="article-bot-info">
          <p class="article-act-list">${PostBean.poUpDateTime}</p>
          <div style="float:right;">
            <p class="article-act-list">
              <i class="fa fa-share-alt" aria-hidden="true"></i> 分享</p>
            <p class="article-act-list list-divider"></p>
            <p class="article-act-list">
              <a href="<c:url value='/Forum/goReply?poId=${PostBean.poId}'/>">
            	<i class="fa fa-reply" aria-hidden="true"></i> 回覆</a></p>
            <p class="article-act-list list-divider"></p>
            <p class="article-act-list">
              <i class="fa fa-quote-right" aria-hidden="true"></i> 引用</p>            
          </div>
        </div>
      </div>

      
        
    </div>



	<div class=""
		style="display: block; width: 774.6px; height: 30px; float: none;"></div>
	
				<!-- 文章編輯區 -->
				
					
					
				<!-- 文章編輯區 -->

	<!---------------------------------------------------------------------------->
<c:forEach var="replyBean" items="${replyList}">
 <div id="container">
      <!-- User Column -->
      <div>&nbsp;</div>
      <div>&nbsp;</div>
      <div>&nbsp;</div>
      <div>&nbsp;</div>
      <div class="user-column">
 		 <img src="${memberBean.image}" height="100" alt="headshot">
         <div class="user-info">
          <a href="#" class="user-account">${replyBean.memberId}</a>
          <p class="user-sequence-first">回覆</p>
          <div class="extra-user-info">
            <dl class="pairs-justified">
              <dt>article : </dt>
              <dd><div style="float:left;">${PostBean.poId}</div></dd>
            </dl>
            <dl class="pairs-justified">
              <dt>讚:</dt>
              <dd></dd>
            </dl>
          </div> 
        </div>
      </div>
 
      
      <!-- Article Column -->
      <div class="article-column">
        <!-- Article Topic -->
        <div class="article-info">
          <p class="article-topic"></p>
          <p class="article-act-list">${replyBean.reCreatTime}</p>
          <p class="article-act-list list-divider"></p>  
          <p class="article-act-list"> views</p>
          <div style="float:right;">
            <p class="article-act-list">
              <i class="fa fa-share-alt" aria-hidden="true"></i> 分享</p>
            <p class="article-act-list list-divider"></p>
            <p class="article-act-list">
              <a href="<c:url value='/Forum/goReply?poId=${PostBean.poId}'/>">
            	<i class="fa fa-reply" aria-hidden="true"></i> 回覆</a></p>
            <p class="article-act-list list-divider"></p>
            <p class="article-act-list">
              <i class="fa fa-quote-right" aria-hidden="true"></i> 引用</p>            
          </div>
        </div>
        <!-- Article Content -->
        <div style="width:96%;padding:15px 0;" class="article-content">
          ${replyBean.reContent}
        <img src="${replyBean.reImage}" style="height:300px;">
          <div class="article-reply" style="width:96%;margin-left:2%;border-left:3px solid #eee;padding-left:1em;"><br>
            …<br>
          </div>
        </div>
        <!-- Article Bottom Info -->
        <div class="article-bot-info">
          <p class="article-act-list">${replyBean.reUpDateTime}</p>
          <div style="float:right;">
            <p class="article-act-list">
              <i class="fa fa-share-alt" aria-hidden="true"></i> 分享</p>
            <p class="article-act-list list-divider"></p>
            <p class="article-act-list">
              <a href="<c:url value='/Forum/goReply?poId=${PostBean.poId}'/>">
            	<i class="fa fa-reply" aria-hidden="true"></i> 回覆</a></p>
            <p class="article-act-list list-divider"></p>
            <p class="article-act-list">
              <i class="fa fa-quote-right" aria-hidden="true"></i> 引用</p>            
          </div>
        </div>
      </div>

    </div>
</c:forEach>

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


	<!--  custom script -->
	<script src="<c:url value='/js/custom.js' />"></script>
<script src="../js/menu.js"></script>
    <script src="../js/animated-headline.js"></script>
    <script src="../js/isotope.pkgd.min.js"></script>
    <script src="../js/custom.js"></script>  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/js/bootstrap.min.js" integrity="sha512-8qmis31OQi6hIRgvkht0s6mCOittjMa9GMqtK9hes5iEQBQE/Ca6yGE5FsW36vyipGoWQswBj/QBm2JR086Rkw==" crossorigin="anonymous"></script>
	
	

</body>
</html>