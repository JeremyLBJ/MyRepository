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
    <div class="panel-head"><strong class="icon-reorder">添加角色</strong></div>
    <div class="padding border-bottom">
      <ul class="search">
        <li>
          <button type="button"  class="button border-green" id="checkall"><span class="icon-check"></span> 全选</button>
          <button type="button" onclick="toAddRole()" class="button border-yellow"><span class="icon-plus-square-o"></span> 添加角色</button>
        </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th>ID</th>
        <th>角色名</th>       
        <th>角色描述</th>
    
      </tr>
      <c:forEach items="${roleList }" var="role">      
        <tr>
          <td><input type="checkbox" name="ids" value="1" />
            ${role.id}</td>
          <td>${role.roleName}</td>
          <td>${role.roleDesc}</td>
          <td>
          	<div class="button-group">
          	 <a class="button border-red" href="/addRole2User?id=${role.id }&uid=${uid }">
          	 	<span class="icon-plus-square-o"></span> 添加此角色
          	 </a> 
          	</div>
          </td>
        </tr>
       </c:forEach>
        
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript" src="/js/vuejs-2.5.16.js"></script>
<script type="text/javascript" src="/js/axios-0.18.0.js"></script>
<script type="text/javascript">

function del(id){
	if(confirm("您确定要删除吗?")){
		
	}
}
function toAddRole(){
	location.href="/admin/role-add.html";
}
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false; 		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

</script>
</body></html>