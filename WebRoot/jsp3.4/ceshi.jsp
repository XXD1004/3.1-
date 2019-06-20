<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ceshi.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
    <a href="jsp3.4/ceshi.jsp?c=1">第一个链接</a><br>
    <a href="jsp3.4/ceshi.jsp?c=2">第二个链接</a><br>
    <a href="jsp3.4/ceshi.jsp?c=3">第三个链接</a><br>
    <a href="jsp3.4/ceshi.jsp?c=4">第四个链接</a><br>
    <a href="jsp3.4/ceshi.jsp?c=5">第五个链接</a><br>
    <a href="jsp3.4/ceshi.jsp?c=6">第六个链接</a><br>
    <a href="jsp3.4/ceshi.jsp?c=7">第七个链接</a><br>
    <a href="jsp3.4/ceshi.jsp?c=8">第八个链接</a><br>
    <a href="jsp3.4/ceshi.jsp?c=9">第九个链接</a><br>
    <% String count=request.getParameter("c");
       if(count!=null){
        int s=Integer.parseInt(count);
       out.println(s*s);
       }
     %>
  </body>
</html>
