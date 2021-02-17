<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員系統</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-clearmin.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/roboto.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/material-design.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/small-n-flat.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css">

<script src="${pageContext.request.contextPath}/js/lib/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.mousewheel.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.cookie.min.js"></script>
<script src="${pageContext.request.contextPath}/js/fastclick.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/clearmin.min.js"></script>
<script src="${pageContext.request.contextPath}/js/demo/home.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js'></script>


</head>
<body class="cm-no-transition cm-1-navbar">
<jsp:include page="/WEB-INF/pages/Backstage/top.jsp" />     
 <div id="global">
	 <div class="container-fluid">
	 	<div class="container">
			  <input class="form-control mb-4" id="tableSearch" type="text" placeholder="請搜尋會員帳號..">
				
			<div id="test"></div>	
				
				
			  <table class="table table-bordered table-striped">
			    <thead>
			      <tr>
			        <th>會員編號</th>
			        <th>帳號</th>
			        <th>姓名</th>
			        <th>性別</th>
			        <th>生日</th>
			        <th>電話</th>
			        <th>地址</th>
			        <th>電子信箱</th>
			        <th>註冊日期</th>
			        <th>帳號狀態</th>
			        <th>付費會員</th>
			        <th>登入身份</th>
			        <th>個人照片</th>
			      </tr>
			    </thead>
			    <tbody id="myTable">
			      <tr>
			        <td>John</td>
			        <td>Doe</td>
			        <td>john@example.com</td>
			      </tr>
			    </tbody>
			  </table>
			</div>
	 </div>
 </div>
 
 <script type="text/javascript">
 
	$("#tableSearch").blur(function(){
		var data = new Object();
		data.Account = $("#tableSearch").val();
		
		$.ajax({
			url : "/yurucamp/Backstage/memberSearc",
			method: 'POST',
			dataType: 'json',
			data: data
		}).done(function(result) {
			var msg ;
			
			if(result == ''){
				$("#myTable >tr").html("<td colspan='13' style='color:red;text-align:center;font-size:50px;'>查無資料!</td>");
				
				
			}else{
				var data;
				result.forEach(function(element){
					data = "<tr>";
					data +="<td>"+element.name;
					data +="<td>"+element.memberId;
					data +="<td>"+element.mail;
					
					console.log(element.name);
					data.append("</tr>");
				})
				
// 				$("#myTable").html("<tr><td>"+result[0].name+"<td><tr>");
				$("#myTable").html(data);
			}
			
			
			console.log(result[0].name);
			console.log(result);
// 			  bootbox.dialog({
// 		            size: "large",
// 		            message: result,
// 		            title:"修改匯退歷程記錄",
// 		            buttons: {
// 		                "關閉": {}
// 		            }
// 		        });
			
// 			bootbox.alert(result.msg);
		 })
	})
 
 
 </script>
</body>
</html>