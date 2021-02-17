<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>會員中心</title>
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<!-- Bootstrap -->
<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
<link href="<c:url value='/ionicons/css/ionicons.min.css' />"rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<!-- main css -->
<link href="<c:url value='/css/style.css' />" rel="stylesheet">
<!-- modernizr -->
<script src="<c:url value='/js/modernizr.js' />"></script>
<!-- jQuery -->
<script src="<c:url value='/js/jquery-2.1.1.js' />"></script>
<!--  plugins -->
<script src="<c:url value='/js/bootstrap.min.js' />"></script>
<script src="<c:url value='/js/menu.js' />"></script>
<script src="<c:url value='/js/animated-headline.js' />"></script>
<script src="<c:url value='/js/isotope.pkgd.min.js' />"></script>
<!--  custom script -->
<script src="<c:url value='/js/custom.js' />"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<!-- //匯入bootstrap -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- //匯入jQuery -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<!-- //匯入bootstrap javascript -->
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<style>
img {
	overflow: hidden;
	border: 2px solid black;
	max-height: 200px;
	border-radius: 50%;
}
.box {
	border: 1px solid red;
	width: 300px;
}
.a, .b {
	display: inline-block;
	width: 100px;
	height: 50px;
	border: 1px solid red;
}
.munuinf{
	width: 50%;
	margin: 0 auto;
	margin-top:20px;
	border:2px solid #DDDDDD;
	border-radius:20px;
}
</style>
</head>

<body>

	<jsp:include page="/WEB-INF/pages/include/top.jsp" />
<%-- 	<form action="<c:url value='/Member/search'/>" method="Get">&nbsp;&nbsp; --%>
<!-- 	    <input name="name" type="search" placeholder="Search..." style="font-size: 25px;margin-top:250px;"/> -->
<%-- 	</form> --%>
	<div class="jumbotron jumbotron-fluid"
		style="width: 90%; margin: 0 auto; margin-top: 110px; height: 200px; background-color: white;">
		<table style="width: 100%; height: 100%; margin-top: -50px;">
			<tr>
				<td style="height: 100%; background-color: white; width: 50%;">
					<div class="jumbotron-bg" style="margin-right: 15px; float: right">
						<img src=${memberBean.image}>
					</div>
				</td>
				<td>
					<div>
						<h2 style="text-align: left; font-weight: bold;">Hello,${MemberBean.name}</h2>
						<p class="lead" style="text-align: left; font-weight: bold;">${MemberBean.memberId}</p>
						<p>
			    		<c:choose>
							<c:when test="${MemberBean.paid eq '0'}">
							一般會員
							</c:when>
							<c:when test="${MemberBean.paid eq '1'}">
							付費會員
							</c:when>
						</c:choose>

						</p>
					</div>
				</td>
			</tr>
		</table>
	</div>
<br>
<div id="A"></div>
	<div style="background-color:#AAAAAA">
	<ul class="nav nav-tabs" style="width: 80%; margin: 0 auto; margin-top: 20px" >
        <li><a data-toggle="tab" href="#menu1"  style="color:black">個人資料</a></li>
        <li><a data-toggle="tab" href="#menu2" style="color:black">會員升級</a></li>
        <li><a data-toggle="tab" href="#menu3" style="color:black">歷史訂單</a></li>
        <li><a data-toggle="tab" href="#menu4" style="color:black;margin-left:500px;"><input id="searchname" name="name" type="search" placeholder="Member Search..." ></a></li>
    </ul>
    </div>
        
    <div class="tab-content"  >
            <div id="home" class="tab-pane fade in active" style="width: 80%;margin: 0 auto;height:0px;">
      		<h3></h3>
      		<p></p>
    	</div>
        <div id="menu1" class="tab-pane fade munuinf" >
<!-- 			<h3 style="text-align:center">個人資料</h3><br> -->
			<table class="table" style="text-align:left">
			  <tbody>
			    <tr >
					<td style="text-align:right;width:250px;">姓名:</td>
					<td><input type="text" name="mcname" id="mcname" value="${MemberBean.name}"></td>
			    	<td id="errormcname" style="text-align: left;color:red;font-weight: bold;float:left"></td>
			    </tr>
			    <tr>
					<td style="text-align:right;width:200px">密碼:</td>
					<td><input type="password" name="mcpassword" id="mcpassword"
									 value="${MemberBean.password}"></td>
					<td id="errormcpassword" style="text-align: left;color:red;font-weight: bold;float:left"></td>		    
			    </tr>
			    			    <tr>
					<td style="text-align:right;width:200px">密碼確認:</td>
					<td><input type="password" name="mcpassword2" id="mcpassword2"
									path="password" value="${MemberBean.password}"></td>
					<td id="errormcpassword2" style="text-align: left;color:red;font-weight: bold;float:left"></td>			    
			    </tr>
			    <tr>
					<td style="text-align:right;width:200px">性別:</td>
<!-- 					<td><input type="text" name="gender" id="gender" -->
<%-- 									path="gender" value="${MemberBean.gender}"></td> --%>
					<td><select id="mcgender">
					    <option hidden>
					    <c:choose>
						<c:when test="${MemberBean.gender eq 'F'}">
						女生
						</c:when>
						<c:when test="${MemberBean.gender eq 'M'}">
						男生
						</c:when>
						</c:choose>
					    </option>
					    <option value="F">女生</option>
					    <option value="M">男生</option>
					</select></td>
					<td id="errormcgender" style="text-align: left;color:red;font-weight: bold;float:left"></td>
			    </tr>
			    <tr>
					<td style="text-align:right;width:200px">生日:</td>
					<td><fmt:formatDate type="both" pattern="yyyy-MM-dd" 
						 value="${MemberBean.birthday}"></fmt:formatDate></td>
					<td id="errormcbirthday" style="text-align: left;color:red;font-weight: bold;float:left"></td>
				</tr>
				<tr >
					<td style="text-align:right;width:200px">電話:</td>
					<td><input type="text" name="mcphone" id="mcphone" 
						value="${MemberBean.phone}"></td>
					<td id="errormcphone" style="text-align: left;color:red;font-weight: bold;float:left"></td>
				</tr>
				<tr>
					<td style="text-align:right;width:200px">地址:</td>
					<td><input type="text" name="mcaddress" id="mcaddress"
						value="${MemberBean.address}"></td>
					<td id="errormcaddress" style="text-align: left;color:red;font-weight: bold;float:left"></td>
				</tr>
				<tr>
					<td style="text-align:right;width:200px">mail:</td>
					<td><input type="text" name="mcmail" id="mcmail" path="mcmail"
						value="${MemberBean.mail}"></td>
					<td id="errormcmail" style="text-align: left;color:red;font-weight: bold;float:left"></td>
				</tr>
				<tr>
					<td style="text-align:right;width:200px"></td>
					<td><br><button type="button" id="updatemem"class="btn btn-light">更新資訊</button></td>
					<td></td>
				</tr>
			  </tbody>
			</table>
        </div>
        <div id="menu2" class="tab-pane fade munuinf">
        <div style="padding-left:15px;"><br><br>
<%--             <h3>${MemberBean.name}</h3> --%>
            		<c:choose>
							<c:when test="${MemberBean.paid eq '1'}">
							您已經是付費會員，無須升級。<br><br>
							</c:when>
							<c:when test="${MemberBean.paid eq '0'}">
							   <div>
				            	<input type="radio" name="pay" value="pay" />會員升級 NT$500 <br><br>
				           		<button id="ecpay">確認</button><br><br>
				            </div>
							</c:when>
						</c:choose>
 
           </div>
        </div>
        <div id="menu3" class="tab-pane fade munuinf" style="border-style:none" >
<!--             <h3 style="margin-top:70px;">Menu 3</h3> -->
			  
				<div class="card-deck" style="margin-top:20px;" >
				  <div class="card" style="overflow:hidden;margin-top:10px;">
				    <div class="card-body" >
				    <h5 style="font-size:large;font-weight:bold;">露營車</h5><br>
				      <p class="card-text">訂單編號:10900001</p>				    	
				      <p class="card-text">訂購日期:2020/10/31</p>
				      <p class="card-text">收貨姓名:王小明</p>
				      <p class="card-text">連絡電話:0911111111</p>			      
				      <p class="card-text"></p>
				      <p class="card-text">訂購金額:NT$145</p>
				      <div style="background-color:#F0F0F0;height:25px;width:120%;margin-left:-15px;padding-left:20px;font-weight:bold;display: flex;align-items: center" class="listbutton">
				      <i class='fas fa-list'></i>&emsp;購買明細</div>
						<div class="listinfo" style="display:none">
							<table style="margin-top:8px;width:100%"> 
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>露營車&emsp;</td>
								<td>1790&emsp;</td>
								</tr>
								
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>烹調組&emsp;</td>
								<td>650&emsp;</td>
								</tr>
							</table>
						</div>
				    </div>
				    <div class="card-footer" >
				      <small class="text-muted"></small>
				    </div>
				  </div>
				  
			  <div class="card" style="overflow:hidden;margin-top:10px;">
				    <div class="card-body" >
				    <h5 style="font-size:large;font-weight:bold;">商城</h5><br>
				      <p class="card-text">訂單編號:10900056</p>				    	
				      <p class="card-text">訂購日期:2020/10/31</p>
				      <p class="card-text">收貨姓名:王爸爸</p>
				      <p class="card-text">連絡電話:0911111111</p>			      
				      <p class="card-text"></p>
				      <p class="card-text">訂購金額:NT$4,200</p>
				      <div style="background-color:#F0F0F0;height:25px;width:120%;margin-left:-15px;padding-left:20px;font-weight:bold;display: flex;align-items: center" class="listbutton">
				      <i class='fas fa-list'></i>&emsp;購買明細</div>
						<div class="listinfo" style="display:none">
							<table style="margin-top:8px;width:100%"> 
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>躺椅&emsp;</td>
								<td>790&emsp;</td>
								</tr>
								
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>帳篷&emsp;</td>
								<td>1650&emsp;</td>
								</tr>
								
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>摺疊桌&emsp;</td>
								<td>1380&emsp;</td>
								</tr>
								
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>椅凳</td>
								<td>380</td>
								</tr>
							</table>
						</div>
				    </div>
				    <div class="card-footer" >
				      <small class="text-muted"></small>
				    </div>
				  </div>
				  
				  			  <div class="card" style="overflow:hidden;margin-top:10px;">
				    <div class="card-body" >
				    <h5 style="font-size:large;font-weight:bold;">商城</h5><br>
				      <p class="card-text">訂單編號:10900007</p>				    	
				      <p class="card-text">訂購日期:2020/11/05</p>
				      <p class="card-text">收貨姓名:王小明</p>
				      <p class="card-text">連絡電話:0911111111</p>			      
				      <p class="card-text"></p>
				      <p class="card-text">訂購金額:NT$6,800</p>
				      <div style="background-color:#F0F0F0;height:25px;width:120%;margin-left:-15px;padding-left:20px;font-weight:bold;display: flex;align-items: center" class="listbutton">
				      <i class='fas fa-list'></i>&emsp;購買明細</div>
						<div class="listinfo" style="display:none">
							<table style="margin-top:8px;width:100%"> 
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>豪華帳棚&emsp;</td>
								<td>6800&emsp;</td>
								</tr>
								
							</table>
						</div>
				    </div>
				    <div class="card-footer" >
				      <small class="text-muted"></small>
				    </div>
				  </div>
				  
<!-- 				  橫排三個CARD結束 -->
				  </div> 
				  
				  
				<div class="card-deck" style="margin-top:20px;" >
				  <div class="card" style="overflow:hidden;margin-top:10px;">
				    <div class="card-body" >
				    <h5 style="font-size:large;font-weight:bold;">商城</h5><br>
				      <p class="card-text">訂單編號:10900213</p>				    	
				      <p class="card-text">訂購日期:2020/10/31</p>
				      <p class="card-text">收貨姓名:王小明</p>
				      <p class="card-text">連絡電話:0911111111</p>			      
				      <p class="card-text"></p>
				      <p class="card-text">訂購金額:NT$145</p>
				      <div style="background-color:#F0F0F0;height:25px;width:120%;margin-left:-15px;padding-left:20px;font-weight:bold;display: flex;align-items: center" class="listbutton">
				      <i class='fas fa-list'></i>&emsp;購買明細</div>
						<div class="listinfo" style="display:none">
							<table style="margin-top:8px;width:100%"> 
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>露營車&emsp;</td>
								<td>1790&emsp;</td>
								</tr>
								
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>烹調組</td>
								<td>650</td>
								</tr>
							</table>
						</div>
				    </div>
				    <div class="card-footer" >
				      <small class="text-muted"></small>
				    </div>
				  </div>
				  
			  <div class="card" style="overflow:hidden;margin-top:10px;">
				    <div class="card-body" >
				    <h5 style="font-size:large;font-weight:bold;">營地</h5><br>
				      <p class="card-text">訂單編號:10900451</p>				    	
				      <p class="card-text">訂購日期:2020/10/31</p>
				      <p class="card-text">收貨姓名:王小明</p>
				      <p class="card-text">連絡電話:0911111111</p>			      
				      <p class="card-text"></p>
				      <p class="card-text">訂購金額:NT$145</p>
				      <div style="background-color:#F0F0F0;height:25px;width:120%;margin-left:-15px;padding-left:20px;font-weight:bold;display: flex;align-items: center" class="listbutton">
				      <i class='fas fa-list'></i>&emsp;購買明細</div>
						<div class="listinfo" style="display:none">
							<table style="margin-top:8px;width:100%"> 
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>露營車&emsp;</td>
								<td>1790&emsp;</td>
								</tr>
								
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>烹調組</td>
								<td>650</td>
								</tr>
							</table>
						</div>
				    </div>
				    <div class="card-footer" >
				      <small class="text-muted"></small>
				    </div>
				  </div>
				  
				  			  <div class="card" style="overflow:hidden;margin-top:10px;">
				    <div class="card-body" >
				    <h5 style="font-size:large;font-weight:bold;">商城</h5><br>
				      <p class="card-text">訂單編號:10900021</p>				    	
				      <p class="card-text">訂購日期:2020/10/31</p>
				      <p class="card-text">收貨姓名:王小明</p>
				      <p class="card-text">連絡電話:0911111111</p>			      
				      <p class="card-text"></p>
				      <p class="card-text">訂購金額:NT$145</p>
				      <div style="background-color:#F0F0F0;height:25px;width:120%;margin-left:-15px;padding-left:20px;font-weight:bold;display: flex;align-items: center" class="listbutton">
				      <i class='fas fa-list'></i>&emsp;購買明細</div>
						<div class="listinfo" style="display:none">
							<table style="margin-top:8px;width:100%"> 
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>露營車&emsp;</td>
								<td>1790&emsp;</td>
								</tr>
								
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>烹調組</td>
								<td>650</td>
								</tr>
							</table>
						</div>
				    </div>
				    <div class="card-footer" >
				      <small class="text-muted"></small>
				    </div>
				  </div>
				  
<!-- 				  橫排三個CARD結束 -->
				  </div> 
				  
				  
				  				<div class="card-deck" style="margin-top:20px;" >
				  <div class="card" style="overflow:hidden;margin-top:10px;">
				    <div class="card-body" >
				    <h5 style="font-size:large;font-weight:bold;">商城</h5><br>
				      <p class="card-text">訂單編號:10900001</p>				    	
				      <p class="card-text">訂購日期:2020/10/31</p>
				      <p class="card-text">收貨姓名:王小明</p>
				      <p class="card-text">連絡電話:0911111111</p>			      
				      <p class="card-text"></p>
				      <p class="card-text">訂購金額:NT$145</p>
				      <div style="background-color:#F0F0F0;height:25px;width:120%;margin-left:-15px;padding-left:20px;font-weight:bold;display: flex;align-items: center" class="listbutton">
				      <i class='fas fa-list'></i>&emsp;購買明細</div>
						<div class="listinfo" style="display:none">
							<table style="margin-top:8px;width:100%"> 
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>露營車&emsp;</td>
								<td>1790&emsp;</td>
								</tr>
								
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>烹調組</td>
								<td>650</td>
								</tr>
							</table>
						</div>
				    </div>
				    <div class="card-footer" >
				      <small class="text-muted"></small>
				    </div>
				  </div>
				  
			  <div class="card" style="overflow:hidden;margin-top:10px;">
				    <div class="card-body" >
				    <h5 style="font-size:large;font-weight:bold;">營地</h5><br>
				      <p class="card-text">訂單編號:10900001</p>				    	
				      <p class="card-text">訂購日期:2020/10/31</p>
				      <p class="card-text">收貨姓名:王小明</p>
				      <p class="card-text">連絡電話:0911111111</p>			      
				      <p class="card-text"></p>
				      <p class="card-text">訂購金額:NT$145</p>
				      <div style="background-color:#F0F0F0;height:25px;width:120%;margin-left:-15px;padding-left:20px;font-weight:bold;display: flex;align-items: center" class="listbutton">
				      <i class='fas fa-list'></i>&emsp;購買明細</div>
						<div class="listinfo" style="display:none">
							<table style="margin-top:8px;width:100%"> 
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>露營車&emsp;</td>
								<td>1790&emsp;</td>
								</tr>
								
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>烹調組</td>
								<td>650</td>
								</tr>
							</table>
						</div>
				    </div>
				    <div class="card-footer" >
				      <small class="text-muted"></small>
				    </div>
				  </div>
				  
				  			  <div class="card" style="overflow:hidden;margin-top:10px;">
				    <div class="card-body" >
				    <h5 style="font-size:large;font-weight:bold;">露營車</h5><br>
				      <p class="card-text">訂單編號:10900001</p>				    	
				      <p class="card-text">訂購日期:2020/10/31</p>
				      <p class="card-text">收貨姓名:王小明</p>
				      <p class="card-text">連絡電話:0911111111</p>			      
				      <p class="card-text"></p>
				      <p class="card-text">訂購金額:NT$145</p>
				      <div style="background-color:#F0F0F0;height:25px;width:120%;margin-left:-15px;padding-left:20px;font-weight:bold;display: flex;align-items: center" class="listbutton">
				      <i class='fas fa-list'></i>&emsp;購買明細</div>
						<div class="listinfo" style="display:none">
							<table style="margin-top:8px;width:100%"> 
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>露營車&emsp;</td>
								<td>1790&emsp;</td>
								</tr>
								
								<tr>
								<td><i class="fa fa-caret-right">&emsp;</i></td>
								<td>烹調組</td>
								<td>650</td>
								</tr>
							</table>
						</div>
				    </div>
				    <div class="card-footer" >
				      <small class="text-muted"></small>
				    </div>
				  </div>
				  
<!-- 				  橫排三個CARD結束 -->
				  </div> 
				  
				  
				    
				  
				  
<!-- 				  MENU3結束 -->
				</div>	

        <div id="menu4" class="tab-pane fade munuinf" style="border-style:none;">
<!--             <h3>Menu 4</h3> -->
            <div id="memsearcgmenu4" style="margin-top:30px">查無資料</div>
            <div style="margin-top:30px;" id="showfriendlist">
<!--             		cards開始 -->
<!--             		<div class="card mb-3" style="max-width: 540px;"> -->
<!-- 					  <div class="row no-gutters"> -->
<!-- 					    <div class="col-md-4"> -->
<!-- 					      <img src="..." class="card-img" alt="..." id="showfriendpic"> -->
<!-- 					    </div> -->
<!-- 					    <div class="col-md-8"> -->
<!-- 					      <div class="card-body"> -->
<!-- 					        <h5 class="card-title" id="showfriendname"></h5> -->
<!-- 					        <p class="card-text" id="showfriendmemberId"></p> -->
<!-- 					        <p class="card-text" id="showfriendgender"></p> -->
<!-- 							<p class="card-text"><small class="text-muted" id="showfriendpaid"></small></p> -->
<!-- 					      </div> -->
<!-- 					    </div> -->
<!-- 					  </div> -->
<!-- 					</div> -->
<!-- 					cards結束             -->
			</div>
         
    </div>
    </div>

</body>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>	

<script>
$("#updatemem").click(function() {
	var a=0;
	if ($("#mcname").val()===""){
		$("#errormcname").html("姓名不得為空值")
		a=1;
	}if($("#mcpassword").val().length < 8){
		$("#errormcpassword").html("密碼請大於8位數")
		a=1;
	}if($("#mcpassword").val()!==$("#mcpassword2").val()){
		$("#errormcpassword").html("密碼與驗證密碼不一致")	
		a=1;
	}if($("#mcphone").val()===""){
		$("#errormcphone").html("phone不得為空值")	
		a=1;
	}if($("#mcaddress").val()===""){
		$("#errormcaddress").html("address不得為空值")	
		a=1;
	}if (a>=1){
		return false;
	}
	var data = new Object();
	data.name = $("#mcname").val();
	data.password = $("#mcpassword").val();
	data.phone = $("#mcphone").val();
	data.address = $("#mcaddress").val();
	data.mail = $("#mcmail").val();
	data.status = "Y";
	data.paid = 0;
	data.roles = "member";
	data.id="${memberBean.id}";
	data.memberId="${memberBean.memberId}";
	data.gender ="${memberBean.gender}";
	data.birthday ="${MemberBean.birthday}";
	data.registerDate ="${memberBean.registerDate}";
	data.image ="${memberBean.image}";
	console.log(data);
	$.ajax({
		url : "<c:url value='/Member/updatemcmem'/>",
		method : 'POST',
		dataType : 'json',
		data : data
	}).done(function(result) {
		window.location.reload();
		alert(result.r);
		})
});
$("#ecpay").click(function() {
	console.log("綠界");
	
	$.ajax({
		url : "<c:url value='/EcPay/MemberUpgrade' />",
		type : "POST",
		data : "",
		contentType : "application/json",
		success : function(data) {
			$.ajax({
				url : "<c:url value='/Member/ecpayDbPaid' />",
				type : "POST",
				data : "",
				contentType : "application/json",
				success : function(data) {
					$("#ecpay").html(data);
				}
			});
			$("#ecpay").html(data);
		}
	});
});
	
	  $(".listbutton").click(function(){
		  if( $(".listinfo").css("display") == 'none' ){ 
		  $(".listinfo").show();
		  }else{$(".listinfo").hide();}
	});
	  
	  
	  $("#searchname").change(function(){
			$("#memsearcgmenu4").hide();
			$("#showfriendlist").hide();
		  var data = new Object();
			data.name = $("#searchname").val();
			$.ajax({
				url : "<c:url value='/Member/search'/>",
				method : 'POST',
				dataType : 'json',
				data : data
			}).done(function(result) {
				$("#showfriendlist").html("");
				if(result.list.length>0){
					$("#memsearcgmenu4").hide();
					$("#showfriendlist").show();
					for (var i=0; i <=result.list.length-1 ; i++){				
						
						var resultHtml = 
							"<div class='card mb-3' style='max-width:450px;height:100px'>"
		  					+"<div class='row no-gutters' style='overflow:hidden'>"
		  					+"<div class='col-md-4' style='height:100%'>"
		  					+"<img src="+result.list[i].image+" style='padding-left:20px;height:100%;width:80%;' class='card-img' alt='...'>"
		  					+"</div>"
		  					+"<div class='col-md-8'>"
		  					+"<div class='card-body'>"
		  					+"<h5 class='card-title'>"+result.list[i].name+"</h5>"
		  					+"<p class='card-text'>"+result.list[i].memberId+"</p>"
		  					+"<p class='card-text'>"+result.list[i].gender+"</p>"
		  					+"</div></div></div></div>";
						
						$("#showfriendlist").append(resultHtml);}										
				}else{
					$("#memsearcgmenu4").show();
					$("#showfriendlist").hide();
					}
				})
				$("#searchname").val("");
			
	});  
	  
</script>


</body>
</html>