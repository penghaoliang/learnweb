<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
</head>
<body>
<h2>用户登录</h2>
    <hr>
    <form action="login.do" method="post">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text"name="username"/></td>
            </tr>
            <tr>
                <td>密 码：</td>
                <td><input type="password"name="password"/></td>
            </tr>
            <tr>
                <td colspan="1"><input type="submit" value="登录"/></td>
                <td colspan="1"><input type="reset" value="取消"/></td>
            </tr>
            </table>
 </form>
</body>
</html>