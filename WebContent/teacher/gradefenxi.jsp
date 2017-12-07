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
	
<title>成绩分析</title>
<script src="${basePath}/JS/Chart.js"></script>
<style>
canvas{
	}
#c{
height:300px;
width:500px;
margin:auto;
z-index: 3;
}
input[type="text"]{
width:50px;
height:20px;
}
</style>
</head>
<body>
<div id="box">
<%@include file="/top.jsp" %>
<%@include file="/navigation3.jsp" %>
<div id="main">
<div class="jumbotron">
				<h1>成绩分析</h1>
			</div>
			<div id="c"><canvas id="canvas"  height="300" width="500"></canvas></div>
			<table width="100%"  border="0" cellpadding="0"
				cellspacing="0" style="padding: 5px;">
				<tr>
				<th>编号</th>
				<th>学号</th>
				<th>姓名</th>
				<th>班级</th>
				<th>平时成绩</th>
				<th>期中成绩</th>
				<th>期末成绩</th>
				<th>实践成绩</th>
				<th>总成绩</th>
				<th>通知/预警</th>
				</tr>
				<c:forEach var="i" items="${student1_list}" varStatus="f">
				<tr>
				<td>${f.count}</td>
				<td>${i.id}</td>
				<td>${i.name}</td>
				<td>${i.course.coursenum}</td>
				<td>${i.grade.usual_Grade}		
				</td>
				<td>${i.grade.mid_Grade}	</td>
				<td>${i.grade.final_Grade}	</td>
				<td>${i.grade.experiment_Grade}		</td>
				<td> ${i.grade.usual_Grade*0.1+i.grade.usual_Grade*0.1+i.grade.experiment_Grade*0.2+i.grade.final_Grade*0.6}</td>
				<td>
				<c:choose>
				<c:when test="${(i.grade.usual_Grade*0.1+i.grade.usual_Grade*0.1+i.grade.experiment_Grade*0.2+i.grade.final_Grade*0.6)<60.0}">
				<a href="GradeServlet.do?action=gradeyujing&i=2&email=${i.email}&name=${i.name}&usual_Grade=${i.grade.usual_Grade}&mid_Grade=${i.grade.mid_Grade}&final_Grade=${i.grade.final_Grade}&experiment_Grade=${i.grade.experiment_Grade}">预警</a>
				</c:when>
				<c:otherwise><a href="GradeServlet.do?action=gradeyujing&i=1&email=${i.email}&name=${i.name}&usual_Grade=${i.grade.usual_Grade}&mid_Grade=${i.grade.mid_Grade}&final_Grade=${i.grade.final_Grade}&experiment_Grade=${i.grade.experiment_Grade}">通知</a></c:otherwise>
				</c:choose>
				</td>
				</tr>
				</c:forEach>
				</table>

</div>
<%@include file="/bottom.jsp" %>
</div>
<script>
	
	var arr1=new Array();
	<% 
	   int a[]=(int[])session.getAttribute("a");
	  for(int str : a){
	%>
	arr1.push('<%=str%>');
	<%
	  }
	 %>
	

		var barChartData = {
			labels : ["不及格人数","60-70","70-80","80-90","90以上"],
			datasets : [
				{
					fillColor : "rgba(151,187,205,0.5)",
					strokeColor : "rgba(151,187,205,1)",
					data : []
				}
			]
			
		}
	    for(var i = 0; i < arr1.length; i++)
		{
			barChartData.datasets[0].data.push(arr1[i]);
		}

	var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Bar(barChartData);
	
	</script>
</body>
</html>