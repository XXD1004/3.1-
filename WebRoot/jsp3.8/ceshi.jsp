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
  <form aciton="jsp3.8/ceshi.jsp" method="post">
      应付款：<input type="text" name="money" placeholder="请输入应付款金额"  value="<%=request.getParameter("money")==null?"":request.getParameter("money")%>"><br/>
      实际付款：<input type="text" name="money1" placeholder="请输入实际付款金额"  value="<%=request.getParameter("money1")==null?"":request.getParameter("money1")%>"><br/>
     <input type="submit" value="提交">
     </from>
      <% 
      	String number1=request.getParameter("money");
      	String number2=request.getParameter("money1");
     
      	if(number1!=null&&number2!=null){
      	int s=Integer.parseInt(number1);
      	int x=Integer.parseInt(number2);

      	int sum=x-s;
        int a,b,c,d,e,f;
      	if(sum<0)
      	{
      		out.println("金额不足！");
      	}
      	else{
      		a=sum/100;
      		sum=sum%100;
      		b=sum/50;
      		sum=sum%50;
      		c=sum/20;
      		sum=sum%20;
      		d=sum/10;
      		sum=sum%10;
      		e=sum/5;
      		sum=sum%5;
      		f=sum;
      		out.println("应找零为："+"100元"+a+"张"+"     ");
      		out.println("50元"+b+"张"+"     ");
      		out.println("20元"+c+"张"+"     ");
      		out.println("10元"+d+"张"+"     ");
      		out.println("5元"+e+"张"+"     ");
      		out.println("1元"+f+"张"+"     ");
      		}
      	}
      
        %>
    
      
  </body>
</html>
