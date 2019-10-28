<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>统计页面访问次数</h1>
	<%
		if(pageContext.getAttribute("pageCount") == null){
			pageContext.setAttribute("pageCount", new Integer(0));
		}
		if(application.getAttribute("appCount") == null){
			application.setAttribute("appCount", new Integer(0));
		}
		ArrayList al = (ArrayList)application.getAttribute("al");
		if(al==null){
			al=new ArrayList();
		}
		if(al.contains(session.getId())){
			al.add(session.getId());
		}
		application.setAttribute("al", al);
		Integer count = (Integer)pageContext.getAttribute("pageCount");
		pageContext.setAttribute("pageCount", new Integer(count.intValue()+1));
		Integer count1 = (Integer)application.getAttribute("appCount");
		application.setAttribute("pageCount", new Integer(count1.intValue()+1));
	%>
	<b>情况1：网站访问次数：</b>
	<%=al.size() %>
	<br>
	<br>
	<b>情况2：网站访问次数：</b>
	<%=application.getAttribute("pageCount") %>
	<br>
	<br>
</body>
</html>