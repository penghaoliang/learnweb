<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<script language="javascript" src="JS/AjaxRequest.js"></script>
<!--<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script> -->
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
	   .t{
			width: 1000PX;
			background: black;
			height: 60px;
			position: absolute;
		}
		.fixed{
			position: fixed;
			top: 0;
		}

		.main{
			width: 1000px;
			margin: 0 auto;
		}
		.nav_bar{
			width: 800px;
			float: left;
			height: 60px;
		}
		.nav_bar ul li{
			list-style-type: none;
			float: left;
			line-height: 60px;
			text-align: center;
			width:100px;
		}
		.nav_bar ul li a{
			color: #ffffff;
			text-decoration: none;
			display: block;
		}
		.nav_bar>ul>li:hover{
			background: #00cece;
		}
		.nav_bar ul li.l1:hover .hid{
			display: block;
		}
		.hid{
			width: 100%;
			height: 60px;
			z-index:3;
			background: #00cece;
			position: absolute;
			left: 0;
			display: none;
		}
		.hid ul{
			width: 1000px;
			margin: 0 auto;
		}
		.hid2{
			width: 25%;
			height: 100px;
			z-index:3;
			background: #00cece;
			position: absolute;
			display: none;
			right:0;
		}
		.hid2 ul li a{
			width: 100%;
			color: #ffffff;
			margin: 0 auto;
		}
		.login ul li.l2:hover .hid2{
			display: block;
		}
		.hid3{
			width: 25%;
			height: 170px;
			z-index:3;
			background: #00cece;
			position: absolute;
			display: none;
			right:0;
		}
		.hid3 ul li a{
			width: 100%;
			color: #ffffff;
			margin: 0 auto;
		}
		.login ul li.l3:hover .hid3{
			display: block;
		}
		.login{
			float: right;
			width: 200px;
			height: 60px;
			margin-top:15px; 
		}
		.login a.a1{
			width: 55px;
			height: 30px;
			text-align: center;
			line-height: 30px;
			display: block;
			float: left;
			color: #fff;
			border: 1px solid #666;
			text-decoration:none;
		}
		.login a.a2{
			width: 55px;
			height: 30px;
			text-align: center;
			line-height: 30px;
			display: block;
			float: left;
			color: #fff;
			border: 1px solid #666;
			text-decoration:none;
		}
		.login a.a1:hover{
			background: #5580fb;
		}
		.login a.a2{
			background: #5580fb;
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
</head>
<body>
<%@include file="register.jsp" %>
<div id="notClickDiv"></div>
	<div class="t">
		<div class="main">
			<div class="nav_bar">
				<ul>
					<li><a href="index.jsp">首页</a></li>
					<li class="l1">
						<a href="">课程信息</a>
						<div class="hid">
							<ul>
								<li><a href="${basePath}/introduction.jsp">课程介绍</a></li>
								<li><a href="${basePath}/course_content/teach_plan.jsp">课程内容</a></li>								
								<li><a href="">课程实践</a></li>
								<li><a href="">教学团队</a></li>
							</ul>
						</div>
					</li>
					<li><a href="">下载区</a></li>
					<li><a href="">成绩查询</a></li>
					<li><a href="">留言板</a></li>
					<li><a href="">网上测试</a></li>
				</ul>
			</div>
			<div class="login">
			   <c:choose>
			   <c:when test="${userName==null}">
			   	<a href="#" class="a1" id="a1" onClick="Myopen('login')">登陆</a>
				<a href="#" class="a2" id="a2" onClick="Regopen('register')">注册</a>
			   </c:when>
			   <c:when test="${userName!=null and sf==1}">
			   <ul>
			   <li class="l2">
			    欢迎尊贵的学生
			      <a href="">${userName}</a>
			      	<div class="hid2">
							<ul>
								<li><a href="">个人信息</a></li>
								<li><a href="">选课</a></li>								
								<li><a href="">选课结果查看</a></li>
								<li><a href="">退出登录</a></li>
							</ul>
					</div>    
			      </li>
			     </ul>
			   </c:when>
			   <c:when test="${userName!=null and sf==2}">
			   <ul>
			   <li class="l3">
			    欢迎尊贵的教师
			      <a href="">${userName}</a>
			      	<div class="hid3">
							<ul>
								<li><a href="">个人信息</a></li>
								<li><a href="">选课管理</a></li>								
								<li><a href="">成绩导入</a></li>
								<li><a href="">成绩计算</a></li>
								<li><a href="">成绩分析</a></li>
								<li><a href="">成绩预警</a></li>
								<li><a href="">退出登录</a></li>
							</ul>
					</div>    
			      </li>
			     </ul>
			   </c:when>		   
			   </c:choose>
			</div>
		</div>
	</div>
	 <div id="login">
<form name="form2" method="post" action="" id="form2">
	<div id="loginTitle"><b>用户登录</b></div>
	<div id="loginContent" style="background-color:#FFFEF9; margin:0px;">
	<ul id="loginUl"><li>
	用户名：<input type="text" name="username" id="username" style="width:120px" >
	</li><li>
	密&nbsp;码：<input type="password" name="pwd"  id="pwd"   style="width:120px" >&nbsp;
	</li><li style="padding-left:40px;">
	<input name="Submit" type="submit" value="登录">
      &nbsp;
        <input name="Submit2" type="button" value="关闭" onClick="myClose(login)">
	</li></ul>
	</div>
 	<div style="background-color:#FEFEFC;height:10px;"></div>
</form>
 </div>
		<script type="text/javascript">
		var head=$(".head").height();
		$(window).scroll(function(){
			var topScr=$(window).scrollTop();
			if (topScr>head) {
				$(".top").addClass("fixed");
			}else{
				$(".top").removeClass("fixed");
			}
		})
	</script>
</body>
</html>