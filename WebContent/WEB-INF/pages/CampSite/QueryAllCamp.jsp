<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<link rel="icon" href="<c:url value='/img/yuruIcon.png' />"
	type="image/x-icon">
	<style>
	* {font-family: 微軟正黑體;}
	</style>
	<title>營地資訊</title>
</head>

<body>
	<div align="center">
		<h3>所有營地資訊</h3>
		<a href="<c:url value='/CampSite/index' />" >回前頁</a>

		<div class="table-responsive">
			<table class="table table-light table-striped table-hover" border="1">
			<thead>
				<tr style="background-color:#dbcf83">
					<th scope="col">營地編號</th>
					<th scope="col">營地名稱</th>
					<th scope="col">所在地</th>
					<th scope="col">海拔</th>
					<th scope="col">所有者</th>
					<th scope="col">營地電話</th>
					<th scope="col">圖片</th>
					<th scope="col">功能</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="campBean" items="${campInfo}">
				<tr>
					<td>${campBean.id}</td>
					<td>${campBean.name}</td>	
					<td>${campBean.address}</td>
					<td>${campBean.altitude}</td>
					<td>${campBean.owner}</td>
					<td>${campBean.ownerPhone}</td>
					<td><img src="${campBean.image}" height="50"></td>
					<td>
						<button type="submit" value="修改" 
						onclick="location.href='<c:url value='/CampSite/QueryOne/${campBean.id}'/>'" >
						<img src="<c:url value='/img/product/update.png' />" height="25"/></button>

						<button type="submit" value="刪除" 
						onclick="location.href='<c:url value='/CampSite/DeleteOne/${campBean.id}'/>'" >
						<img src="<c:url value='/img/product/delete.png' />" height="25"/></button>
					</td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
			<h3>共${campInfo.size()}筆營地資訊</h3>
		</div>
	</div>

</body>

</html>