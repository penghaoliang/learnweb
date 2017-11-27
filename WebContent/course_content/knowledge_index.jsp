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
        <h1>知识点索引</h1>
    </div>
    <div class="row">
        <div class="col-xs-3" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
                <li class="active"><a href="teach_plan.jsp">授课教案</a></li>
                <li><a href=" ">教学视频</a></li>
                <li><a href="course_exercise.jsp">练习题</a></li>
                <li><a href="knowledge_index.jsp">知识点索引</a></li>
                <li><a href="#section-5">考试大纲</a></li>
                <li><a href="#section-6">模拟试卷</a></li>
                <li><a href="#section-6">案例分析</a></li>
            </ul>
        </div>
        <div class="col-xs-7" >
        <div>
<h2>1、软件项目管理的基础</h2>
<p>1）项目与软件项目的概念</p>
<p>2）项目管理的概念 </p>
<p>3）项目管理知识体系（ PMBOK）</p>
<p>4）软件开发项目管理的范围；</p>
<p>5）过程管理与软件项目管理的关系</p>
<p>6）软件项目管理过程</p>
<h2>2、软件项目全生命周期的阶段划分</h2>
<p>1）软件项目分类和软件项目各阶段之间关系</p>
<p>2）软件项目生命周期中里程碑的设定与管理</p>
<h2>3、软件项目的需求管理   </h2>
<p>1）软件项目需求管理概述 </p>
<p>2）需求开发和管理过程 </p>
<p>3）需求获取方法 </p>
<p>4）需求分析建模方法 </p>
<p>5）需求的变更</p>
<h2>4、软件项目任务分解</h2>
<p>1）理解WBS概念和用途，能用图形和字典的方法说明任务分解的情况； </p>
<p>2）掌握任务的概念；</p>
<p>3）掌握任务分解的方法和步骤。</p>
<h2>5、软件项目规模成本估算</h2>
<p>1）理解成本管理的过程；</p>
<p>2）理解项目的规模、项目的成本及他们的关系；</p>
<p>3）掌握成本估算的概念；</p>
<p>4）掌握代码行、功能点、对象点、类比 (自顶向下)估算法、自下而上估算法、参数法估算法、专家估算法；</p>
<p>5）掌握计算项目总估算成本的方法；</p>
<p>6）掌握估算误差的计算方法。</p>
<h2>6、软件项目进度计划</h2>
<p>1）理解进度和活动的定义；</p>
<p>2）理解活动之间的关系及顺序；</p>
<p>3）掌握网络图、甘特图、里程碑图、资源图这些进度管理的图示方法；</p>
<p>4）掌握进度的各种估算方法；</p>
<p>5）掌握编写进度计划的方法；</p>
<p>6）掌握压缩项目时间的方法；</p>
<p>7）掌握项目进度计划的工具Project。</p>
<h2>7、软件的质量管理</h2>
<p>1）理解软件质量的概念；</p>
<p>2）了解软件质量模型和质量管理过程；</p>
<p>3）掌握软件质量成本计算和质量测试方法；</p>
<p>4）掌握常用的质量控制活动：静态分析、动态测试、缺陷追踪；</p>
<p>5）了解质量计划的写作。</p>
<h2>8、软件项目配置管理</h2>
<p>1）理解配置管理的概念和作用；</p>
<p>2）理解配置项、基线、配置控制委员会的概念；</p>
<p>3）掌握配置管理的过程；</p>
<p>4）掌握变更控制的过程；</p>
<p>5）了解配置管理计划的写作；</p>
<h2>9、软件项目的风险管理</h2>
<p>1）理解风险的概念</p>
<p>2）理解风险管理的过程；</p>
<p>3）掌握风险识别的主要方法；</p>
<p>4）掌握定量和定性风险评估的方法；</p>
<p>5）掌握决策树的方法；</p>
<p>6）了解风险管理计划的内容。</p>
<h2>10、软件项目团队管理</h2>
<p>1）理解团队的概念和特点；</p>
<p>2）掌握团队技能的表示方法；</p>
<p>3）掌握团队组织结构的表示；</p>
<p>4）了解项目经理的作用；</p>
<p>5）理解团队的组织方式；</p>
<p>6）了解团队沟通的方法。</p>
<h2>11、软件项目跟踪控制</h2>
<p>1）理解项目控制的方法；</p>
<p>2）了解项目信息采集过程；</p>
<p>3）掌握项目范围监控、项目成本监控、项目进度监控、项目资源监控、项目质量监控、项目风险监控的方法；</p>
<p>4）了解项目评审的内容。</p>
        </div>
    </div>
</div>
</div>
</div>
<%@include file="/bottom.jsp" %>
</div>
</html>