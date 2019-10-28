<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="OK.jsp" >
	<table border="3" align="center" width=500 >
		<caption>欢迎注册Web前端编程学习网站</caption>
		<tr>
			<td>用户名：</td>
			<td><input type="text" name="txt_user"></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td><input type="text" name="txt_password"></td>
		</tr>
		<tr>
			<td>性别：</td>
			<td>
				<input type="radio" name="sex" value="男" checked>男
				<input type="radio" name="sex" value="女">女
			</td>
		</tr>
		<tr>
			<td>爱好：</td>
			<td>
				<input name="checkboxname" type="checkbox" id="checkbox1" value="唱歌" />唱歌
				<input name="checkboxname" type="checkbox" id="checkbox2" value="跳舞" />跳舞
				<input name="checkboxname" type="checkbox" id="checkbox3" value="运动" />运动
				<input name="checkboxname" type="checkbox" id="checkbox4" value="阅读" />阅读
				
			</td>
		</tr>
		<tr>
			<td>学历</td>
			<td>
				<select name="level">
						<option value="大学">大学</option>
						<option value="高中">高中</option>
						<option value="初中">初中</option>
						<option value="小学">小学</option>
					</select>
			</td>
		</tr>
		
		<tr>
			<td>备注说明：</td>
			<td><input type="text" name="txt_beizhu"></td>
		</tr>
		<tr >
			<td colspan="2" align="right">
				<input type="submit" value="注册">
				<input type="reset" value="清空">
			</td>
		</tr>
	</table>
    </form>
	
</body>
</html>