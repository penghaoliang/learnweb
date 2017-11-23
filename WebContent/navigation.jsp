<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script language="javascript" src="JS/AjaxRequest.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script language="javascript">
function myClose(divID){
	divID.style.display='none';			//设置id为login的层隐藏
     //设置id为notClickDiv的层隐藏
	 document.getElementById("notClickDiv").style.display='none';	
}
function Myopen(divID){ 								//根据传递的参数确定显示的层
     var notClickDiv=document.getElementById("notClickDiv");	//获取id为notClickDiv的层
	 notClickDiv.style.display='block';						//设置层显示
	  document.getElementById("notClickDiv").style.width=document.documentElement.clientWidth+"px";
	  document.getElementById("notClickDiv").style.height=document.documentElement.clientHeight+"px";
      document.getElementById(divID).style.display='block';							//设置由divID所指定的层显示	 
      document.getElementById(divID).style.left=(document.documentElement.clientWidth-240)/2+"px";		//设置由divID所指定的层的左边距
      document.getElementById(divID).style.top=(document.documentElement.clientHeight-139)/2+"px";		//设置由divID所指定的层的顶边框
}
</script>
<script>
$().ready(function() {
	$.validator.setDefaults({
	    submitHandler: function(form) {
	    	alert("登录成功");
	    	divID.style.display='none';			//设置id为login的层隐藏
	        //设置id为notClickDiv的层隐藏
	   	 document.getElementById("notClickDiv").style.display='none';	
	    }
	}),
	// 在键盘按下并释放及提交后验证提交表单
	  $("#form2").validate({
		  rules: {
			  username:{
				  required:true,
			  },
			  pwd: { 
				  required: true, 
			        remote:{                                     
			               type:"POST",
			               url:"LoginServlet.do",             //servlet
			               data:{
			            	  action:'login',
			            	   username:function(){return $("#username").val();},
			            	   pwd:function(){return $("#pwd").val();}
			               } 
			           } 
				  }
			  },
	      messages:{
	    	  username:{
	    		  required: "请输入用户名"
	    	  },
	    		  // 密码 
	    	  pwd: { 
	    		  required: "此项不能为空", 
	    		  remote:"用户名不存在或者用户名密码错误"
	    		  }	 
	      }
		  });
	  });


</script>
<style type="text/css">
#navigation {
	background-image:url(images/navigation_bg.jpg);
	width:1000px;
	height:26px;
	padding:5px 5px 0px 5px;
	margin: 0px;
}
#loginUl{				/*设置登录所用的<ul>标记的样式*/
	list-style:none;
	margin: 0px;
}
#loginUl li{			/*设置登录所用的<li>标记的样式*/
	padding: 5px;
}
#loginTitle{			/*设置登录窗口的标题样式*/
	padding:15px;
	background-color:#FCFBF0;
	color:#1B7F5D;
	font-size: 14px;
	font-weight:bold;
	margin:0px;
}
#login{
	position:absolute;	/*设置布局方式*/
	width:280px;		/*设置宽度*/
	padding:4px;		/*设置内边距*/
	height:156px;		/*设置高度*/	
	display:none; 		/*设置显示方式*/
	z-index:10;					/*设置层叠顺序*/
	background-color:#546B51;	/*设置背景颜色*/
}
#notClickDiv{
	filter:alpha(Opacity=35);opacity:0.35;		/*设置不透明度为35%*/
	background:#000000;						/*设置背景为黑色*/
	position:absolute;							/*设置定位方式为绝对位置*/
	display:none;								/*设置该<div>标记显示*/
	z-index:9;									/*设置层叠顺序*/
	top:0px;									/*设置顶边距*/
	left:0px;									/*设置左边距*/
	margin: 0px;
	padding: 0px;
}
</style>
<body>
<div id="notClickDiv"></div>
<div id="navigation">
  <table width="1000" border="0">
    <tr>
      <td align="center"><a href="#">首页</a></td>
      <td  align="center"><a href="#">课程信息</a></td>
      <td  align="center"><a href="#">下载区</a></td>
      <td align="center"><a href="#">成绩查询</a></td>
      <td align="center"><a href="#">留言板</a></td>
      <td align="center"><a href="#">网上测试</a></td>
      <td align="center"> <a href="#" onClick="Myopen('login')"> 登录</a></td>
          <td align="center"><a href="#" onClick="Regopen('register')">注册</a></td>
    </tr>
  </table>
</div>
 <div id="login">
<form name="form2" method="post" action="" id="form2">
	<div id="loginTitle"><b>用户登录</b></div>
	<div id="loginContent" style="background-color:#FFFEF9; margin:0px;">
	<ul id="loginUl"><li>
	用户名：<input type="text" name="username" id="username" style="width:120px" >
	</li><li>
	密&nbsp;码：<input type="password" name="pwd" id="pwd"   style="width:120px" >&nbsp;
	</li><li style="padding-left:40px;">
	<input name="Submit" type="submit" value="登录">
      &nbsp;
        <input name="Submit2" type="button" value="关闭" onClick="myClose(login)">
	</li></ul>
	</div>
 	<div style="background-color:#FEFEFC;height:10px;"></div>
</form>
 </div>
 </body>