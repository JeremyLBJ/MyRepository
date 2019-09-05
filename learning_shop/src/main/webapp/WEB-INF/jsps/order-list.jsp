<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<form method="post" action="" id="orderList">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">查看订单</strong></div>
    <div class="padding border-bottom">
      <ul class="search">
        <li>
          <button type="button"  class="button border-green" id="checkall"><span class="icon-check"></span> 全选</button>
          <button type="button" onclick="toAddUser()" class="button border-yellow"><span class="icon-plus-square-o"></span> 添加用户</button>
       	  <button type="button" onclick="toFindOrders()" class="button border-blue"><span class="icon-find"></span> 查看订单</button>
        </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th>用户ID</th>
        <th>用户名</th> 
        <th>订单号</th>
        <th>商品名称</th>       
        <th>商品价格</th>
        <th>订单时间</th>
        <th>商品价格</th>
        <th>操作</th>       
      </tr>      
     <tr v-for="user in userList" id="userList">
         <!--  <td><input type="checkbox" name="id[]" value="1" />
           {{o.id}}</td>
          <td>{o.cname}</td>
          <td>{o.price}</td>
          <td>{o.price}</td>  
          <td>{o.price}</td> 
          <td><img alt="" :src="user.userPic" width="60" height="60"/></td>
          <td>
          	<div class="button-group">
          	 <a class="button border-red" href="javascript:void(0)" onclick="return del(1)">
          	 	<span class="icon-trash-o"></span> 删除
          	 </a> 
          	</div>
          	<div class="button-group">
          	 <a class="button border-blue" href="javascript:void(0)" onclick="return del(1)">
          	 	<span class="icon-user"></span> 用户详情
          	 </a> 
          	</div>
          </td> -->
        </tr> 
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">
	function toFindOrders(){
		$.post("orderItems",function(data){
			console.log(data);
			console.log(data.length);
			var str = "";
			for(var i = 0 ; i < data.length ; i++){
				str+="<td><input type='checkbox' name='id[]' value='1' />"+
		          ""+data[i].id+"</td><td>"+data[i].cname+"</td><td>"+data[i].id+"</td>"+
		          "<td>"+data[i].price+"</td><td>"+data[i].startTime+"</td>"+
		          "<td><img alt='' :src='user.userPic' width='60' height='60'/></td>"+
		          "<td><div class='button-group'>"+
		          "<a class='button border-red' href='javascript:void(0)' onclick='return del(1)'>"+
		          "<span class='icon-trash-o'></span> 删除</a></div>"+
		          "<div class='button-group'>"+
		          "<a class='button border-blue' href='javascript:void(0)' onclick='return del(1)'>"+
		          "<span class='icon-user'></span> 用户详情</a></div></td>";
			}
			$("#userList").html(str);
		})
	}


</script>
</body>
</html>