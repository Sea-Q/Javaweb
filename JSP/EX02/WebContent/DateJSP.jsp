<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String one = getDate(s1);
		String two = getDate(s2);
	%>
	<%!
		String s1 ="010020199601026929";
		String s2 ="010020199711126928";
		public String getDate(String str){
			return str.substring(6,10)+"-"+str.substring(10,12)+"-"+str.substring(12,14);
		}
	%>
<table border="1">
	<tr>
		<th>身份证</th>
		<th>生日</th>
	</tr>
	<tr>
		<td><%=s1 %></td>
		<td><%=one %></td>
	</tr>
	<tr>
		<td><%=s2 %></td>
		<td><%=two %></td>
	</tr>
</table>
</body>
</html>