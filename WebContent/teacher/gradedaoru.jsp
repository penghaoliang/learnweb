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
	
<title>成绩导入</title>
<style>
input[type="text"]{
width:50px;
height:20px;
}
</style>
</head>
<body>
<div id="box">
<%@include file="/top.jsp" %>
<%@include file="/navigation3.jsp" %>
<div id="main">
<div class="jumbotron">
				<h1>成绩导入</h1>
			</div>
			<form action="GradeServlet.do?action=daoru" method="post">
			<table width="100%"  border="0" cellpadding="0"
				cellspacing="0" style="padding: 5px;">
				<tr>
				<th>编号</th>
				<th>学号</th>
				<th>姓名</th>
				<th>班级</th>
				<th>平时成绩</th>
				<th>期中成绩</th>
				<th>期末成绩</th>
				<th>实践成绩</th>
				<th>总成绩</th>
				</tr>
				<c:forEach var="i" items="${student_list}" varStatus="f">
				<tr>
				<td>${f.count}</td>
				<td>${i.id}</td>
				<td>${i.name}</td>
				<td>${i.course.coursenum}</td>
				<td>
				<input type="text" name="usual_Grade">	
				<input type="hidden" name="student_id" value="${i.id}"/>		
				</td>
				<td><input type="text" name="mid_Grade"></td>
				<td><input type="text" name="final_Grade"></td>
				<td><input type="text" name="experiment_Grade">	</td>
				<td>待计算</td>
				</tr>
				</c:forEach>
				<tr><td><input type="submit" value="导入"></td></tr>
				</table>
				</form>

</div>
<%@include file="/bottom.jsp" %>
</div>
</body>
</html>