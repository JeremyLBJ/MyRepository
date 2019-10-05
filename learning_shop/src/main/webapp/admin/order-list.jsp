<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
       	  <button type="button" onclick="toFindOrders()" id="btn" class="button border-blue"><span class="icon-find"></span> 查看订单</button>
        </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr id="ths">
        <th>用户ID</th>
        <th>订单号</th>
        <th>商品ID</th>       
        <th>订单时间</th>
        <th>支付状态</th>
        
     	<c:forEach items="${order}" var="o">
     		<tr v-for='user in userList' id='userList'>
	     		<td><input type='checkbox' name='id[]' value='1' />${o.uid}</td>
	     		
				<td>${o.id}</td><td>${o.orderitem.cid}</td>
		        <td><fmt:formatDate value="${o.ordertime}" pattern="yyy-MM-dd HH:mm:ss"/></td>
		        <td id="status${o.id }">
		        	<script type="text/javascript">
		        		var a = ${o.status};
		        		if( a  == 1 ) {
		        			$('#status'+${o.id}+'').html("支付完成");
		        		}else{
		        			$('#status'+${o.id}+'').html("未支付");
		        			};
		        	</script>
		        </td>
		        <td><div class='button-group'></div>
		        <div class='button-group'></div></td>
	        </tr>
	      </c:forEach>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span>
        <a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
    </table>
  </div>
</form>
</body>
</html>