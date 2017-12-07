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
	
<title>选课</title>
</head>
<body>
<div id="box">
<%@include file="/top.jsp" %>
<%@include file="/navigation3.jsp" %>
<div id="main">
<div class="jumbotron">
				<h1>选课</h1>
			</div>
			<table width="100%"  border="0" cellpadding="0"
				cellspacing="0" style="padding: 5px;">
				<tr>
				<th>编号</th>
				<th>课程名</th>
				<th>班级</th>
				<th>授课时间</th>
				<th>授课教师</th>
				<th>选课</th>
				</tr>
				<c:forEach var="i" items="${course_list}" varStatus="f">
				<tr>
				<td>${f.count}</td>
				<td>软件项目管理</td>
				<td>${i.coursenum}</td>
				<td>${i.date}</td>
				<td>${i.teacher.name}</td>
				<td><a href="queren.jsp?num=${i.coursenum}&teacher_id=${i.teacher.id}">选课</a></td>
				</tr>
				</c:forEach>
				</table>

</div>
<%@include file="/bottom.jsp" %>
</div>
</body>
</html>