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
<title>Insert title here</title>
<script language="javascript">
function message_close(divID){
	document.getElementById(divID).style.display='none';	
	 document.getElementById("notClickDiv").style.display='none';
}
function message_open(divID){ 								//根据传递的参数确定显示的层
	var notClickDiv=document.getElementById("notClickDiv");	//获取id为notClickDiv的层
	 notClickDiv.style.display='block';						//设置层显示
	  document.getElementById("notClickDiv").style.width=document.documentElement.clientWidth+"px";
	  document.getElementById("notClickDiv").style.height=document.documentElement.clientHeight+"px";
      document.getElementById(divID).style.display='block';							//设置由divID所指定的层显示	 
      document.getElementById(divID).style.left=(document.documentElement.clientWidth-240)/2+"px";		//设置由divID所指定的层的左边距
      document.getElementById(divID).style.top=(document.documentElement.clientHeight-139)/2+"px";		//设置由divID所指定的层的顶边框
}
</script>
<style>
.ToolTip {
	BORDER-RIGHT: #39B4E2 1px solid;
	BORDER-TOP: #39B4E2 1px solid;
	BORDER-LEFT: #39B4E2 1px solid;
	COLOR: #333333;
	BORDER-BOTTOM: #39B4E2 1px solid;
	BACKGROUND-COLOR: #F9F9F9
}

td {
	font-size: 9pt;
	line-height: 150%;
}

#message {
	height: 100px;
	padding: 5px 0px 0px 5px;
	width: 70%;
}

#message1 {
	height: 100px;
	padding: 5px 0px 0px 5px;
	width: 100%;
}

.button {
	padding: 10px 30px 10px 30px;
	background: #66C1E4;
	border: none;
	color: #FFF;
	box-shadow: 1px 1px 1px #4C6E91;
	-webkit-box-shadow: 1px 1px 1px #4C6E91;
	-moz-box-shadow: 1px 1px 1px #4C6E91;
	text-shadow: 1px 1px 1px #5079A3;
}

.reply {
	position: absolute; /*设置布局方式*/
	width: 400px; /*设置宽度*/
	padding: 4px; /*设置内边距*/
	height: 300px; /*设置高度*/
	display: none; /*设置显示方式*/
	z-index: 10; /*设置层叠顺序*/
	background-color: #546B51; /*设置背景颜色*/
}
</style>
</head>
<body>
	<div id="box">
		<%@include file="/top.jsp"%>
		<%@include file="/navigation3.jsp"%>
		<div id="main">
			<div class="jumbotron">
				<h1>留言板</h1>
			</div>
			<table width="100%" height="217" border="0" cellpadding="0"
				cellspacing="0" style="padding: 5px;">
				<tr align="center">
					<td colspan="3">
						<form action="MessageServlet.do?action=addMessage" method="post">
							<span>留言 :</span>
							<textarea id="message" name="message"
								placeholder="Your Message to Us"></textarea>
							<span>&nbsp;</span> <input type="submit" class="button"
								value="留言" />
						</form>
					</td>
				</tr>
				<tr>
					<td><br> 留言(${page.totalcount})
						<hr></td>
				</tr>
				<c:forEach var="i" items="${list}" varStatus="f">
					<tr style="background-color: orange;">
						<td width="18%">留言人: ${i.author}</td>
						<td width="30%">留言日期: ${i.date}</td>
						<td width="10%"><a href="#" onClick="message_open('${i.id}')">回复</a>
							<div id="${i.id}" class="reply">
								<form name="form2" method="post"
									action="MessageServlet.do?action=replyMessage&message_id=${i.id}"
									id="form2">
									<span>回复 :</span>
									<textarea id="message1" name="message1"
										placeholder="Your Message to Us"></textarea>

									<span>&nbsp;</span><br> <input type="submit"
										class="button" value="回复" /> <input type="button"
										class="button" onClick="message_close('${i.id}')" value="关闭" />
								</form>
							</div></td>
					</tr>
					<tr>
						<td height="125" colspan="3" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;${i.content}</td>
					</tr>
					<c:forEach var="j" items="${i.getReplys().iterator()}"
						varStatus="f">
						<tr>
							<td width="70%" colspan="2" valign="top" class="ToolTip">${j.author}的回复：<br>
								${j.content}
							</td>
						</tr>
					</c:forEach>
				</c:forEach>
			</table>
			第${page.pageno}/${page.totalpage}页 &nbsp;&nbsp;
			<ul class="pagination">
				<li><a href="MessageServlet.do?action=pageMessage&pageNo=1">&laquo;</a></li>
				<li><a href="MessageServlet.do?action=pageMessage&pageNo=1">1</a></li>
				<c:forEach var="i" begin="2" end="${page.totalpage}">
					<li><a href="MessageServlet.do?action=pageMessage&pageNo=${i}">${i}</a></li>
				</c:forEach>
				<li><a
					href="MessageServlet.do?action=pageMessage&pageNo=${page.totalpage}">&raquo;</a></li>
			</ul>
		</div>
		<%@include file="/bottom.jsp"%>
	</div>
</body>
</html>