<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.yurucamp.mallsystem.model.ProductBean" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%! @SuppressWarnings("unchecked") %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="icon" href="<c:url value='/img/yuruIcon.png' />" type="image/x-icon">
<style>
* {
    font-family: 微軟正黑體;
}
</style>
<meta charset="UTF-8">
<title>產品資料</title>
</head>


<body style="background-color:#F3F3FA">
<div align="center">
<h2 style="background-color: #A6A6D2;color: #484891">所有產品資料</h2>
<%-- <a href="<c:url value='/Product/BackStageIndex'/>" >回首頁</a> --%>
<input type="button" value="回首頁" class="btn btn-secondary" onclick="location.href='<c:url value='/Product/Index'/>'">
<input type="button" value="新增產品資料" class="btn btn-secondary" onclick="location.href='<c:url value='/Product/InsertProduct'/>'">
<br>
	<form method="post" action="<c:url value='/Product/DeleteProduct'/>">
       輸入刪除的產品編號 : <input type="text" id="idName" name="id" autofocus placeholder="請輸入欲刪除編號" maxlength="4" required="required" onblur="checkName()" />
	<input type="submit"  value="確定" class="btn btn-primary" />	<p>
	 <span class="sp" id="idspName" style="color:red"></span><br>
	<font color='red' size="-1">${errorMsg.productId}</font>
	</form>
<div>	
<table class="table table-dark table-striped" border="1" style="background-color:#D8D8EB;color:black">
<tr style="background-color:#A6A6D2">
<th><th>產品ID<th>產品名稱<th>價格<th>廠牌<th>圖檔<th>瀏覽次數<th>產品敘述<th>庫存量<th>種類<th>商品狀態<th>上下架調整<th>新增日期<th>修改日期
<c:forEach var="productBean" items="${productBeans}">
<tr><td>
<!-- <input type="submit" value="修改" name="update"/>	 -->

<form>
<br>
<button type="submit" title="修改資料!!" onclick="update('${productBean.id}')" style="border:none;border-radius:200px "><img src="<c:url value='/img/product/update.png' />" height="25"/></button>
<br><br>
<button type="submit" title="刪除資料!!" onclick="del('${productBean.id}')" style="border:none;border-radius:200px" ><img src="<c:url value='/img/product/delete.png' />" height="25"/></button>
</form>
</td>
<td>${productBean.id}</td>
<td>${productBean.name}</td>	
<td>${productBean.price}</td>
<td>${productBean.brand}</td>
<td><img src="${productBean.image}" height="150"></td>
<td>${productBean.webTraffic}</td>
<td>${productBean.description}</td>
<td>${productBean.stock}</td>
<td>${productBean.category}</td>
<td>${productBean.status}</td>
<td>
<form>
<br>
<button type="submit" title="商品上架!!" onclick="up('${productBean.id}')" style="border:none;border-radius:200px ">
上架</button>
<br><br>
<button type="submit" title="商品下架!!" onclick="down('${productBean.id}')" style="border:none;border-radius:200px" >
下架</button>
</form>
</td>
<td><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${productBean.createtime}"/></td>
<td><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss" value="${productBean.updatetime}"/></td></tr>

</c:forEach>
</table>
<h3>共${productBeans.size()}筆產品資料</h3>
</div>	
</div>
<script>

// function checkName() {
//     let NameObjVal = document.getElementById("idName").value;
//     let spName = document.getElementById("idspName");
//     let NameObjValLen = NameObjVal.length;
//     if (NameObjVal == "") {
//         spName.innerHTML = "內容不可以為空白";
//     }
//     else if (NameObjValLen >= 4) {
//              spName.innerHTML = "<span style=\"font-size:1em\">格式正確</span>";
//              spName.innerHTML += "<img src=\"images/correct.jpg\" width = 20px height =20px>";           
        
//     } else {
//         spName.innerHTML = "請至少輸入四個數字";
//         spName.innerHTML += "<img src=\"images/error.jpg\" width = 20px height =20px>";
//     }
// }

function up(id){
	for(var i=0;++i;){
	document.forms[i].action="<c:url value='/Product/PutOnShelfProduct?id="+id+"'/>" ;
	document.forms[i].method="post";
	document.forms[i].submit();
	}}
function down(id){
	for(var i=0;++i;){
	document.forms[i].action="<c:url value='/Product/OffShelfProduct?id="+id+"'/>" ;
	document.forms[i].method="post";
	document.forms[i].submit();
	}}
function update(id){
	for(var i=0;++i;){
	document.forms[i].action="<c:url value='/Product/UpdateProduct?id="+id+"'/>" ;
	document.forms[i].method="post";
	document.forms[i].submit();
	}}
	
function del(id){
	if(confirm("真的要刪除嗎!!!!!?")){
	for(var i=0;++i;){
	document.forms[i].action="<c:url value='/Product/DeleteProduct?id="+id+"'/>" ;
	document.forms[i].method="post";
	document.forms[i].submit();
	}}}

</script>
</body>
</html>