<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%@ page import="java.util.*,com.model.*,com.dao.*,com.tools.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="${basePath}/css/main.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/checkbox.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/calendar.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/calendar-en.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/calendar-setup.js"></script>	
<title></title>
</head>
<body>
<div id="box">
<%@include file="/top.jsp" %>
<%@include file="/navigation3.jsp" %>
<div id="main">
<form name="" action="viewquestion.do?action=addtest" onsubmit="return checkForm();" method="post" >
<table width="98%" border="0" align="center" cellpadding="2" cellspacing="0">
<tr>
    <td  colspan="4" align="left"  >题库管理</td>
  </tr>
  <tr>
    <td  colspan="4" align="left"  >试卷名称：
      <input name="tName" type="text" id="tName" size="25" value="" />
      <input name="id" type="hidden" id="id" value="" /></td>
  </tr>
  <tr>
    <td  colspan="4" align="left"  >
    开始时间:<input type="text" name="startTime" id="startTime" style="width:110" value="">
                  <img src="../images/calendar.gif"  id="startTrigger" title="Date selector" border="0"/>
   <script type="text/javascript">
    Calendar.setup({
      inputField     :    "startTime",     // id of the input field
      ifFormat       :    "%Y-%m-%d %H:%M",      // format of the input field
      showsTime      :    true,
      button         :    "startTrigger",  // trigger for the calendar (button ID)
      timeFormat     :    "24",
      align          :    "Tl",           // alignment (defaults to "Bl")
      singleClick    :    true
    });
    </script>结束时间:
	<input type="text" name="endTime" id="endTime" style="width:110" value=""  >
                  <img   src="../images/calendar.gif" id="endTrigger" title="Date selector" border="0"  />
     <script type="text/javascript">
    Calendar.setup({
      inputField     :    "endTime",     // id of the input field
      ifFormat       :    "%Y-%m-%d %H:%M",      // format of the input field
      showsTime      :    true,
      button         :    "endTrigger",  // trigger for the calendar (button ID)
      timeFormat     :    "24",
      align          :    "Tl",           // alignment (defaults to "Bl")
      singleClick    :    true
    });
    </script></td>
  </tr>
  <tr>
     <th width="30">&nbsp;</th>
   
    <th   width="220" align="center">题目名称</th>
    <th   width="40" align="center">答案</th>
	 <th   align="center">选项 </th>
  </tr>

  <tr>
    <td width="30" align="center"><input type="checkbox" onclick="addQCount(this)" name="qId" value=">" checked/></td>
     <td   width="220" align="center"></td>${q.getqName()}
    <td  width="40" align="center"></td>${q.getqAnswer()}
	<td align="left">&nbsp;
	
	</td>
  </tr>
 
</table>
<table class="buttom" width="98%" border="0" align="center" cellpadding="2" cellspacing="0">
  <tr>
    <td  colspan="2" align="left"  >
   <input type="submit" name="Submit2" value="保  存"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">注：只能选择10道题，不能多也不能少</font>  </td>
    
  </tr>
</table>

</form>
<script language="JavaScript" type="text/JavaScript">
var allCount = 10;//总共需要选择题目数
//检查题目数
function checkForm(){
	if(document.forms[0].tName.value==""){
		alert("请输入试卷名称");
		return false;
	}
	var qCount = parseInt(document.getElementById("qCount").innerHTML);
	if(qCount!=allCount){
		alert("请选择10道题");
		return false;
	}
	
	return true;
}

function addQCount(obj){
	var qCount = parseInt(document.getElementById("qCount").innerHTML);
	if(obj.checked){
		qCount++;
	}else{
		qCount--;
	}
		document.getElementById("qCount").innerHTML = qCount;
}
 
</script>
</div>
<%@include file="/bottom.jsp" %>
</div>
</body>
</html>