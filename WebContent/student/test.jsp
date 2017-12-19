<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${basePath}">
<link rel="stylesheet" href="${basePath}/css/main.css">
    <link rel="stylesheet" href="bootstrap-table.css">
       <script src="JS/jquery-2.1.1.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/checkbox.js"></script>	
<title></title>
</head>
<body>
<div id="box">
<%@include file="/top.jsp" %>
<%@include file="/navigation3.jsp" %>
<div id="main">
<form action="student/TestServlet.do?action=test&answer=${questionList.qAnswer}" method="post">
<table class="table table-hover" width="800" border="0" align="center" cellpadding="2" cellspacing="0">
<thead>
<tr>
    <th>进行中的考试</th>
  </tr>
<tr class="success">
<th width="30">&nbsp;</th>
<th width="30">当前分数</th>
<th>${grade}</th>
</tr>
  <tr class="success">
    <th width="30">&nbsp;</th>
    <th   width="220" align="center">题目名称</th>
    <th   width="220" align="center"></th>
	 </tr>
 <tr class="success">
    <td width="30" align="center">&nbsp;</td>
    <th width="220" align="center">${questionList.qName}</th>
    <th width="220" align="center"></th>
   </tr>
 		<c:forEach var="j" items="${questionList.getOptions().iterator()}" varStatus="g">
 		          <tr class="success">
 		                    <td><input type="radio" name="x" value="${j.oNo}"/></td>
							<td>${g.count}</td>
							<td>${j.oName}</td>
				</tr>
		</c:forEach>
 <tr>
 <td><input class="btn btn-info" type="submit" value="提交">
 </td>
 </tr>
</thead>
</table>
</form>
</div>
<%@include file="/bottom.jsp" %>
</div>
</body>
</html>