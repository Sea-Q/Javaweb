<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.util.regex.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<%!String s = "数字不能为空！";
	Pattern pattern = Pattern.compile("[0-9]*");
	double re,n1,n2;
	char f;%>
	<%
		request.setCharacterEncoding("utf-8");
		if ( request.getParameter("num1") == "" || request.getParameter("num2") == ""
			|| request.getParameter("num1") == null || request.getParameter("num2") == null	) {
			s = "数字不能为空！";
		} //注：第一次执行时 	num1 	和	num2 为null 之后执行 num1 	和	num2 为  ""
		else if (pattern.matcher(request.getParameter("num1")).matches() == false
				|| pattern.matcher(request.getParameter("num2")).matches() == false) {
			s = "请输入数字！";
		}else{
			n1 = Double.parseDouble(request.getParameter("num1"));
			n2 = Double.parseDouble(request.getParameter("num2"));
			f = request.getParameter("operation").charAt(0);
			switch (f) {
			case '+':

				re = n1 + n2;
				s = String.valueOf(re);
				break;
			case '-':

				re = n1 - n2;
				s = String.valueOf(re);
				break;
			case '*':

				re = n1 * n2;
				s = String.valueOf(re);
				break;
			case '/':
				if(n2==0){
					s = "除数不能为零！";
				}else{
				re = n1 / n2;
				s = String.valueOf(re);
				}
				break;
			}
		}
	%>

	<form action="test01.jsp">
		<h1>我的计算器</h1>
		<hr>
		<p>
			请输入第一个数：<input type="text" name="num1">
		</p>
		<p>
			请选择运算方式：<select name="operation">
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select>
		</p>
		<p>
			请输入第二个数：<input type="text" name="num2">
		</p>
		<p>
			<input type="submit" value="计算">&nbsp;&nbsp; <input
				type="reset" value="重置">
		</p>
		<p>
			结果：<input type="text" name="result" value=<%=s%>>
		</p>
	</form>

</body>
</html>