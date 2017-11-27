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
<%@include file="top.jsp" %>
<%@include file="navigation3.jsp" %>
<div id="main" data-spy="scroll" data-target="#myScrollspy">
<div class="container">
   <div class="jumbotron">
        <h1>课程介绍</h1>
    </div>
    <div class="row">
        <div class="col-xs-3" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
                <li class="active"><a href="#section-1">课程简介</a></li>
                <li><a href="#section-2">教学大纲</a></li>
                <li><a href="#section-3">课时安排</a></li>
                <li><a href="#section-4">课程特色</a></li>
                <li><a href="#section-5">参评方式</a></li>
                <li><a href="#section-6">参考书目</a></li>
            </ul>
        </div>
        <div class="col-xs-7" >
        <div>
            <h2 id="section-1">课程简介</h2>
            <p > 软件项目管理课程主要介绍软件项目管理的基本知识和方法，是软件工程专业学生的一门必修课程。课程说明了软件项目管理的过程和框架，从项目范围计划、项目进度计划、项目成本计划、项目质量计划、项目人力资源管理、项目风险管理、项目执行控制等内容，全面介绍了项目管理的知识。学习这门课程对学生做需要团队合作的课程设计和毕业设计有很大的帮助，也有助于学生以后的工作，在日常的生活和学习中也可以帮助他们更好地安排时间、金钱，制定日常的计划。</p>
            <hr>
            <h2 id="section-2">教学大纲</h2>
            <p>本课程是软件工程专业的专业课，通过本课程的学习，使学生掌握现代项目管理的一些基本概念、基本原理和基本方法，了解项目特别是软件项目管理各个阶段所需的基本技术和工具，使得学生初步具备制定项目计划和实施项目管理的基本技能。</p>
            <p>学生应按照本教学大纲，掌握现代项目管理的基本原理和基本方法，了解项目特别是软件项目管理各个阶段所需的基本技术和工具，初步具备制定项目计划和实施项目管理的基本技能。       </p>
            <hr>
            <h2 id="section-3">课时安排</h2>
            <p>周二 3 4 5节课</p>
            <hr>
            <h2 id="section-4">课程特色</h2>
            <p>软件产品与其他任何产业的产品不同，它是无形的，完全没有物理属性。对于这样看不见，摸不着的产品，难以理解，难于架驭。但它确实是把思想、概念、算法、流程、组织、效率、优化等融合在一起了。因此，要开发这样的产品，在许多情况下，用户一开始给不出明确的想法，提不出确切的要求。他说不清究竟他需要的是什么。在开发的过程中，程序与其相关的文档常常需要修改。在修改的过程中又可能产生新的问题，并且这些问题很可能在过了相当长的时间以后才会发现。文档编制的工作量在整个项目研制过程中占有很大的比重。但从实践中看出，人们对它不感兴趣、认为是不得不做的苦差事，不愿认真地去做。因而直接影响了软件的质量。软件开发工作技术性很强，要求参加工作的人员具有一定的技术水平和实际工作的经验。但事实上，人员的流动对工作的影响很大。离去的人员不但带走了重要的信息，还带走了工作经验。</p>
            <p>所谓项目管理，就是项目的管理者，在有限的资源约束下，运用系统的观点、方法和理论，对项目涉及的全部工作进行有效地管理。即从项目的启动开始到项目结束的全过程,从项目的立项，启动，计划，监控和结束。</p>
            <hr>
            <h2 id="section-5">参评方式</h2>
            <p>1）期末闭卷考试   占总成绩的60%</p>
            <p>2）平时成绩10%</p>
            <p>3）期中成绩10%</p>
            <p>4）实践成绩20%</p>
            <hr>
            <h2 id="section-6">参考书目</h2>
            <p>1）《软件项目管理理论与案例分析》  吴吉文   中国电力出版社  2009.1</p>
            <p>2）《Software Project Management》(,Fifth Edition),Hughes, Bob; Cotterell, Mike (2010, ,5,1),McGraw-Hill Higher Education  2009.7</p>
            <p>3）《软件项目管理案例教程》韩万江  姜立新  机械工业出版社  2010.1</p>
            <p>4）《软件项目管理》（美）亨利（Henry,J.） 著，刘宇驰 等译 中国电力出版社 2012.3</p>
        </div>
    </div>
</div>
</div>
<%@include file="bottom.jsp" %>
</div>
</html>