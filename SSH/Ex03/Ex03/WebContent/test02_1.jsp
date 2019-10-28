<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="test02_2.jsp">
		<p>姓名：<input type="text" name="name"></p>
		<p>密码：<input type="text" name="password"></p>
		<p><input type="submit" value="提交"></p>
	</form>
	<%
		session.setAttribute("name","孤独求败");
		session.setAttribute("password","123456");
		response.sendRedirect("test02_2.jsp");
	%>
</body>
</html>