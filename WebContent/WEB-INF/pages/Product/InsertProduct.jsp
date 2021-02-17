<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
     
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<!-- jQuery library -->
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<link rel="icon" href="<c:url value='/img/yuruIcon.png' />" type="image/x-icon">
<title>Insert title here</title>
<style>
	
</style>
</head>
<body style="background-color:#F3F3FA">
<div align="center">
	<h2 style="background-color: #A6A6D2;color: #484891">輸入新增資料</h2>
<input type="button" value="回首頁" class="btn btn-secondary" onclick="location.href='<c:url value='/Product/Index'/>'">
<input type="button" value="管理產品資料" class="btn btn-secondary" onclick="location.href='<c:url value='/Product/GetAllProduct'/>'">
<br><br>
<%-- 	<a href="<c:url value='/Product/BackStageIndex'/>"  >回首頁</a><br><br> --%>
	
	<form id="formdata">
	 <table class="btn btn-secondary" style="background-color:#D8D8EB;color:black;text-align:left">
		<tr><td>輸入產品 :<td><input type="text" id="name" name="name" />
		<tr><td>輸入品牌 :<td ><select id="brandId" name="brandId" required="required" >
								<option value="">選擇廠牌</option>
								<option value="1">台灣 努特Nuit</option>
								<option value="2">台灣 犀牛RHINO</option>
								<option value="3">日本 LOGOS</option>
							</select>
		<tr><td>輸入價格 :<td><input type="text" id="price" value="888" name="price" />
		<tr><td>上傳圖片 :<td><input type="file" id="image" onchange="uploadimg()">
		<input type="text" name="image" style="display:none">
		<tr><td>輸入產品內容 :<td><input type="text" id="description" value="產品內容" name="description" />
		<tr><td>輸入產品狀態:<td><select id="statusId" name="statusId" required="required">
								<option value="">選擇狀態</option>
								<option value="1">上架中</option>
								<option value="2">下架中</option>
								<option value="3">庫存不足</option>
							   </select>
		<tr><td>輸入庫存數量 :<td><input type="text" id="stock" value="50" name="stock" />
		<tr><td>輸入種類 :<td><input type="text" id="category" value="桌椅傢具" name="category" />
	</table>
	<br><br>
			<input type="button" value="新增" class="btn btn-secondary" onclick="sendForm()" />
			<button type="button" class="btn btn-secondary" id="m2">一鍵輸入</button>			
	</form>
		
	<hr>
	<table id="result-table" class="table table-dark table-striped" border="1" style="background-color:#D8D8EB;color:black">
		
		<tr  style="background-color:#A6A6D2">
			<th>產品ID</th>
			<th>產品名稱</th>
			<th>價格</th>
			<th>廠牌</th>
			<th>圖檔</th>	
			<th>產品敘述</th>
			<th>庫存量</th>
			<th>種類</th>
			<th>商品狀態</th>
			<th>新增日期</th>
		</tr>

</table>
	</div>
	<script>
	
	$("#m2").click(function() {
		$("#name").val("白神駒");
		$("#price").val("6980");
		$("#description").val("黑膠一房一廳別墅帳 【專用吊掛內帳】 NTG83適用 擴充內帳空間");
		$("#stock").val("28");
		$("#category").val("帳篷裝備");
	});
	
	function uploadimg(){
		var formData = new FormData();
		formData.append('image', $('#image')[0].files[0]);
		$.ajax({
		    url: '/yurucamp/Product/upfileimage',
		    type: 'POST',
		    data:formData,
		    processData: false,
		    contentType: false,
		    success:function(result){
		    	console.log(result.url);
		    	$('input[name="image"]').val(result.url);
		    	console.log($('input[name="image"]').val());
		    }
		})

	}
	function sendForm() {	
		var form = $('#formdata').serialize();
		console.log(form);

        $.ajax({
        	      type: 'POST',
                  url : '/yurucamp/Product/InsertProductinfo',
                  data : $("#formdata").serialize(),
                  success : function(data) {
                	  var resultHtml="";
           
                	  			console.log(data);
                	  
		                	  	if(data){
		                	  		
		                	  		for(let item of data){
		                	  			console.log(item);
		                	  			
		                	  			var resultHtml = "<tr>"
		                	  				           + "<td>" + item.id + "</td>" 
		                	  			               + "<td>" + item.name + "</td>"
		                	  			               + "<td>" + item.price + "</td>"
		                	  			               + "<td>" + item.brand + "</td>"
		                	  			               + "<td><img src='" + item.image + "' style='height: 150px;'/></td>"
		                	  			               + "<td>" + item.description + "</td>"
		                	  			               + "<td>" + item.stock + "</td>"
		                	  			               + "<td>" + item.category + "</td>"
		                	  			               + "<td>" + item.status + "</td>"
		                	  			               + "<td>" + item.createtime + "</td>"
		                	  			               + "</tr>";
		                	  			
		                	  			console.log(resultHtml);
		                	  			
		                	  			$("#result-table").append(resultHtml);
		                	  			
		                	  		}
		                	  			
		                	  	}

                  }

        });

	}
	</script>
	
</body>
</html>