<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${basePath}">
<link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="bootstrap-table.css">
    <script src="JS/jquery-2.1.1.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/checkbox.js"></script>	
<title>题库管理</title>
</head>
<body>
<form action="" method="post" >
<h2 align="center">题库管理</h2>
<table class="table table-striped">
<thead>
  <tr>
    <td  colspan="4" align="left"  > 用户名：
     <input  type="text" name="qName"  value=""/>
      <input type="submit" value="查询 " /></td>
  </tr>
  <tr>
    <th   width="30">&nbsp;</th>
    <th   width="220" align="center">题目名称</th>
    <th   width="40" align="center">答案</th>
	<th   width="500" align="center">选项 </th>
	</tr>
	</thead>

<tbody>
 <tr class="active">
    <td width="30" align="center">&nbsp</td>
     <td   width="220" align="center">1</td>
     <td   width="40" align="center">2</td>
	<td align="left">&nbsp;  
	</td>
  </tr>
  </tbody>

</table>
<table class="buttom" width="98%" border="0" align="center" cellpadding="2" cellspacing="0">
  <tr>
    <td  colspan="2" align="left">
   <input type="button" name="Submit2" value="添 加" onClick="javascrtpt:window.location.href='${basePath}/teacher/addquestion.jsp'" />
	&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="submit" value="删 除" onclick="return del();"/>
      &nbsp;&nbsp;&nbsp;&nbsp; 
      </td>  
  </tr>
</table>
  </form>
</body>
</html>