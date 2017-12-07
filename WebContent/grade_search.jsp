<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${basePath}/css/main.css">

<title>成绩查询</title>
<style type="text/css">
#c{
margin:auto;
}
</style>
</head>
<body>
	<div id="box">
		<%@include file="/top.jsp"%>
		<%@include file="/navigation3.jsp"%>
		<div id="main">
			<div class="jumbotron">
				<h1>成绩查询</h1>
			</div>
			<div id="c">
			<form action="SearchServlet.do" method="post">
			<input type="text" name="id">
			<input type="submit" value="查询">
			</form></div>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				style="padding: 5px;">
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>班级</th>
					<th>平时成绩</th>
					<th>期中成绩</th>
					<th>期末成绩</th>
					<th>实践成绩</th>
					<th>总成绩</th>
				</tr>
				<tr>
					<td>${s.id}</td>
					<td>${s.name}</td>
					<td>${s.course.coursenum}</td>
					<td>${s.grade.usual_Grade}</td>
					<td>${s.grade.mid_Grade}</td>
					<td>${s.grade.final_Grade}</td>
					<td>${s.grade.experiment_Grade}</td>
					<td>
						${s.grade.usual_Grade*0.1+s.grade.usual_Grade*0.1+s.grade.experiment_Grade*0.2+s.grade.final_Grade*0.6}</td>
				</tr>
			</table>

		</div>
		<%@include file="/bottom.jsp"%>
	</div>
</body>
</html>