<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="916965697921-kvipep3dqn362pk86etoa1les14pharh.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="icon" href="<c:url value='/img/yuruIcon.png' />"
	type="image/x-icon">
<title>TestOne</title>
</head>
<body>

	<div class="g-signin2" data-onsuccess="onSignIn" onclick="ClickLogin()"
		data-theme="dark"></div>
	<a href="#" οnclick="signOut();">Sign out</a>

	<script>
		var clicked = false;//Global Variable
		function ClickLogin() {
			clicked = true;
		}
		function onSignIn(googleUser) {
			// 客户端如果有需要的话可以通过profile来获取用户信息
			var profile = googleUser.getBasicProfile();
			// 传回后台验证，并获取userid
			var id_token = googleUser.getAuthResponse().id_token;
			alert(id_token);
			
		};

		function signOut() {
			var auth2 = gapi.auth2.getAuthInstance();
			auth2.signOut().then(function() {
				console.log('User signed out.');
			});
		}
		
	</script>
</body>
</html>