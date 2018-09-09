<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>分类列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {background: rgb(254,238,189);}
	table {font-family: 宋体; font-size: 11pt; border-color: rgb(78,78,78);  width: 60%;}
	#th {background: rgb(78,78,78);}
</style>
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"11999",secure:"12006"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-6" data-genuitec-path="/bookstore/WebRoot/adminjsps/admin/category/list.jsp">
    <h2 style="text-align: center;" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-6" data-genuitec-path="/bookstore/WebRoot/adminjsps/admin/category/list.jsp">分类列表</h2>
    <table align="center" border="1" cellpadding="0" cellspacing="0">
    	<tr id="th" bordercolor="rgb(78,78,78)">
    		<th>分类名称</th>
    		<th>操作</th>
    	</tr>
<c:forEach items="${categoryList }" var="c">
    	<tr bordercolor="rgb(78,78,78)">
    		<td>${c.cname }</td>
    		<td>
    		  <a href="<c:url value='/admin/AdminCategoryServlet?method=editPre&cid=${c.cid }'/>">修改</a> |
    		  <a onclick="return confirm('您真要删除该分类吗？')" href="<c:url value='/admin/AdminCategoryServlet?method=delete&cid=${c.cid }'/>">删除</a>
    		</td>
    	</tr>
</c:forEach>
   
    </table>
  </body>
</html>
