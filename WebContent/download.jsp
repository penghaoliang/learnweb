<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${basePath}/css/main.css">
<style type="text/css">
/* Custom Styles */
    ul.nav-tabs{
        width: 140px;
        margin-top: 20px;
        border-radius: 4px;
        border: 1px solid #ddd;
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
    }
    ul.nav-tabs li{
        margin: 0;
        border-top: 1px solid #ddd;
    }
    ul.nav-tabs li:first-child{
        border-top: none;
    }
    ul.nav-tabs li a{
        margin: 0;
        padding: 8px 16px;
        border-radius: 0;
    }
    ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover{
        color: #fff;
        background: #0088cc;
        border: 1px solid #0088cc;
    }
    ul.nav-tabs li:first-child a{
        border-radius: 4px 4px 0 0;
    }
    ul.nav-tabs li:last-child a{
        border-radius: 0 0 4px 4px;
    }
    ul.nav-tabs.affix{
        top: 30px; /* Set the top position of pinned element */
    }
    a {font-family:Georgia;}
</style>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
<div id="box">
<%@include file="top.jsp" %>
<%@include file="navigation3.jsp" %>
<div id="main" style="line-height:30px; font-size:20px ;font-face:verdana"   data-spy="scroll" data-target="#myScrollspy">
 				<div class="jumbotron">
					<h1>下载区</h1>
				</div>
<a href="study-sucai.rar">软件项目管理素材下载</a> <br>
<a href="study-sucai.rar">案例下载</a> <br>
<a href="study-sucai.rar">往年作品</a> <br>
<a href="study-sucai.rar">软件项目管理模板下载</a> <br>
<a href="study-sucai.rar">特殊案例</a> <br>
<a href="study-sucai.rar">优秀管理教程</a> <br>
<a href="study-sucai.rar">软件项目管理资源下载</a> <br>
</div>
<%@include file="bottom.jsp" %>
</div>
</html>