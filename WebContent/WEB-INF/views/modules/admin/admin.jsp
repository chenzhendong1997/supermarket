<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style type="text/css">
table{margin: 13% auto;width: 130px;}
html body{background-image: url("../../../static/os/images/admin/control.jpg") none;}

</style>
  </head>
  
  <body>
    <div>
    	<table>
    	<caption>网站后台管理平台</caption>
    		<tr><td>&nbsp;</td></tr>
    		<tr><td><a href="adminUser/list">1、管理员信息管理</a></td></tr>
    		<tr><td>&nbsp;</td></tr>
    		<tr><td><a href="adminGood/list">2、商品信息管理</a></td></tr>
    	</table>
    </div>
  </body>
</html>
