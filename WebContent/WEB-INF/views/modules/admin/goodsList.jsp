<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<title>商品列表</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

td {
	border: 1px solid #808080;
	padding: 2px 0px;
}

table {
	border-collapse: collapse;
	margin: 0px auto;
	width:80%;
}

table img {
	width: 100px;
	height: 100px;
}

#table1 td {
	border: 0px;
}

#header {
	background-color: green;
	color: white;
	font-weight: bold;
	text-align: center;
	line-height: 28px;
}

#header a {
	color: white;
	text-decoration: none;
}

.chb {
	text-align: center;
}

div {
	margin: 2% auto
}

caption {
	font-size: 20px;
}
.row{
	display: none;
}
.site-topbar{
	display: none;
}
</style>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function checkall() {
		var checkboxes = document.getElementsByName("chb");
		for (var i = 0; i < checkboxes.length; i++) {
			checkboxes[i].checked = document.getElementById("all").checked;
		}
	}
	$(document).ready(function() {
		$(".del").click(function() {
			return confirm("确定要删除吗？");
		});
	});
</script>
</head>

<body>
<div class="big"></div>
	<div>
		<form action="adminGood/fuzzy" method="post">
			<table id="table1">
				<caption>商品信息管理</caption>
				<tr>
					<td>关键字:<input type="text" name="goods" />&nbsp;&nbsp;<input
						type="submit" value="查询">&nbsp;&nbsp;<a
						href="adminGood/insertGoods"><input type="button" value="添加商品"></a></td>
				</tr>
			</table>
		</form>
		<form action="adminGood/mdel" method="post">
			<table>
				<tr id="header">
					<td><input type="checkbox" id="all" onclick="checkall()" /></td>
					<td>商品ID</td>
					<td>商品编号</td>
					<td>商品名称</td>
					<td>商品价格</td>
					<td>商品介绍</td>
					<td>商品图片</td>
					<td>商品标题</td>
					<td>商品描述</td>
					<td>操作</td>
				</tr>
				<c:forEach var="goods" items="${listgoods}" begin="0"
					end="${listgoods.size()}">
					<tr>
						<td class="chb"><input type="checkbox" name="chb"
							value="${goods.productid}"></td>
						<td>${goods.productid}</td>
						<td>${goods.productnumber}</td>
						<td>${goods.name}</td>
						<td>${goods.showprice}</td>
						<td>${goods.introduce}</td>
						<td><img src="uploads/${goods.picimg}" style="width: 75px;height: 100px;"/></td>
						<td>${goods.pagetitle}</td>
						<td>${goods.pagedescription}</td>
 						<td style="text-align: center;"><a 
 							href="adminGood/updateGoods?id=${goods.productid}">修改</a><br> 
 						<br> 
 						<a href="adminGood/del?id=${goods.productid}" class="del">删除</a></td> 
					</tr>

				</c:forEach>
			</table>
		</form>
	</div>
</body>
</html>
