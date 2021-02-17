<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>新增營地</title>
	<style>
	fieldset {
		width: 500px;
		margin: 15px;
		border: 1px solid #acd6ff;
		border-radius: 15px;
	}
	
	legend {
		margin-left: 50px;
	}
	
	.st1 {
		width: 450px;
		border-bottom: 3px dashed #ADADAD;
		margin: 20px;
		padding-bottom: 10px;
	}
	
	.sub {
		width: 450px;
		margin: 20px;
		text-align: center;
	}
	
	.t1 {
		width: 100px;
		float: left;
		text-align: right;
	}
	
	textarea {
		resize: none;
	}
	</style>
</head>

<body>
	<form:form action="Insert" method="Post" modelAttribute="campInfo">
		<fieldset>
			<legend>營地資料註冊</legend>
			<div class="st1">
				<form:label class="t1" for="name" path="name">營地名:</form:label>
				<form:input type="text" path="name"
					id="name" name="name" size="10" value="阿里山神木" />
			</div>
			<div class="st1">
				<form:label class="t1" for="address" path="address">地址:</form:label>
				<form:input type="text" path="address"
					id="address" name="address" size="10" value="嘉義縣" />
			</div>
			<div class="st1">
				<form:label class="t1" for="altitude" path="altitude">海拔:</form:label>
				<form:input type="text" path="altitude"
					id="altitude" name="altitude" size="10" value="1992" />
			</div>
			<div class="st1">
				<form:label class="t1" for="owner" path="owner">營主姓名:</form:label>
				<form:input type="text" path="owner"
					id="owner" name="owner" size="10" value="老王" />
			</div>
			<div class="st1">
				<form:label class="t1" for="ownerPhone" path="ownerPhone">營主電話:</form:label> 
				<form:input type="text" path="ownerPhone"
					id="ownerPhone" name="ownerPhone" size="10" value="0988765321" />
			</div>
		</fieldset>
		<div class="sub">
			<input type="submit" value="送出"> 
			<input type="reset" value="清除">
		</div>
	</form:form>
</body>
</html>