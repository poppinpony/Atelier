<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reCAPTCHA_v3</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://www.google.com/recaptcha/api.js?render=6Lcd2-UZAAAAAPBRk2jcML60BLtdKHFsfG3zVImr"></script>

</head>
<body>

	<form action="" method="POST">
		<label for="name">Name:</label> <input name="name" required><br />
		<label for="email">Email:</label> <input name="email" type="email"
			required><br />
		<div class="g-recaptcha"
			data-sitekey="6Lcd2-UZAAAAAPBRk2jcML60BLtdKHFsfG3zVImr" data-size ='invisible'></div>
		<br /> <input type="submit" value="Submit">
	</form>

<script>
	grecaptcha.ready(function() {
		console.log('1. grecaptcha.ready');
		console.log('2. grecaptcha.execute("6Lcd2-UZAAAAAPBRk2jcML60BLtdKHFsfG3zVImr", { action: "<c:url value='/Ajax/CampSite/recaptchaV3' />" })');
		grecaptcha.execute('6Lcd2-UZAAAAAPBRk2jcML60BLtdKHFsfG3zVImr',{
			action : "submit"
		}).then(function(token) {
			console.log('3. Get token from reCAPTCHA service => ',token);
			console.log('4. Verifying Bot...');
			$.ajax({
				type : 'POST',
				url : "<c:url value='/Ajax/CampSite/recaptchaV3' />",
				data : {
					token : token
				},success : function(res) {
					console.log('5. Return => ',res);
				}
			});
		});
	});
</script>
</body>
</html>