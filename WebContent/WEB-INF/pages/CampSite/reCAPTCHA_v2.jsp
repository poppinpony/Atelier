<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reCAPTCHA_v2</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://www.google.com/recaptcha/api.js?render=explicit&onload=onReCaptchaLoad"></script>
</head>
<body>

	<div id="myCaptcha"></div>


	<script type="text/javascript">
		var captchaWidgetId;
		var onReCaptchaLoad = function() {

			captchaWidgetId = grecaptcha.render('myCaptcha', {
				'sitekey' : '6Lcks-UZAAAAAPrLqlwVUnFrKNXaetgKmnJ6hK7a', // required   
				'theme' : 'light', // optional   
				'callback' : 'verifyCallback' // optional   
			});
		};

		var verifyCallback = function(recaptcha) {
			//接到回傳值
			// recaptcha =回傳值
			console.log("ajax:"+ recaptcha);
			$.ajax({
				type : 'POST',
				url : "<c:url value='/Ajax/CampSite/recaptchaV2' />",
				data : {
					recaptcha : recaptcha
				},success : function(res) {
					console.log('5. Return => ',res);
				}
			});

		}
	</script>

	<!-- 	<form action="?" method="POST"> -->
	<!-- 		<div class="g-recaptcha" data-theme="dark" data-sitekey="6Lcks-UZAAAAAPrLqlwVUnFrKNXaetgKmnJ6hK7a"></div> -->
	<!-- 		<br /> <input type="submit" value="Submit"> -->
	<!-- 	</form> -->
</body>
</html>