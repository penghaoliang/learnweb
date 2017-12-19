<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.util.*" errorPage="" %>
  <%@ page import="com.model.*,com.tools.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="${basePath}/css/main.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/checkbox.js"></script>	
<title></title>
</head>
<body>
<div id="box">
<%@include file="/top.jsp" %>
<%@include file="/navigation3.jsp" %>
<div id="main">
 <font color="red">
 </font>

<form name="viewquestion.do?action=viewtest" method="post" >
<table width="98%" border="0" align="center" cellpadding="2" cellspacing="0">
<tr>
    <td  colspan="6" align="left"  >试卷管理</td>
  </tr>
  <tr>
    <td  colspan="6" align="left"  >
       试卷名：
          <input  type="text" name="tName" value=""/>

         <input type="submit" value="查询 " /></td>
  </tr>
  <tr>
    <th width="30">&nbsp;</th>
    <th width="250" align="center">试卷名</th>
    <th  align="center">开始时间</th>
    <th  align="center">结束时间</th>
     <th  align="center">预览</th>
  </tr>

  <tr>
    <td align="center"><input type="checkbox" name="id" value="${a}" /></td>
    <td align="center">${d}</td>
    <td align="center">${b}</td>
    <td align="center">${c}</td>
    <td align="center"><a href="${basePath}/teacher/showtest.jsp" target="_blank">预览</a></td>
  </tr>
</table>
<table width="98%" border="0" align="center" cellpadding="2" cellspacing="0">
  <tr>
    <td  colspan="2" align="left"  >
    <input type="button" name="Submit2" value="添 加"onclick="javascrtpt:window.location.href='${basePath}/teacher/addtest.jsp'"/>
	&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="submit" value="删 除" onclick="return del();"/>
      &nbsp;&nbsp;&nbsp;&nbsp; 
      </td>
  </tr>
</table>
</div>
<%@include file="/bottom.jsp" %>
</div>
</body>
</html>