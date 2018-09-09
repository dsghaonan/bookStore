<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>菜单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<c:url value='/menu/mymenu.js'/>"></script>
	<link rel="stylesheet" href="<c:url value='/menu/mymenu.css'/>" type="text/css" media="all">
<script language="javascript">

var bar1 = new Q6MenuBar("bar1", "ITCAST网络图书商城");
function load() {
	/*
	指定配色方案：0/1/2/3
	*/
	bar1.colorStyle = 2;
	/*
	设置图片目录
	*/
	bar1.config.imgDir = "<c:url value='/menu/img/'/>";
	/*
	菜单之间是否相互排斥
	*/
	bar1.config.radioButton=false;
	/*
	分类管理：指定要添加的菜单名称
	查看分类：指定要添加的菜单项名称
	<c:url value='/adminjsps/admin/category/list.jsp'/>：指定菜单项时要请求的地址
	body：结果的显示框架页名称
	*/
	bar1.add("分类管理", "查看分类", "<c:url value='/admin/AdminCategoryServlet?method=findAll'/>", "body");
	bar1.add("分类管理", "添加分类", "<c:url value='/adminjsps/admin/category/add.jsp'/>", "body");

	bar1.add("图书管理", "查看图书", "<c:url value='/admin/AdminBookServlet?method=findAll'/>", "body");
	bar1.add("图书管理", "添加图书", "<c:url value='/admin/AdminBookServlet?method=addPre'/>", "body");

	bar1.add("订单管理", "所有订单", "<c:url value='/adminjsps/admin/order/list.jsp'/>", "body");
	bar1.add("订单管理", "未付款订单", "<c:url value='/adminjsps/admin/order/list.jsp'/>", "body");
	bar1.add("订单管理", "已付款订单", "<c:url value='/adminjsps/admin/order/list.jsp'/>", "body");
	bar1.add("订单管理", "未收货订单", "<c:url value='/adminjsps/admin/order/list.jsp'/>", "body");
	bar1.add("订单管理", "已完成订单", "<c:url value='/adminjsps/admin/order/list.jsp'/>", "body");
	
	// 获取div元素
	var d = document.getElementById("menu");
	// 把菜单对象转换成字符串，赋给<div>元素
	d.innerHTML = bar1.toString();
}
</script>

<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"11999",secure:"12006"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body onload="load()" style="margin: 0px; background: rgb(254,238,189);" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-9" data-genuitec-path="/bookstore/WebRoot/adminjsps/admin/left.jsp">
<div id="menu" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-9" data-genuitec-path="/bookstore/WebRoot/adminjsps/admin/left.jsp"></div>

</body>
</html>
