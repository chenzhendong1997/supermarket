<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>修改商品</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<div style="margin-top: 80px;" align="center">
		<form action="adminGood/update?id=${adminGood.productid}" method="post">
			<table>
				<tr>
					<td>商品编号：</td>
					<td>${adminGood.productid}</td>
				</tr>
				<tr>
					<td>商品名称：</td>
					<td><input type="text" name="name" value="${adminGood.name}"></td>
				</tr>
				<tr>
					<td>商品价格：</td>
					<td><input type="text" name="price" value="${adminGood.showprice}"></td>
				</tr>
				<tr>
					<td>商品介绍：</td>
					<td><input type="text" name="introduce" value="${adminGood.introduce}"></td>
				</tr>
				<tr>
					<td>图片：</td>
					<td><input type="text" name="img" value="${adminGood.picimg}"></td>
				</tr>
				<tr>
					<td>商品标题：</td>
					<td><input type="text" name="title" value="${adminGood.pagetitle}"></td>
				</tr>
				<tr>
					<td>商品描述：</td>
					<td><input type="text" name="description" value="${adminGood.pagedescription}"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="修改">
						<input type="reset" value="重置"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
