<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>

<style>

*{
font-family: 微軟正黑體;
font-family: Arial;
}

select {
    height: 37px;
    border-radius: 3px;
    border: 1px solid #ccc;
    margin-left: 3px;
   
}
</style>
<meta charset="UTF-8">
<title>露營商城</title>
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
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
     integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
</head>
<body>


<jsp:include page="/WEB-INF/pages/include/top2.jsp" />

 <!-- cart -->
<div class='myblock' style='position:fixed; bottom:100px; right:10px; background-color:white; '> 
  <a href="<c:url value='/shoppingcart'/>"><img src="../img\product\cart.png" height="30" />
</div>

 <!-- top bar -->
    <div class="top-bar">
        <h1>露營商城</h1>
        <p><a href="#">camping</a> /enjoy life</p>
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
						<ul class="portfolio_filter" style="margin-bottom: 0;">
<!-- 							<li><a href="" style='background-color:#dbcf83;border-radius:5px'>All</a></li> -->
<!-- 							<li><a href="" style='background-color:#dbcf83;border-radius:5px'>Photography</a></li> -->
<!-- 							<li><a href="" style='background-color:#dbcf83;border-radius:5px'>Logo</a></li> -->
<!-- 							<li><a href="" style='background-color:#dbcf83;border-radius:5px'>Graphics</a></li> -->
<!-- 							<li><a href="" style='background-color:#dbcf83;border-radius:5px'>Advertising</a></li> -->
							<li><a href="<c:url value='/'/>" class="list-group-item" style="font-size: 25px">首頁</a></li>
							<li><a href="<c:url value='/Product/Index'/>" class="list-group-item" style="font-size: 25px">所有商品</a></li>
							<li><a href="#" class="list-group-item" style="font-size: 25px">促銷活動</a></li>
							<li><a href="#" class="list-group-item" style="font-size: 25px">最新消息</a></li>
<%-- 							<li> <a href="<c:url value='/Product/BrandNUIT'/>" class="list-group-item" style="font-size: 25px;background-color:#dbcf83;border-radius:5px">台灣 努特  Nuit</a></li> --%>
							 
        
							<li>
							<form action="<c:url value='/Product/orderby'/>" method="POST">
							<select id="orderby" name="orderby" onchange="this.form.submit()" style="font-size: 25px"> 
						            <option value="">排序</option>
									<option value="1">上架時間新→舊</option>
									<option value="2">上架時間舊→新</option>
									<option value="3">價格順序高→低</option>
									<option value="4">價格順序低→高</option>
									<option value="5">熱門高→低</option>
									<option value="6">熱門低→高</option>
							</select> 
							</form>
							</li>
							<li>
							<form action="<c:url value='/Product/search'/>" method="Get">&nbsp;&nbsp;
							<input name="name" type="search" placeholder="Search..." onchange="this.form.submit()" style="font-size: 25px"/>
							</form>
							</li>
<%-- 							<c:choose> --%>
<%-- 				            <c:when test="${sessionScope.memberRolse eq 'admin'}"> --%>
<%-- 							<li><a href="<c:url value='/Product/BackStageIndex'/>" style="font-size: 25px;border-radius:5px;background-color:#D2E9FF" class="list-group-item">商城管理系統</a></li> --%>
<%-- 							</c:when> --%>
<%-- 						   </c:choose> --%>
						</ul>
							<c:choose>
				            <c:when test="${sessionScope.memberRolse eq 'admin'}">
						<br>
						<ul  class="portfolio_filter" style="margin-bottom: 0;" >
<%-- 							<li><a href="<c:url value='/Product/BackStageIndex'/>" style="font-size: 25px;border-radius:5px;background-color:#D2E9FF" class="list-group-item">商城管理系統</a></li> --%>
							<li><input type="button" style="font-size: 25px;border-radius:5px;background-color:#D2E9FF;padding:0px 10px" class="list-group-item" readonly value="商城管理系統" ></li>
					     	<li><a href="<c:url value='/Product/GetAllProduct'/>" class="list-group-item" style="font-size: 25px">管理產品資料</a></li>
<%-- 							<li><a href="<c:url value='/Product/InsertProduct'/>" class="list-group-item" style="font-size: 25px">新增產品</a></li> --%>
						</ul>
							</c:when>
						   </c:choose>
					</nav>
				</div>
				<!-- portfolio_filter -->

				<!-- portfolio_container -->

				<!-- end portfolio_container -->
			</div>
			<!-- portfolio -->
		</div>
		<!-- end portfolio div -->
	</div>
    <!-- end main container -->

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">

        <h1 class="my-4" style="font-family: Arial">Brand</h1>
        <div class="list-group">
          <a href="<c:url value='/Product/BrandNUIT'/>" class="list-group-item" style="font-size: 25px">台灣 努特 Nuit</a>
          <a href="<c:url value='/Product/BrandRHINO'/>" class="list-group-item" style="font-size: 25px">台灣 犀牛 RHINO</a>
          <a href="<c:url value='/Product/BrandLOGOS'/>" class="list-group-item" style="font-size: 25px">日本 LOGOS</a>
        </div>
        <h1 class="my-4" style="font-family: Arial">Category</h1>
         <div class="list-group">
          <a href="<c:url value='/Product/CategoryTents'/>" class="list-group-item" style="font-size: 25px">帳篷裝備 Tents & Tarp</a>
          <a href="<c:url value='/Product/CategorySleepingBags'/>" class="list-group-item" style="font-size: 25px">睡袋 Sleeping Bags</a>
          <a href="<c:url value='/Product/CategoryStoves'/>" class="list-group-item" style="font-size: 25px">爐具 Stoves</a>
          <a href="<c:url value='/Product/CategoryCooking'/>" class="list-group-item" style="font-size: 25px">炊具 Cooking</a>
          <a href="<c:url value='/Product/CategoryFurniture'/>" class="list-group-item" style="font-size: 25px">桌椅傢具 Furniture</a>
        </div>
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="../img\product\banner_4.png" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="../img\product\banner_1.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="../img\product\banner_2.jpg" alt="Third slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="../img\product\banner_3.jpg" alt="Third slide">
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

        <div class="row">
		<c:forEach var="productBean" items="${productBeans}">
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="${productBean.image}" width="300" height="145" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">${productBean.name}</a>
                </h4>
                <h4>$${productBean.price}</h4>
                <p class="card-text">${productBean.description}</p>
              </div>
              <div class="card-footer">
<!--               <form> -->
<!--               </form> -->
<!--               <form method="post" id="form1"  action=""> -->
<!--                 <input type="submit" value="加入購物車" class="btn btn-primary" /> -->
<!--               </form> -->
<%--               <form method="post"  act9ion="<c:url value='/shoppingcart/addProduct?id=${productBean.id}'/>"> --%>
              <form>
                <button onclick="addProduct(${productBean.id})" style="background-color: #dbcf83;border-radius: 5px;float: right;"><img src="../img\product\cart.png" height="30" /></button>
              </form>
              </div>
            </div>
          </div>
       </c:forEach>
<!--           <div class="col-lg-4 col-md-6 mb-4"> -->
<!--             <div class="card h-100"> -->
<!--               <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a> -->
<!--               <div class="card-body"> -->
<!--                 <h4 class="card-title"> -->
<!--                   <a href="#">Item Two</a> -->
<!--                 </h4> -->
<!--                 <h5>$24.99</h5> -->
<!--                 <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p> -->
<!--               </div> -->
<!--               <div class="card-footer"> -->
<!--                 <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->

  
            </div>
          </div>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    <!-- /.row -->

<!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright">© Yuru Camp 2020</p>
        </div>
    </footer>
    <!-- end footer -->

    <!-- back to top -->

    
    <!-- end back to top -->

    <!-- jQuery -->
    <script src="../js/jquery-2.1.1.js"></script>

    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/menu.js"></script>
    <script src="../js/animated-headline.js"></script>
    <script src="../js/isotope.pkgd.min.js"></script>
    <script src="../js/custom.js"></script>  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/js/bootstrap.min.js" integrity="sha512-8qmis31OQi6hIRgvkht0s6mCOittjMa9GMqtK9hes5iEQBQE/Ca6yGE5FsW36vyipGoWQswBj/QBm2JR086Rkw==" crossorigin="anonymous"></script>
	
	<script>
	
// 	var isLogin = ${isLogin};
	
	function addProduct(id){
		
// 		if(!isLogin){
// 			alert("請登入會員");
// 		} else {
			alert("加入購物車成功");
			console.log(id);
			for(var i=0 ; i<document.forms.length ; i++){
				document.forms[i].action="<c:url value='/shoppingcart/addProduct?id="+id+"'/>";
				document.forms[i].method="POST";
				document.forms[i].submit();		
		}
// 			}	
	}

	

	</script>
</body>

</html>