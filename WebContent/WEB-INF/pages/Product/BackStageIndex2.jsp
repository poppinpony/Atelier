<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Box personal portfolio Template</title>
<link rel="icon" href="<c:url value='/img/fav.png' />" type="image/x-icon">
<!-- Bootstrap -->
<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
<link href="<c:url value='/ionicons/css/ionicons.min.css' />" rel="stylesheet">
<!-- main css -->
<link href="<c:url value='/css/style.css' />" rel="stylesheet">

<!-- modernizr -->
<script src="<c:url value='/js/modernizr.js' />"></script>
<style>

</style>

</head>
<body style="background-color:#fdf5e6">
<jsp:include page="/WEB-INF/pages/include/top.jsp" />

<div align="center" margin=100px>
<!-- <h1>&nbsp;</h1> -->
<!-- <h1>&nbsp;</h1> -->
<div>
<h1>露營商品管理</h1>
</div>
<div>
    <a href="<c:url value='/Product/Index' />" class="btn btn-primary">露營商城</a><br><br>
	<a href="<c:url value='/Product/GetProduct.jsp'/>" class="btn btn-primary">查詢單筆資料 </a><br><br>
    <a href="<c:url value='/Product/GetAllProduct'/>" class="btn btn-primary">查詢全部資料</a><br><br>
	<a href="<c:url value='/Product/InsertProduct'/>" class="btn btn-primary">新增資料</a><br><br>
	<a href="<c:url value='/Product/GetAllBrand'/>" class="btn btn-primary">查詢廠牌資料</a><br><br>
	<a href="<c:url value='/Product/InsertBrand'/>" class="btn btn-primary">新增廠牌資料</a><br><br>
</div>
</div>
<script src="<c:url value='/js/jquery-2.1.1.js' />"></script>
	<!--  plugins -->
	<script src="<c:url value='/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/js/menu.js' />"></script>
	<script src="<c:url value='/js/animated-headline.js' />"></script>
	<script src="<c:url value='/js/isotope.pkgd.min.js' />"></script>


	<!--  custom script -->
	<script src="<c:url value='/js/custom.js' />"></script>
</body>

</html>