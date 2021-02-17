<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.yurucamp.mallsystem.model.ProductBean" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%!@SuppressWarnings("unchecked")%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta charset="UTF-8">
<link rel="icon" href="<c:url value='/img/yuruIcon.png' />" type="image/x-icon">
<title>修改品牌</title>
</head>
<body style="background-color:#fdf5e6">
<div align="center">
<h2 class="bg-dark text-white">更新資料</h2>
<a href="<c:url value='/Product/BackStageIndex'/>" >回首頁</a><br><br>

<form method="post" action="<c:url value='/Product/UpdateBrandinfo'/>">

<table><th class="bg-dark text-white">欲更新廠牌資料<th class="bg-dark text-white">更新後廠牌資料<tr><td>
<table align="left" class="table table-dark table-striped">

	<tr><td>輸入廠牌編號 :<td><input type="text" name="id" readonly="readonly" value="${brandBean.id}" />
	<tr><td>廠牌名稱 :<td><input type="text" name="name" value="${brandBean.name}" />
	<tr><td>建立日期<td><input type="text" disabled value="<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${brandBean.createtime}"/>">
    <tr><td>修改日期<td><input type="text" disabled value="<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${brandBean.updatetime}"/>">
    
</table>


	<td>		
	<table align="left" class="table table-dark table-striped">
	<tr><td>廠牌編號<td><input type="text" disabled value="${brandBeaninfo.id}">
	<tr><td>廠牌名稱<td><input type="text" disabled value="${brandBeaninfo.name}">
	<tr><td>建立日期<td><input type="text" disabled value="<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${brandBeaninfo.createtime}"/>">
	<tr><td>修改日期<td><input type="text" disabled value="<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${brandBeaninfo.updatetime}"/>">
	</table>
<!-- </form> -->
</table>

			<input type="submit" value="修改" class="btn btn-primary" />
			<input type="reset" value="取消" class="btn btn-primary" />
</form><br>
<a href="<c:url value='/Product/GetAllBrand'/>" class="btn btn-primary">繼續更改其它資料</a>
</div>
</body>
</html>