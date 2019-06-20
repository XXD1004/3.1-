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
  		
      <% 
      		
      		String name=request.getParameter("username");
      	 	String pwd=request.getParameter("pwd");
     
      	 if(name.equals("zs")){
      	 	if(pwd.equals("123")){
      	 		out.println("登录成功!");
      	 	}
      	 	else{
      	 		out.println("密码错误!");
      	 		}
      	 }
      	 else{
      	 	out.println("登录失败！");
      	 }
       %>
  </body>
</html>
