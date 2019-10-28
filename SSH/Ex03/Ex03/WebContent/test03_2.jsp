<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>协议:<%=request.getProtocol() %></p>
<p>URI:<%=request.getServletPath() %></p>
<p>请求方法:<%=request.getMethod() %></p>
<p>远程地址:<%=request.getRemoteAddr() %></p>
</body>
</html>