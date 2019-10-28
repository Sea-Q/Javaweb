<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><b>注册成功啦，恭喜！！！</b></h1><br/>
<%! String s; %>

用户名:<%=new String(request.getParameter("txt_user").getBytes("iso-8859-1"), "utf-8")%><br/>
密码：<%=new String(request.getParameter("txt_password").getBytes("iso-8859-1"), "utf-8")%><br/>
<%if(new String(request.getParameter("sex").getBytes("iso-8859-1"), "utf-8").equals("男")) 
		 s = "男";
	else
		s="女";
%>
性别：<%=s%><br/>

爱好：
<%! String shuiguoname;%>
<% String [] shuigou=request.getParameterValues("checkboxname");
for (int i = 0; i < shuigou.length; i++) {%>
<%=shuiguoname=new String(shuigou[i].getBytes("iso-8859-1"), "utf-8")%>
<%}%>
	<br/>
学历：<%=new String(request.getParameter("level").getBytes("iso-8859-1"), "utf-8") %><br/>
备注说明：<%=new String(request.getParameter("txt_beizhu").getBytes("iso-8859-1"), "utf-8")%><br/>
</body>
</html>