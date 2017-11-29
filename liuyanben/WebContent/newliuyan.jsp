<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新建留言</title>
<body BACKGROUND="b01.jpg">
<%
if(application.getAttribute("username")==null) {
	RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
	dispatcher.forward(request, response);
}
%>
<table BORDER="1" CELLSPACING="0" CELLPADDING="4" WIDTH="100%" BGCOLOR="#D0D0EC">
<tr>
<td ALIGN="CENTER"><font SIZE="+2" COLOR="#000080"><b>${username}的留言表单</b></font></td>
</tr>
</table>
<form action="Cancel.do"method="post">
<p><input type="submit" value="注销" /></p>
</form>
<form Action="newliuyan.do" Method="POST">
<table BORDER="1" WIDTH="100%">
<tr>
<td><font COLOR="#000080">姓名：</font></td>
<td><input TYPE="TEXT" NAME="Name" SIZE="20"></td>
</tr>
<tr>
<td><font COLOR="#000080">Email:</font></td>
<td><input TYPE="TEXT" NAME="Email" SIZE="40"></td>
</tr>
<tr>
<td><font COLOR="#000080">主题：</font></td>
<td><input TYPE="TEXT" NAME="Subject" SIZE="60"></td>
</tr>
<tr>
<td VALIGN="TOP"><font COLOR="#000080">留言：</font> </td>
<td><textarea NAME="Memo" ROWS="6" COLS="60"></textarea></td>
</tr>
</table>
<div align="center"><center><table WIDTH="100%">
<tr ALIGN="CENTER">
<td><input TYPE="submit" NAME="send" VALUE="提交留言"></td>
<td><a HREF="show.jsp">浏览留言</a></td>
<td><a HREF="title.jsp">浏览标题</a></td>
<td><input TYPE="RESET" VALUE="清除重写"></td>
</tr>
</table>
</center></div>
</form>
</body>
</html> 