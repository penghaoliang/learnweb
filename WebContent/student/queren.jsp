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
			<table   border="0" cellpadding="0"
				cellspacing="0" style="padding: 5px;">
				<tr>
				<th align="center">《软件项目管理》选课</th>
				</tr>
				<tr>
				<td>学号：</td>
				<td>${id}</td>
				</tr>
				<tr>
				<td>班级：</td>
				<td><%=request.getParameter("num") %></td>
				</tr>
				<tr>
				<td>姓名：</td>
				<td>${name}</td>
				</tr>
				<tr>
				<td>E-mail：</td>
				<td>${mail}</td>
				</tr>
				<tr>
				<td><a href="StudentServlet.do?action=zbqueren&num=<%=request.getParameter("num")%>&teacher_id=<%=request.getParameter("teacher_id")%>">确认</a></td>
				<td><a href="viewtakeCourse.jsp">取消</a></td>
				</tr>			
				</table>

</div>
<%@include file="/bottom.jsp" %>
</div>
</body>
</html>