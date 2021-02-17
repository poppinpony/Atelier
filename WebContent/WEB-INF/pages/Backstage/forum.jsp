<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-clearmin.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/roboto.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/material-design.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/small-n-flat.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/summernote.css">
    
	<script src="${pageContext.request.contextPath}/js/lib/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.mousewheel.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.cookie.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/fastclick.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/clearmin.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/summernote.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/demo/notepad.js"></script>
    
    <title>露營後台</title>
</head>
<body class="cm-no-transition cm-1-navbar">
<jsp:include page="/WEB-INF/pages/Backstage/top.jsp" />    
		     
        <div id="global">
            <div class="container-fluid">
                <div class="panel panel-default">
                    <div class="panel-heading">New article</div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label>Title</label>
                            <input type="text" class="form-control" placeholder="Enter title">
                        </div>
                        <label>Content</label>
                        <div id="summernote"></div>
                        <div class="form-group text-right" style="margin-top:20px">
                            <button type="submit" class="btn btn-default">Save Draft</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="cm-footer"><span class="pull-left">Connected as John Smith</span><span class="pull-right">&copy; PAOMEDIA SARL</span></footer>
        </div>
		<script>
			
		
		
// 			$("#summernote").html("aaaaaaa");
		
		
		</script>
		
    </body>
</html>