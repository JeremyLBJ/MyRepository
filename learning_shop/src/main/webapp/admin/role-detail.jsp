<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
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
			<div class="panel-head">
				<strong class="icon-reorder"> 角色详情</strong>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<td>${role.roleName }
						<table class="table table-hover text-center">
							<tr>
								<th>权限ID</th>
								<th>权限名</th>
								<th>权限描述</th>
							</tr>
							<c:forEach items="${role.permissions }" var = "permission">
								<tr>
									<td>${permission.id }</td>
									<td>${permission.permissionname }</td>
									<td>${permission.url }</td>
								</tr>
							</c:forEach>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="8"><div class="pagelist">
							<a href="">上一页</a> <span class="current">1</span><a href="">2</a><a
								href="">3</a><a href="">下一页</a><a href="">尾页</a>
						</div></td>
				</tr>
			</table>
		</div>
	</form>
	<script type="text/javascript" src="/js/vuejs-2.5.16.js"></script>
	<script type="text/javascript" src="/js/axios-0.18.0.js"></script>
</body>
</html>