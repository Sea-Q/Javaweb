<%@ page language="java" contentType="text/html; charset=UTF-8" import ="StudentPackage.Student" import ="java.util.ArrayList"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		Student s1 = new Student("001","李白","男","01",723.0); 
		Student s2 = new Student("002","孟浩然","男","02",689.0);
		Student s3 = new Student("003","杨玉环","女","03",600.0);
		ArrayList a = new ArrayList();
		a.add(s1);
		a.add(s2);
		a.add(s3);
	%>
	<table border = "1">
	<tr>
	<th>学号</th>
	<th>姓名</th>
	<th>性别</th>
	<th>班级</th>
	<th>成绩</th>
	</tr>
	<tr>
	<%Student s = (Student)a.get(0); %>
	<td><%=s.getSno() %></td>
	<td><%=s.getSname() %></td>
	<td><%=s.getSex() %></td>
	<td><%=s.getSclass() %></td>
	<td><%=s.getGrade() %></td>
	</tr>
	<tr>
	<% s = (Student)a.get(1); %>
	<td><%=s.getSno() %></td>
	<td><%=s.getSname() %></td>
	<td><%=s.getSex() %></td>
	<td><%=s.getSclass() %></td>
	<td><%=s.getGrade() %></td>
	</tr><tr>
	<% s = (Student)a.get(2); %>
	<td><%=s.getSno() %></td>
	<td><%=s.getSname() %></td>
	<td><%=s.getSex() %></td>
	<td><%=s.getSclass() %></td>
	<td><%=s.getGrade() %></td>
	</tr>
	</table>
</body>
</html>