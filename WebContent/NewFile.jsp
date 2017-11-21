<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script>
$.validator.setDefaults({
    submitHandler: function() {
      alert("提交事件!");
    }
});
$().ready(function() {
	// 在键盘按下并释放及提交后验证提交表单
	  $("#form1").validate({
		  rules: {
			  user:{
				  required:true,
				  minlength: 6				  
			  },
			  pwd: { 
				  required: true, 
				  minlength: 6, 
				  maxlength: 18 
				  }, 
			  repwd: { 
				  equalTo:"#password" 
				  }, 
			email: { 
					  required: true, 
					  email: true 
				   },
			name:{
				  required: true,				
			     },
			number:{
				  required: true,
				  minlength: 6
				  },
			identity:{
				  required: true		  
				 }
			  },
	      messages:{
	    	  user:{
	    		  required: "请输入用户名",
	    		  minlength: "不能少于6个字符", 
	    	  },
	    		  // email 
	    	  email: { 
	    		  required: "此项不能为空", 
	    		  email: "email格式不正确" 
	    		  }, 
	    		  // 密码 
	    	  pwd: { 
	    		  required: "此项不能为空", 
	    		  minlength: "不能少于6个字符", 
	    		  maxlength: "不能多于18个字符" 
	    		  }, 
	    		  // 确认密码 
	    	 repwd: "两次输入密码不一致",
	 		 name:{
					  required: "请输入姓名",				
				     },
			 number:{
					  required: "请输入学号",
					  minlength: "请输入正确的学号"
					  },
			identity:{
					  required: "请选择"		  
					 }	    	 
	      }
		  });
	  });
</script>
<style>
.error{
	color:red;
}
</style>
</head>
<body>
	<form name="form1" id="form1" action="" method="post">
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
											type="text"></td>
									</tr>
									<tr>
										<td height="40" align="right">密码：</td>
										<td height="40" align="left"><input name="pwd"
											type="password" ></td>
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
											type="text" id="answer" size="35"></td>
									</tr>
									<tr>
										<td height="40" align="right">E-mail地址：</td>
										<td height="40" align="left"><input name="email"
											type="text" size="35" ></td>
									</tr>
									<tr>
										<td height="40" align="right">身份：</td>
										<td height="40" align="left">
										<input name="identity" type="radio" value="1" />学生
										<input name="identity" type="radio" value="2" />教师
										</td>
									</tr>
									<tr>
										<td height="40">&nbsp;</td>
										<td height="40" align="center"><input name="btn_sumbit"
											type="submit" class="btn_grey" value="提交"> &nbsp; <input
											name="btn_reset" type="button" class="btn_grey" value="重置"
											onClick="form_reset(this.form)"> &nbsp; <input
											name="btn_close" type="button" class="btn_grey" value="关闭"
											onClick="Myclose('register')"></td>
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
</body>
</html>