<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title></title>  
    <link rel="stylesheet" href="/admin/css/pintuer.css">
    <link rel="stylesheet" href="/admin/css/admin.css">
    <script src="/admin/js/jquery.js"></script>
    <script src="/admin/js/pintuer.js"></script>  
</head>
<body>
<form method="post" action="" id="app">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">用户访问日志</strong></div>
    <table class="table table-hover text-center">
      <tr>
        <th>ID</th>
		<th>访问时间</th>
		<th>访问用户</th>
		<th>访问IP</th>
		<th>资源URL</th>
		<th>执行时间</th>
		<th>访问方法</th>       
      </tr>
        <c:forEach items="${sysLogList }" var="syslog">    
        <tr>
			<td>${syslog.id}</td>
			<td>${syslog.visitTimeStr }</td>
			<td>${syslog.username }</td>
			<td>${syslog.ip }</td>
			<td>${syslog.url}</td>
			<td>${syslog.executionTime}毫秒</td>
			<td>${syslog.method}</td>         
        </tr>
        </c:forEach>
        
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</form>
</body></html>