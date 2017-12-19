<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="JS/Carousel.js"></script>
<link rel="stylesheet" href="css/style.css">

<title>首页</title>

<script type="text/javascript">
	$(function() {
		$('#carousel').carousel({
			curDisplay : 0,
			autoPlay : false,
			interval : 3000
		});
	});
</script>
</head>
<body>
	<div id="box">
		<%@include file="top.jsp"%>
		<%@include file="navigation3.jsp"%>
		<div id="index">

			<div id="carousel">
				<img src="images/teacher1.png" data-url="#" alt=""> <img
					src="images/teacher2.png" data-url="#" alt=""> <img
					src="images/sj1.png" data-url="#" alt="">
			</div>
		</div>	
		<%@include file="bottom.jsp"%>
	</div>
</body>
</html>