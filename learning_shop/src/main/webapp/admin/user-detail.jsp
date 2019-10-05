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
				<strong class="icon-reorder"> 用户详情</strong>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<td>${user.username }
						<table class="table table-hover text-center">
							<tr>
								<th>角色ID</th>
								<th>角色名</th>
								<th>角色描述</th>
							</tr>
							<c:forEach items="${user.roleList }" var = "role">
								<tr>
									<td>${role.id }</td>
									<td>${role.roleName }</td>
									<td>${role.roleDesc }</td>
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