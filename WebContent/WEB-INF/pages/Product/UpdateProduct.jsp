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
<title>修改產品資料</title>
</head>
<body style="background-color:#F3F3FA">
<div align="center">
<h2 style="background-color: #A6A6D2;color: #484891">更新資料</h2>
<input type="button" value="回首頁" class="btn btn-secondary" onclick="location.href='<c:url value='/Product/Index'/>'">
<br><br>

<form method="post" action="<c:url value='/Product/UpdateProductinfo'/>">

<table style="background-color:#D8D8EB;color:black"><th style="background-color:#A6A6D2">欲更新商品資料<th style="background-color:#A6A6D2">更新後商品資料<tr><td>
<table align="left" class="table table-dark table-striped" style="background-color:#D8D8EB;color:black">

	<tr><td>產品編號 :<td><input type="text" name="id" readonly="readonly" value="${productBean.id}" />
	<tr><td>產品 :<td><input type="text" name="name" readonly="readonly" value="${productBean.name}" />
	<tr><td>更新→價錢 :<td><input type="text" name="price" value="${productBean.price}" />
	<tr><td>品牌 :<td><input type="text" name="brand" readonly="readonly" value="${productBean.brand}" />
	<tr><td>圖片 :<td><input type="text" name="image" readonly="readonly" value="${productBean.image}" />
	<tr><td>瀏覽次數 :<td><input type="text" name="webTraffic"  readonly="readonly" value="${productBean.webTraffic}" />
	<tr><td>更新→商品陳述 :<td><input type="text" name="description" value="${productBean.description}" />
	<tr><td>更新→庫存:<td><input type="text" name="stock" value="${productBean.stock}"/>
	<tr><td>種類 :<td><input type="text" name="category"  readonly="readonly" value="${productBean.category}"/>
	<tr><td>狀態 :<td><input type="text" name="status" readonly="readonly" value="${productBean.status}"/>
	<tr><td>建立日期 :<td><input type="text" name="createtime" value="<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${productBean.createtime}"/>"/>
	<tr><td>修改日期 :<td><input type="text" name="updatetime" value="<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${productBean.updatetime}"/>"/>
	
</table>		

	<td>
	<table align="left" class="table table-dark table-striped" style="background-color:#D8D8EB;color:black">
	<tr><td>產品編號 :<td><input type="text" disabled value="${productBeaninfo.id}" />
	<tr><td>產品 :<td><input type="text" disabled value="${productBeaninfo.name}" />
	<tr><td>價錢 :<td><input type="text" disabled value="${productBeaninfo.price}" />
	<tr><td>品牌 :<td><input type="text" disabled value="${productBeaninfo.brand}" />
	<tr><td>圖片 :<td><input type="text" disabled value="${productBeaninfo.image}" />
	<tr><td>瀏覽次數 :<td><input type="text" disabled value="${productBeaninfo.webTraffic}" />
	<tr><td>商品陳述 :<td><input type="text" disabled value="${productBeaninfo.description}" />
	<tr><td>數量:<td><input type="text" disabled value="${productBeaninfo.stock}"/>
	<tr><td>種類 :<td><input type="text" disabled value="${productBeaninfo.category}"/>
	<tr><td>狀態 :<td><input type="text" disabled value="${productBeaninfo.status}"/>
	<tr><td>建立日期 :<td><input type="text" disabled value="<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${productBeaninfo.createtime}"/>"/>
	<tr><td>修改日期 :<td><input type="text" disabled value="<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${productBeaninfo.updatetime}"/>"/>
	
	</table>
<!-- </form> -->
</table>

			<input type="submit" value="新增" class="btn btn-secondary" />
			<input type="reset" value="取消" class="btn btn-secondary"/>
</form><br>
<a href="<c:url value='/Product/GetAllProduct'/>" class="btn btn-secondary">繼續更改其它資料</a>
</div>
</body>
</html>