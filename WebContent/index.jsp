<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>首页</title>
<style type="text/css">
#box{
	margin:0 auto auto auto;	
	width:1000px;					
	clear:both;					
	background-color: #FFFFFF;	
}  
#main {
	left: 1%;
	top: 30%;
	width: 1000px;
	height: 600px;
	z-index: 1;
	overflow: auto;	
	background-color: red;		
}
</style>
</head>
<body>
<div id="box">
<%@include file="top.jsp" %>
<%@include file="navigation.jsp" %>
<%@ include file="register.jsp" %>
<div id="main"></div>
<%@include file="bottom.jsp" %>
</div>
</body>
</html>