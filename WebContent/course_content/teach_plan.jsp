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
<%@include file="/top.jsp" %>
<%@include file="/navigation3.jsp" %>
<div id="main" data-spy="scroll" data-target="#myScrollspy">
<div class="container">
   <div class="jumbotron">
        <h1>授课教案</h1>
    </div>
    <div class="row">
        <div class="col-xs-3" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
                <li class="active"><a href="teach_plan.jsp">授课教案</a></li>
                <li><a href="#section-1">教学视频</a></li>
                <li><a href="course_exercise.jsp">练习题</a></li>
                <li><a href="knowledge_index.jsp">知识点索引</a></li>
                <li><a href="examination_syllabus.jsp">考试大纲</a></li>
                <li><a href="case_analysis.jsp">案例分析</a></li>
            </ul>
        </div>
        <div class="col-xs-7" >
        <div>
           	<h2>第一，二章 项目管理概述及生命周期</h2>
           	<h3>基本内容</h3>
           	<p>1．项目和项目管理概念</p>
           	<p>2．项目生命周期</p>
           	<p>3．项目管理过程（呈现其知识体系结构）</p>
           	<p>4．软件生命周期的概念和软件生命周期模型</p>
           	<hr>
           	<h2>教学目标</h2>
           	<p>1．掌握项目和项目管理的概念，并理解项目管理的重要性</p>
           	<p>2．了解项目生命周期</p>
           	<p>3．掌握项目管理的过程（知识体系结构</p>
           	<p>4．了解软件生命周期及软件生命周期模型</p>
           	<hr>
           	<h2>重点难点</h2>
           	<p>1．项目和项目管理概念</p>
           	<p>2．项目生命周期</p>
           	<p>3．项目管理知识体系结构</p>
           	<p>4．软件生命周期定义和软件生命周期模型</p>
           	<hr>
           	<h2>第三章 项目可行研究与启动</h2>
           	<h3>基本内容</h3>
           	<p>1．投标决策</p>
           	<p>2．制定能中标的申请书的要素</p>
           	<p>3．申请准备过程和申请书可能包括的要素</p>
           	<p>4．定价理由</p>
           	<p>5．评价申请书</p>
           	<p>6．客户和承约商间的合同类型</p>
           	<p>7．项目计划概念和内容</p>
           	<p>8．项目控制概念和过程</p>
           	<p>9．项目结束</p>
           	<hr>
           	<h2>教学目标</h2>
           	<p>1．合理应用投标决策</p>
           	<p>2．掌握制定能中标的申请书的要素</p>
           	<p>3．掌握申请准备过程和申请书可能包括的要素</p>
           	<p>4．了解定价理由</p>
           	<p>5．掌握评价申请书的内容</p>
           	<p>6．了解客户和承约商间的合同类型</p>
           	<p>7．掌握项目计划概念和内容</p>
           	<p>8．掌握项目控制概念和过程</p>
           	<p>9．了解项目结束所包含措施</p>
           	<hr>
           	<h2>重点难点</h2>
           	<p>1．投标决策</p>
           	<p>2．制定能中标的申请书的要素</p>
           	<p>3．申请准备过程和申请书可能包括的要素</p>
           	<p>4．项目计划概念和内容</p>
           	<p>5．项目控制概念和过程</p>
        </div>
        
        
          <h2 id="section-1">教学视频</h2>
           <div style="line-height:30px"  >
            <a href="showvideo2.jsp">7分钟带你了解项目管理课程</a><br>
            <a href="showvideo3.jsp">project教程（1）</a><br>
            <a href="showvideo4.jsp">project教程（2）</a><br>
            <a href="showvideo5.jsp">project教程（3）</a><br>
            <a href="showvideo6.jsp">project教程（4）</a><br>
            <a href="showvideo7.jsp">project教程（5）</a><br>

            <hr>
    </div>
</div>
</div>
</div>
<%@include file="/bottom.jsp" %>
</div>
</html>