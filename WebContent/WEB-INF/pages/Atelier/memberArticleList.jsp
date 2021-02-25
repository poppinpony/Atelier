<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberArticleList</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<link rel="icon" href="<c:url value='/img/yuruIcon.png' />"
	type="image/x-icon">

<!-- Bootstrap -->
<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
<link href="<c:url value='/ionicons/css/ionicons.min.css' />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
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
<script src="https://code.jquery.com/jquery-3.5.1.js"
integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
crossorigin="anonymous"></script>


<%-- 	<jsp:include page="/WEB-INF/pages/include/top.jsp" /> --%>
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




	<!-- Just an image -->
<div style="position: relative;width:70%;border:1px solid #fff;left:2%;right:2%">
	<div style="width:30%;left:2%; float:left;">
	<nav class="navbar navbar-light bg-light" >
		<div>
		<a class="navbar-brand" href="#"> <img
			src="<c:url value='/img/yuruIcon.png' />" width="30" height="30"
			alt="" loading="lazy">
		</a>
		
		</div>
		<div style="float:right;" >
		<h2 ><span>Yuru.Camp 會員文章</span></h2>
		</div>
	</nav>
</div>
<div style="width:50%;left:25%;top:60%; " >
<div class="input-group mb-3" >
  <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" id="memberSearch">
  <button onclick="callMemberPost()" >會員發文一覽</button>
  <button onclick="callMemberReply()">會員回文一覽</button>
</div>
	</div>
</div>
	<!-- main container -->
		<!-- AJAX -->
<div id="List">


<div>
	<table class="table" id="memberPostList">
		
	</table>




	
</div>

</div>

<script>
function callMemberPost() {	
		var memberSearch = $('#memberSearch').val();
		console.log(memberSearch);

        $.ajax({
        	      type: 'GET',
                  url : '/yurucamp/Forum/memberPost?memberPost=' + memberSearch + '&type=memberPost',
                  success : function(data) {
								
                	  			console.log("data=" + data.length);
                	  			var resultHtml =
                	  			"<thead　class='thead-dark'>"
    	  						+"<tr>"
								+"<th>論壇分類</th>"
								+"<th>MemberID</th>"
								+"<th>文章標題</th>"
								+"<th>發文時間</th>"
								
								+"<th>管理動作</th>"
								+"</tr>"
								+"</thead>"
		                	  	if(data.length>0){
		                	  		cnt=0;
		                	  		
		                	  		 resultHtml += "<tbody>";
		                	  		
		                	  		for(let PostBean of data){
		                	  			console.log(PostBean);
		                	  			cnt++;
		                	  			if(cnt%2==0 ){
		                	  				colorx="#fff";
		                	  			}else{
		                	  				colorx="#dbcf83";
		                	  			}
		                	  			var updateArticle = "<c:url value='/Forum/updateArticle' />";
		                	  			var deleteArticle ="<c:url value='/Forum/DeletePost'/>";

		                	  			resultHtml = resultHtml  
		                	  			             + "<tr bgcolor ='"+ colorx + "'>"
		                	  						 + "<td style='display:none'>" + PostBean.poId + "</td>" 
		                	  				         + "<td>" + PostBean.forum + "</td>" 
		                	  			             + "<td>" + PostBean.memberId + "</td>"
		                  	  			             + "<td>"+"<a href=''>" + PostBean.poTitle + "</a></td>"
		                	  			             + "<td>" + PostBean.poCreatTime + "</td>"
		                	  			             
		                	  			             + "<td>" 
		                	  			             + "<button type='button' onclick=\"window.location.href = '" + updateArticle + "?poId=" + PostBean.poId + "' \"  >編輯</button>"   
		                	  			             + "<button type='button' onclick=\"window.location.href = '" + deleteArticle + "?poId=" + PostBean.poId + "' \"   >刪除</button>" 
		                	  			             + "</td>" 
		                  	  			        	 

		                	  			             + "</tr>";
		                	  			
		                	  			console.log(resultHtml);
		                	  			
		                	  			
// 		                	  			 <button type="button"  onclick="<c:url value='/Forum/updateArticle' />"  >編輯</button>
// 		                	  		     <button type="button"  onclick=""  >刪除</button>
		                	  		}
		                	  		
		                	  		resultHtml += "</tbody>";
		                	  		$("#memberPostList").html(resultHtml);
		                	  		
		                	  	}else{
		                	  		alert("此會員暫無發表文章，請重新搜尋");
		                	  		$("#memberPostList").html(resultHtml);
		                	  		
		                	  	}
                  }
        });
}
</script>

<script>
function callMemberReply() {	
	var memberSearch = $('#memberSearch').val();
	console.log(memberSearch);

$.ajax({
    type: 'GET',
    url : '/yurucamp/Forum/memberPost?memberPost=' + memberSearch + '&type=memberReply',
    success : function(data) {
					
  	  			console.log("data=" + data.length);
  	  			var resultHtml =
  	  			"<thead　class='thead-dark'>"
					+"<tr>"
					+"<th>主文文章</th>"
					+"<th>MemberID</th>"
					+"<th>文章標題</th>"
// 					+"<th>發文時間</th>"
					
					+"<th>管理動作</th>"
					+"</tr>"
					+"</thead>"
          	  	if(data.length>0){
          	  		cnt=0;
          	  		
          	  		 resultHtml += "<tbody>";
          	  		console.log(data);
          	  		for(let Row of data){
          	  			console.log(Row);
          	  			cnt++;
          	  			if(cnt%2==0 ){
          	  				colorx="#fff";
          	  			}else{
          	  				colorx="#dbcf83";
          	  			}
          	  			var updateArticle = "<c:url value='/Forum/updateArticle?poId='/>";
          	  			var deleteArticle ="<c:url value='/Forum/DeleteReply' />";
          	  			console.log(Row);
          	  			resultHtml = resultHtml  
          	  			             + "<tr bgcolor ='"+ colorx + "'>"
          	  			        	 + "<td >" + Row.PostBean.poId + "</td>" 
          	  			             
          	  			             + "<td>" + Row.ReplyBean.memberId + "</td>"
          	  			             + "<td>"+"<a href=''>" + Row.PostBean.poTitle + "</a></td>"
//           	  			             + "<td>" + Row.ReplyBean.reCreatTime + "</td>"
          	  			             
          	  			             + "<td>" 
        	  			             + "<button type='button' onclick=\"window.location.href = '" + updateArticle + "?poId=" + Row.ReplyBean.poId + "' \"  >編輯</button>"   
        	  			             + "<button type='button' onclick=\"window.location.href = '" + deleteArticle + "?poId=" + Row.PostBean.poId + "' \"   >刪除</button>" 
          	  			             + "</td>"
          	  			             + "</tr>";
          	  			
          	  			console.log(resultHtml);
          	  		}
          	  		
          	  		resultHtml += "</tbody>";
          	  		$("#memberPostList").html(resultHtml);
          	  		
          	  	}else{
          	  		alert("此會員暫無回覆文章，請重新搜尋");
          	  		$("#memberPostList").html(resultHtml);
          	  		
          	  	}
    }
});
}
</script> 


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
</body>
</html>