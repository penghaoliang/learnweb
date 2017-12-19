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
</style>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
<div id="box">
<%@include file="/top.jsp" %>
<%@include file="/navigation3.jsp" %>
<div id="main" data-spy="scroll" data-target="#myScrollspy">
<div class="container">
 				<div class="jumbotron">
					<h1>师生交互过程</h1>
				</div>
    <div class="row">
        <div class="col-xs-3" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
     <li class="active"><a href="guide_book.jsp">实践指导书</a></li>
                <li><a href="practice_course.jsp">学生实践过程展示</a></li>
                <li><a href="practice_write.jsp">学生实践文档展示</a></li>
                <li><a href="communication.jsp">师生交互过程</a></li>
                <li><a href="practice_final.jsp">学生答辩过程</a></li>
            </ul>
        </div>
         <div class="col-xs-7" >
         <div align="center">
        <font  face="verdana" size="5"> 学生和老师正在一起交流</font>
        </div>
<img src="../images/practice_2.jpg" data-url="#" alt="" width="600" height="400">
 <div align="center">
<font  face="verdana" size="5"> 大家认真听取对方意见</font>
</div>
<img src="../images/practice_6.jpg" data-url="#" alt="" width="600" height="400">


</div>
</div>
</div>
</div>
<%@include file="/bottom.jsp" %>
</div>
</html>