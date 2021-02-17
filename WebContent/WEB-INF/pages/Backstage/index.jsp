<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    
     <script src="${pageContext.request.contextPath}/js/lib/jquery.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/jquery.mousewheel.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/jquery.cookie.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/fastclick.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/clearmin.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/demo/home.js"></script>
     
     
<!--    =================  3D圖表 -->
 	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['訂閱人數',     11],
          ['沒訂閱人數',      10]
        ]);

        var options = {
          title: '會員VIP',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
    
<!--    ======================= 線條圖 -->
      <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', '訂閱', '沒訂閱'],
          ['2016',  1000,      400],
          ['2017',  1170,      460],
          ['2018',  660,       1120],
          ['2019',  1030,      540]
        ]);

        var options = {
          title: 'Company Performance',
          hAxis: {title: 'Year',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0}
        };

        var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
    
    <title>露營後台</title>
</head>
<<body class="cm-no-transition cm-1-navbar">
<jsp:include page="/WEB-INF/pages/Backstage/top.jsp" />     
 <div id="global">
	 <div class="container-fluid">
	 	<div  class="container">
	 		 <h1>會員VIP</h1>
			 <div id="piechart_3d" style="width: 700px; height: 400px;"></div>
			 <h1>年成長</h1>
			 <div id="chart_div" style="width: 100%; height: 500px;"></div>
	 	</div>
	</div>
</div>
</body>
</html>