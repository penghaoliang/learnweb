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
<title>题库管理</title>
</head>
<body>
<div id="box">
<%@include file="/top.jsp" %>
<%@include file="/navigation3.jsp" %>
<div id="main">
<form action="teacher/viewquestion.do?action=viewquestion" method="post" >
<h2 align="center">题库管理</h2>
<table class="table table-hover">
<thead>
  <tr>
     <td colspan="4" align="left" font-weight:bold>题目
     <input  type="text" name="qName"  value=""/>
      <input type="submit" class="btn btn-info" value="查询 " /></td>
  </tr>
  <tr class="success">
    <th   width="30">&nbsp;</th>
    <th   width="220" >题目名称</th>
    <th   width="40" align="center">答案</th>
	<th   width="500" align="center">选项 </th>
	</tr>
	</thead>
<c:forEach var="i" items="${questionList}" varStatus="f">
<tbody>
 <tr class="success">
     <td width="30" align="center">&nbsp;</td>
     <td   width="220" >${i.qName}</td>
     <td   width="40" align="center">${i.qAnswer}</td>
	<td align="left">&nbsp;  
	</td>
  </tr>
  </tbody>
</c:forEach>
</table>
<table class="buttom" width="98%" border="0" align="center" cellpadding="2" cellspacing="0">
  <tr>
    <td  colspan="2" align="left">
   <input type="button" class="btn btn-info" name="Submit2" value="添 加" onClick="javascrtpt:window.location.href='${basePath}/teacher/addquestion.jsp'" />
	&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="submit" class="btn btn-info" value="删 除" onclick="return del();"/>
      &nbsp;&nbsp;&nbsp;&nbsp; 
      </td>  
  </tr>
</table>
  </form>
</div>
<%@include file="/bottom.jsp" %>
</div>
</body>
</html>