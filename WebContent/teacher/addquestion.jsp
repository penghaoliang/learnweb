<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*,com.model.*,com.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="${basePath}/css/main.css">
    <link rel="stylesheet" href="bootstrap-table.css">
       <script src="${basePath}/JS/jquery-2.1.1.min.js"></script>
        <link rel="stylesheet" href="${basePath}/css/bootstrap.css">	
<title>选课</title>
</head>
<body>
<div id="box">
<%@include file="/top.jsp" %>
<%@include file="/navigation3.jsp" %>
<div id="main">

<form name="" action="viewquestion.do?action=addquestion" method="post">
<h2 align="center">题目编辑</h2>
  <table  class="table table-hover" width="98%" border="0" align="center" cellpadding="2" cellspacing="0">
  <thead>
    <tr class="success">
      <td width="150" align="right">题目名称</td>
      <td align="left">
      <input type="hidden" name="id" value="" />
      <input name="qName" type="text" id="qName" value="" style="width:90%"/>      </td>
    </tr>
     <tr class="success">
      <td  align="right">答案</td>
      <td align="left">
      <input name="qAnwser" type="text" maxlength="1" size="2" id="qAnwser" value="" style="width:90%"/>      </td>
    </tr>
	<tr class="success">
      <td align="right">选项</td>
      <td  align="left"> 
        <table width="600" border="0" cellpadding="2" cellspacing="0">   
   		   <tr>
            <td width="15%" align="left">选项编号:<input name="oNo" type="text" id="oNo" value="" size="4" maxlength="1" /></td>
            <td width="85%" align="left">选项名称：<input name="oName" type="text" id="oName" value=""  style="width:80%"/>
          </tr>        
          <tr>
             <td width="25%" align="left">选项编号:<input name="oNo" type="text" id="oNo"  size="4" maxlength="1" /></td>
            <td width="75%" align="left">选项名称：<input name="oName" type="text" id="oName"   style="width:80%"/>      
          </tr>   
          <tr>
             <td width="25%" align="left">选项编号:<input name="oNo" type="text" id="oNo"  size="4" maxlength="1" /></td>
            <td width="75%" align="left">选项名称：<input name="oName" type="text" id="oName"   style="width:80%"/>      
          </tr>      
          <tr>
             <td width="25%" align="left">选项编号:<input name="oNo" type="text" id="oNo"  size="4" maxlength="1" /></td>
            <td width="75%" align="left">选项名称：<input name="oName" type="text" id="oName"   style="width:80%"/>      
          </tr>   
          <thead>      
        </table></td>
    </tr>	
        </table></td>
    </tr>
    <tr>
      <td colspan="2"><input  class="btn btn-info" type="submit"  name="Submit" value="保 存" />
	  &nbsp; &nbsp; &nbsp; &nbsp;
      <input type="reset" class="btn btn-info" name="Submit2" value="重 置" /></td>
    </tr>
  </table>
</form>
</div>
<%@include file="/bottom.jsp" %>
</div>
</body>
</html>