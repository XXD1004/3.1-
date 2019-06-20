<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ceshi2.jsp' starting page</title>
    
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
  <form action="jsp3.9/ceshi3.jsp" method="post">
    <% String user=request.getParameter("username");
    	String pwd=request.getParameter("pwd");
    	if(user.equals("zs")&&pwd.equals("123")){
     %>
     <input type="hidden" name="user1" value="<%=user%>">
        输入姓名:<input type="text" placeholder="请输入姓名" name="name">
        <input type="submit" value="提交"> </form>
        <%}
        	else{
        	   out.println("账号或密码错误！");
         %>
            <a href="jsp3.9/ceshi.jsp">返回</a>
         <% } %>
   
  </body>
</html>
