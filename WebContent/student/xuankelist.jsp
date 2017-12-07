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
				<th>学号</th>
				<th>姓名</th>
				<th>班级</th>
				<th>状态</th>
				<th>备注</th>
				</tr>
				<c:forEach var="i" items="${confirm_list}" varStatus="f">
				<tr>
				<td>${f.count}</td>
				<td>${i.student_id}</td>
				<td>${i.student_name}</td>
				<td>${i.coursenum}</td>
				<td>待确认</td>
				<td>空白</td>
				</tr>
				</c:forEach>
				</table>

</div>
<%@include file="/bottom.jsp" %>
</div>
</body>
</html>