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
<div align="center" class="text-primary">《项目管理软件》实践环节指导书</div>  <br />
一、教学目的与基本要求  <br />
       项目管理作为管理学的重要分支，已经成为了集多领域知识为 <br />
一体的综合性交叉学科，成为现代企业、政府部门和各类组织的最新管理模式，并被各行 <br />
各业广泛的应用，其理论和方法也在不断的发展。项目管理是管理专业的一门应用学科。 <br />
《项目管理软件》阐述的是在项目管理过程中经常使用的辅助软件的基本概念和使用方法。 <br />
熟练使用项目管理软件对于项目组织及项目管理起着十分重要的作用，能够有效提升项 <br />
目管理的效率和成功率。项目管理软件是项目管理者的必备技能之一， <br />
本课程是为培养和检验自学者对项目管理软件的概念、方法和 和运用而设置的。设置本课程<br />
的目的和要求是：使自学者了解项目管理软件的在项目管理中的作用、掌握项目管理软 <br />
件的基本使用方法，能够利用软件管理和安排项目的任务、资源、时间，有效解决时间 <br />
和资源冲突，以及跟踪项目的进 程，为考生从事实际工作奠定基础。  《项目管理软件》 <br />
实践考核是本专业重要专业课程之一，通过实践的形式将现代项目管理基本理论 <br />
和技术得以合理应用。 <br />
实践考核主要是考核考生综合运用项目管理软件基本理论知识、相关的操作技 <br />
能和方法解决项目管理中实际问题的能力，是实现本专业培养目标的重要手段之一。     <br />
基本要求如下：   <br />
  1.掌握一定的项目管理软件基本理论知识、设计知识、相关的操作技能，并能 <br />
        够将这些知识与技能应用到实际的项目管理过程中； <br />
  2.熟练使用项目管理软件； <br />
  3.能够通过计算机进行单个项目的动态管理； <br />
  4.撰写课程设计报告。   <br />
 二、考核的组织工作  在上海理工大学成人与继续教育学院实践考核领导小组之下， <br />
 由课程考核小组拟定 考核内容、方式，评定考生成绩。 <br />
  三、考核内容  本次考核，根据已具备的教学条件和有限时间，结合自考教育的特点 <br />
，分为上机考试和课程设计二部分考核。 <br />
   1、上机考核内容应侧重基础知识、基本技能的考核，按照自考项目管理软件教 <br />
            学考试大纲内容要求，对基本理论和知识点进行考核。 <br />
   2、课程设计考核内容主要是通过工作中的项目或自拟项目进行分 <br />
           析与设计，并运用项目管理软件中的基本理论、思想和方法解决相 <br />
           应的问题，通过设计分析来提高考生解决实际问题的能 <br />
           力和运用管理软件方法技巧的能力。     <br />
  四、考核形式及选题标准  考核形式分课程设计考核和上机考核两种， <br />
  各占考核总分（满分100分）的50%，考核总分60分以上（含60分）为合格。   <br />
 （一）课程设计考核方式 1.选题范围  项目管理课程设计根据考核内容，针对成人教 <br />
 育学习特点，由考生拟定实际工作中的项目、实习课题中的项目或生活中的一个项目 <br />
 （提示：施工项目、研发项目、营销项目、采购物资项目、开网店、网站设计、 <br />
 家庭装修、运动会组织、迎接新生、校庆、举办晚会、家庭采购、亲戚婚礼），利用 <br />
 项目管理软件进行项目管理，并撰写不少于5000字的“课程设计报告”，结合考生 <br />
 的课程设计答辩情况作为评定成绩的依据。 <br />   
  2.课程设计报告内容 
     （1）项目概述（从项目背景、目标、工作范围、进度、成本等方面介绍）  <br />
    （2）项目计划  自行创建项目；  利用项目向导定义项目日历；  创建任务 <br />
    （任务不少于10个，要有周期性任务）；  <br />
  任务分级；  安排任务工期、开始时间、结束时间（总工期不少于10天）； 建立项目 <br />
  里程碑； 设定任务之间的关系； <br />
    添加部分任务的其他信息（备注、任务限制、超级链接） 插入WBS域； 设置项目属性。   <br />
    （3）项目资源管理  创建项目资源（资源不少于5项）； 设置资源的可用性、 <br />
    资源日历 设置资源信息（备注信息、超级链接） <br />
     为任务分配资源    <br />
     （4）项目成本管理  设置资源费率 为任务设置固定成本  <br />
     （5）项目进度跟踪     <br />
     （6）结论 <br />
    </div>
</div>
</div>
</div>
<%@include file="/bottom.jsp" %>
</div>
</html>