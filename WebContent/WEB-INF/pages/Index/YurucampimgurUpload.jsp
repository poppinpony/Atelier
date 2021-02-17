<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Imgur-Upload</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${pageContext.request.contextPath}/css/stylea.css" rel="stylesheet" media="screen">
    <link href="${pageContext.request.contextPath}/css/mobile-style.css" rel="stylesheet" media="screen">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.png">
</head>
<body>
    <div class="title">
        <h1>YuruCamp Imgur Upload API </h1>
        <p>可以吐得出網址，所以往後端傳應該沒問題，帳號我也辦好了</p>
		<p>這是用JS做IMGUR的上傳方式，方法來源>>我之前說的寶藏礦區</p>
    </div>
    <div class="dropzone">
        <div class="info"></div>
<!--         <input id="tag" type="text" value="aaa"/> -->
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/imgur.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/upload.js"></script>
</body>
</html>