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
<style type="text/css">

#services {
	padding: 115px 0;
	text-align: center;
}

#services>.container>.row:last-of-type {
	margin-top: 30px;
}

#services .punchbox {
	padding: 90px 60px 65px;
	color: #605f65;
	text-align: left;
	line-height: 1;
}

#services .punchline {
	text-transform: none;
	font-family: 'Lora', serif;
	font-size: 15px;
}

#services .punchline span {
	display: block;
}

#services .punchline span:nth-of-type(1) {
	font-size: 33px;
}

#services .punchline span:nth-of-type(2) {
	font-family: 'Montserrat', sans-serif;
	text-transform: uppercase;
	font-size: 50px;
	color: #f95353;
	margin-top: 16px;
}

#services .punchline span:nth-of-type(3) {
	font-size: 20px;
	font-style: italic;
	margin-top: 26px;
}

#services .service {
	padding: 91px 45px 70px;
	background: #f7f7f7;
	cursor: pointer;
	-moz-transition: background 0.3s ease-in-out;
	-webkit-transition: background 0.3s ease-in-out;
	transition: background 0.3s ease-in-out;
}

#services .service:hover {
	color: #ffffff;
	background: #56c553;
}

#services .service:hover h4,
#services .service:hover .service-link {
	color: #ffffff;
}

#services .service h4 {
	-moz-transition: all 0.3s ease-in-out;
	-webkit-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

#services .service p {
	margin-top: 25px;
	line-height: 1.5;
	-moz-transition: all 0.3s ease-in-out;
	-webkit-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

#services .service .service-link {
	font-family: 'Montserrat', sans-serif;
	text-transform: uppercase;
	display: inline-block;
	color: #f95353;
	margin-top: 30px;
	-moz-transition: all 0.3s ease-in-out;
	-webkit-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

#services .service .service-link::after {
    content: '';
    display: block;
    width: 0;
    height: 1px;
    background: #ffffff;
    -moz-transition: width 0.3s ease-in-out;
	-webkit-transition: width 0.3s ease-in-out;
	transition: width 0.3s ease-in-out;
}

#services .service .service-link:hover::after {
    width: 100%;
}

</style>
</head>
<body>
	<div id="box">
		<%@include file="top.jsp"%>
		<%@include file="navigation3.jsp"%>
		<div id="index">
		<div>
			<div id="carousel">
				<img src="images/teacher1.png" data-url="#" alt=""> <img
					src="images/teacher2.png" data-url="#" alt=""> <img
					src="images/sj1.png" data-url="#" alt="">
			</div>
		</div>
		<section id="services">
			<div class="container">

				<div class="row">
					
					<div class="col-md-4">

						<div class="punchbox">
							
							<h2 class="punchline">
								<span>最新</span>
								<span>公告</span>
							</h2>

						</div> <!-- /.punchbox -->
						
					</div>

					<div class="col-md-2">
						
						<div class="service">

							<h4>公告</h4>

							<p>中层干部考察预告（2017年第12号）</p>

							<a href="gj1.jsp" class="service-link">点击浏览</a>

						</div> <!-- /.service -->

					</div>

					<div class="col-md-2">
						
						<div class="service">

							<h4>公告</h4>

							<p>机关党委科级干部招聘公告（2017年第13号）</p>

							<a href="gj2.jsp" class="service-link">点击浏览</a>

						</div> <!-- /.service -->

					</div>

				</div> <!-- /.row -->

			</div> <!-- /.container -->
			
		</section>

		</div>	
		<%@include file="bottom.jsp"%>
	</div>
</body>
</html>