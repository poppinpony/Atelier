<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://www.google.com/recaptcha/api.js?render=6LdxzeQZAAAAAFG--yKa_Knlv4JrSOaj4t8-Le4p"></script>

</head>

<body>
	<h2>Modal Example</h2>
	<!-- Trigger the modal with a button -->
	<a href="https://yurucamp.youcanbook.me/" data-toggle="modal"
		data-target="#myModal">Click Me</a>
	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header"></div>
				<div class="modal-body">
					<iframe src="https://yurucamp.youcanbook.me/" width="100%"
						height="550" frameborder="0"></iframe>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
				</div>
			</div>

		</div>
	</div>

	<button class="g-recaptcha"
		data-sitekey="6LdxzeQZAAAAAFG--yKa_Knlv4JrSOaj4t8-Le4p"
		data-callback='onSubmit' data-action='onSubmit'>Submit</button>

	<form action="" method="POST">

		<label for="name">Name:</label> <input name="name" required><br />

		<label for="email">Email:</label> <input name="email" type="email"
			required><br />
		<div class="g-recaptcha"
			data-sitekey="6LdxzeQZAAAAAFG--yKa_Knlv4JrSOaj4t8-Le4p"></div>
		<br /> <input type="submit" value="Submit">
	</form>

<form action="<c:url value='/Ajax/CampSite/bot' />" method="post" id="form">
    {{ csrf_field() }}
    <button type="submit"
            class="g-recaptcha"
            data-sitekey="6LdxzeQZAAAAAFG--yKa_Knlv4JrSOaj4t8-Le4p"
            data-callback="OnSubmitFunction">
        Submit
    </button>
</form>
<script>
function OnSubmitFunction(token) {
	document.getElementById('form').submit();
}
</script>

	<script>
		grecaptcha
				.ready(function() {
					console.log('1. grecaptcha.ready');
					console
							.log('2. grecaptcha.execute("6LdxzeQZAAAAAFG--yKa_Knlv4JrSOaj4t8-Le4p", { action: "<c:url value='/Ajax/CampSite/bot' />" })');
					grecaptcha
							.execute(
									'6LdxzeQZAAAAAFG--yKa_Knlv4JrSOaj4t8-Le4p',
									{
										action : "submit"
									})
							.then(
									function(token) {
										console
												.log(
														'3. Get token from reCAPTCHA service => ',
														token);
										console.log('4. Verifying Bot...');
										$
												.ajax({
													type : 'POST',
													url : "<c:url value='/Ajax/CampSite/bot' />",
													data : {
														token : token
													},
													success : function(res) {
														console
																.log(
																		'5. Return => ',
																		res);
													}
												});
									});
				});

		function onSubmit(e) {
			e.preventDefault();
			grecaptcha.ready(function() {
				grecaptcha.execute('6LdxzeQZAAAAAFG--yKa_Knlv4JrSOaj4t8-Le4p',
						{
							action : "<c:url value='/Ajax/CampSite/recaptchaV3' />"
						}).then(function(token) {
					// Add your logic to submit to your backend server here.
				});
			});
		}
	</script>

</body>
</html>