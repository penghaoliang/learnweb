<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<style type="text/css">
/* Custom Styles */
ul.nav-tabs {
	width: 140px;
	margin-top: 20px;
	border-radius: 4px;
	border: 1px solid #ddd;
	box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
}

ul.nav-tabs li {
	margin: 0;
	border-top: 1px solid #ddd;
}

ul.nav-tabs li:first-child {
	border-top: none;
}

ul.nav-tabs li a {
	margin: 0;
	padding: 8px 16px;
	border-radius: 0;
}

ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover {
	color: #fff;
	background: #0088cc;
	border: 1px solid #0088cc;
}

ul.nav-tabs li:first-child a {
	border-radius: 4px 4px 0 0;
}

ul.nav-tabs li:last-child a {
	border-radius: 0 0 4px 4px;
}

ul.nav-tabs.affix {
	top: 30px; /* Set the top position of pinned element */
}
</style>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
	<div id="box">
		<%@include file="/top.jsp"%>
		<%@include file="/navigation3.jsp"%>
		<div id="main" data-spy="scroll" data-target="#myScrollspy">
			<div class="container">
				<div class="jumbotron">
					<h1>考试大纲</h1>
				</div>
				<div class="row">
					<div class="col-xs-3" id="myScrollspy">
						<ul class="nav nav-tabs nav-stacked" data-spy="affix"
							data-offset-top="125">
							<li class="active"><a href="teach_plan.jsp">授课教案</a></li>
							<li><a href=" ">教学视频</a></li>
							<li><a href="course_exercise.jsp">练习题</a></li>
							<li><a href="knowledge_index.jsp">知识点索引</a></li>
							<li><a href="examination_syllabus.jsp">考试大纲</a></li>
							<li><a href="case_analysis.jsp">案例分析</a></li>
						</ul>
					</div>
					<div class="col-xs-7">
						<div>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （1）掌握信息系统知识；</p>
							<p>      （2）掌握信息系统项目管理知识和方法；</p>
							<p>      （3）掌握大型、复杂项目管理和多项目管理的知识和方法；</p>
							<p>      （4）掌握项目整体绩效评估方法；</p>
							<p>      （5）熟悉知识管理和战略管理；</p>
							<p>      （6）掌握常用项目管理工具；</p>
							<p>      （7）熟悉过程管理；</p>
							<p>      （8）熟悉业务流程管理知识；</p>
							<p>      （9）熟悉信息化知识和管理科学基础知识；</p>
							<p>      （10）熟悉信息系统工程监理知识；</p>
							<p>      （11）熟悉信息安全知识；</p>
							<p>      （12）熟悉信息系统有关法律法规、技术标准与规范；</p>
							<p>      （13）熟悉项目管理师职业道德要求；</p>
							<p>      （14）熟练阅读并准确理解相关领域的英文文献。</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="/bottom.jsp"%>
	</div>
</html>