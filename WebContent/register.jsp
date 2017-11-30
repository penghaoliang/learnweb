<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript" src="JS/AjaxRequest.js"></script>
<!--<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script> -->

<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script language="javascript">
	//显示用户注册页面
	function Regopen(divID) {
		var notClickDiv = document.getElementById("notClickDiv"); //获取id为notClickDiv的层
		notClickDiv.style.display = 'block'; //设置层显示
		document.getElementById("notClickDiv").style.width = document.documentElement.clientWidth
				+ "px";
		document.getElementById("notClickDiv").style.height = document.documentElement.clientHeight
				+ "px";
		divID = document.getElementById(divID); //根据传递的参数获取操作的对象
		divID.style.display = 'block'; //显示用户注册页面
		divID.style.left = (document.documentElement.clientWidth - 600)
		/2+"px";		/ / 设置页面的左边距
		divID.style.top = (document.documentElement.clientHeight - 380)
		/2+"px";		/ / 设置页面的顶边距
	}
	//隐藏用户注册页面
	function Myclose(divID) {
		document.getElementById(divID).style.display = 'none'; //隐藏用户注册页面
		//设置id为notClickDiv的层隐藏
		document.getElementById("notClickDiv").style.display = 'none';
	}
</script>
<script>
	$().ready(function() {
		$.validator.setDefaults({
			submitHandler : function(form) {
				alert("注册成功");
				form.submit();
				document.getElementById(divID).style.display = 'none'; //隐藏用户注册页面
				//设置id为notClickDiv的层隐藏
				document.getElementById("notClickDiv").style.display = 'none';
			}
		}),
		// 在键盘按下并释放及提交后验证提交表单
		$("#form1").validate({
			rules : {
				user : {
					required : true,
					minlength : 6,
					remote : { //验证用户名是否存在
						type : "POST",
						url : "LoginServlet.do", //servlet
						data : {
							action : 'verifyUser',
							user : function() {
								return $("#user").val();
							}
						}
					}
				},
				pwd1 : {
					required : true,
					minlength : 6,
					maxlength : 18
				},
				repwd : {
					equalTo : "#pwd1"
				},
				email : {
					required : true,
					email : true
				},
				name : {
					required : true,
				},
				number : {
					required : true,
					minlength : 6,
					remote : {
						type : "POST",
						url : "LoginServlet.do",
						data : {
							action : 'verifyNumber',
							number : function() {
								return $("#number").val();
							}
						}
					}
				},
				identity : {
					required : true
				}
			},
			messages : {
				user : {
					required : "请输入用户名",
					minlength : "不能少于6个字符",
					remote : "用户名已存在"
				},
				// email 
				email : {
					required : "此项不能为空",
					email : "email格式不正确"
				},
				// 密码 
				pwd1 : {
					required : "此项不能为空",
					minlength : "不能少于6个字符",
					maxlength : "不能多于18个字符"
				},
				// 确认密码 
				repwd : "两次输入密码不一致",
				name : {
					required : "请输入姓名",
				},
				number : {
					required : "请输入学号",
					minlength : "请输入正确的学号",
					remote : "已存在"
				},
				identity : {
					required : "请选择"
				}
			}
		});
	});
</script>
<style>
.error {
	color: red;
}
</style>
</head>
<body>
	<div id="register"
		style="width: 663; height: 421; background-color: #546B51; padding: 4px; position: absolute; z-index: 11; display: none;">
		<form name="form1" id="form1"
			action="LoginServlet.do?action=registerUser" method="post">
			<table width="100%" height="100%" border="0" cellpadding="0"
				cellspacing="0" bgcolor="#FEFEFC">
				<tr>
					<td height="408" align="center" valign="top"><table
							width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td height="50" style="color: #1B7F5D; font-size: 14px;"><b>用户注册</b></td>
							</tr>
						</table>
						<table width="94%" height="331" border="0" cellpadding="0"
							cellspacing="1" bgcolor="#CCCCCC">
							<tr>
								<td height="310" valign="top" bgcolor="#FFFFFF"><table
										border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFEF9">
										<tr>
											<td width="93" height="40" align="right">用户名：</td>
											<td height="40" align="left"><input name="user"
												id="user" type="text"></td>
										</tr>
										<tr>
											<td height="40" align="right">密码：</td>
											<td height="40" align="left"><input name="pwd1"
												id="pwd1" type="password"></td>
										</tr>
										<tr>
											<td height="40" align="right">确认密码：</td>
											<td height="40" align="left"><input name="repwd"
												type="password"></td>
										</tr>
										<tr>
											<td height="40" align="right">姓名：</td>
											<td height="40" align="left"><input name="name"
												type="text" id="name" size="35"></td>
										</tr>
										<tr>
											<td height="40" align="right">学号/工号：</td>
											<td height="40" align="left"><input name="number"
												id="number" type="text" id="answer" size="35"></td>
										</tr>
										<tr>
											<td height="40" align="right">E-mail地址：</td>
											<td height="40" align="left"><input name="email"
												type="text" size="35"></td>
										</tr>
										<tr>
											<td height="40" align="right">身份：</td>
											<td height="40" align="left"><input name="identity"
												type="radio" value="1" />学生 <input name="identity"
												type="radio" value="2" />教师</td>
										</tr>
										<tr>
											<td height="40">&nbsp;</td>
											<td height="40" align="center"><input name="btn_sumbit"
												type="submit" class="btn_grey" value="提交"> &nbsp; <input
												name="btn_reset" type="button" class="btn_grey" value="重置">
												&nbsp; <input name="btn_close" type="button"
												class="btn_grey" value="关闭" onClick="Myclose('register')"></td>
										</tr>

									</table></td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td height="10" align="center" valign="top" bgcolor="#FEFEFC">&nbsp;</td>
				</tr>
			</table>
		</form>
	</div>
</body>

</html>