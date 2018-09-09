<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>订单列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	* {
		font-size: 11pt;
	}
	div {
		border: solid 2px gray;
		width: 75px;
		height: 75px;
		text-align: center;
	}
	li {
		margin: 10px;
	}
	
	#buy {
		background: url(<c:url value='/images/all.png'/>) no-repeat;
		display: inline-block;
		
		background-position: 0 -902px;
		margin-left: 30px;
		height: 36px;
		width: 146px;
	}
	#buy:HOVER {
		background: url(<c:url value='/images/all.png'/>) no-repeat;
		display: inline-block;
		
		background-position: 0 -938px;
		margin-left: 30px;
		height: 36px;
		width: 146px;
	}
</style>
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"11999",secure:"12006"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-25" data-genuitec-path="/bookstore/WebRoot/jsps/order/list.jsp">
<h1 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-25" data-genuitec-path="/bookstore/WebRoot/jsps/order/list.jsp">我的订单</h1>

<table border="1" width="100%" cellspacing="0" background="black">
<c:forEach items="${orderList }" var="order">
	<tr bgcolor="gray" bordercolor="gray">
		<td colspan="6">
			订单编号：${order.oid }　成交时间：${order.ordertime }　金额：<font color="red"><b>${order.total }</b></font>　
			<c:choose>
				<c:when test="${order.state eq 1 }">
					<a href="<c:url value='/OrderServlet?method=load&oid=${order.oid }'/>">付款</a>
				</c:when>
				<c:when test="${order.state eq 2 }">等待发货</c:when>
				<c:when test="${order.state eq 3 }">
					<a href="<c:url value='/OrderServlet?method=confirm&oid=${order.oid }'/>">确认收货</a>
				</c:when>
				<c:when test="${order.state eq 4 }">交易成功</c:when>
			</c:choose>
		</td>
	</tr>
  <c:forEach items="${order.orderItemList }" var="orderItem">
	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/${orderItem.book.image }'/>" height="75"/></div>
		</td>
		<td>书名：${orderItem.book.bname }</td>
		<td>单价：${orderItem.book.price }元</td>
		<td>作者：${orderItem.book.author }</td>
		<td>数量：${orderItem.count }</td>
		<td>小计：${orderItem.subtotal }元</td>
	</tr>
  </c:forEach>
</c:forEach>

</table>
  </body>
</html>
