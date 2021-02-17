<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta charset="UTF-8">
<link rel="icon" href="<c:url value='/img/yuruIcon.png' />" type="image/x-icon">
<title>新增品牌</title>
</head>
<body style="background-color:#fdf5e6">
<div align="center">
	<h2 class="bg-dark text-white">輸入新增資料</h2>

	<a href="<c:url value='/Product/BackStageIndex'/>" >回首頁</a>
	
	<form method="post" action="<c:url value='/Product/InsertBrandinfo'/>">
	<table class="btn btn-secondary">
		<tr><td>輸入品牌 :<td><input type="text" name="name" />
<!-- 		<tr><td>輸入建立時間 :<td><input type="text" name="createtime" /> -->
<!-- 		<tr><td>輸入修改時間 :<td><input type="text" name="updatetime" /> -->
	</table>
	<br><br>
			<input type="submit" value="新增" class="btn btn-primary" />
			<input type="reset" value="取消" class="btn btn-primary" />
	</form>
	<hr>
	<h2 class="bg-dark text-white">新增廠牌資料</h2>
	<table class="table table-dark table-striped" border="1">
<!-- 	<table class="table table-dark table-striped" border="1"> -->
	<tr style="background-color:#7A0099">
	<th><th >廠牌ID<th>廠牌名稱<th>新增日期<th>修改日期
	<c:forEach var="brandBean" items="${brandBeans}">
	<tr><td>
	</td>
	<td>${brandBean.id}</td>
	<td>${brandBean.name}</td>	
	<td><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${brandBean.createtime}"/></td>
	<td><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${brandBean.updatetime}"/></td>
	</form>
	</c:forEach>
	</table>

	</div>
	<Formatted>
	
	
	
	
	
	
	
</body>
</html>