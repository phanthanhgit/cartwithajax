<%@page import="com.phanthanh.bean.hangBean"%>
<%@page import="com.phanthanh.bo.sachBO"%>
<%@page import="com.phanthanh.bean.sachBean"%>
<%@page import="com.phanthanh.dao.gioHang"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Giỏ hàng</title>
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
	<script type="text/javascript" src="assets/jquery.min.js"></script>
	<script type="text/javascript" src="assets/popper.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container mt-3">
	<a class="btn btn-success" href="cuahang.jsp">Tiếp tục mua hàng</a>
	<div class="card mt-2 mb-2">
		<div class="card-header">
			<h3>Giỏ hàng của bạn</h3>
		</div>
		<div class="card-body" id="giohang">
		<%	
			gioHang gh = new gioHang();
			if(session.getAttribute("giohang") != null){
				gh = (gioHang)session.getAttribute("giohang");
				int i = 0;
				for(hangBean x : gh.lst){ 
				%>
					<table class="itembook" width="100%" data-masach="<%=x.getMaSach() %>">
						<tbody>
							<tr>
								<td width="150">
									<img alt="" src="assets/img/<%=x.getImg() %>" width="150" height="200">
								</td>
								<td valign="top" style="padding-left: 10px; font-size: 16px;">
									<h3 style="color: #000; font-size: 20px; text-transform: uppercase; font-weight: bold;"><%=x.getTenSach() %></h3>
									<b class="text-muted">MÃ SÁCH: <%=x.getMaSach() %></b><br>
									<b class="text-muted">GIÁ BÁN: <%=x.getGia() %></b><br>
								</td>
								<td width="100" align="right">
									  <ul class="pagination mb-0">
									    <li class="page-item"><a class="page-link removeitem" href="javascript:void(0)" data-masach="<%=x.getMaSach() %>">-</a></li>
									    <li class="page-item "><span class="page-link" data-masach="<%=x.getMaSach() %>"><%=x.getSoluong() %></span></li>
									    <li class="page-item"><a class="page-link additem" href="javascript:void(0)" data-masach="<%=x.getMaSach() %>">+</a></li>
									  </ul>
								</td>
								<td align="right" width="60">
									<button class="btn btn-danger delitem" data-masach="<%=x.getMaSach() %>">Xóa</button>
								</td>
							</tr>
						</tbody>
					</table>
					<br>
				<%}
			}
		%>
		</div>
		<div class="card-footer text-muted">
		   	<h3>Thành tiền: <span id="tien"><%=gh.thanhToan() %></span></h3>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(".delitem").click(function(e){
		e.preventDefault();
		var masach = $(this).attr("data-masach");
		$.get("xoahangtronggio.jsp",
		{
			masach: masach
		}, function(data){
			$("table[data-masach="+masach+"]").remove();
			$("#tien").html(data);
		});
	});
	
	$(".additem").click(function(){
		var masach = $(this).attr("data-masach");
		$.get("themhang.jsp",
		{
			masach: masach
		}, function(data){
			var s = $("span[data-masach="+masach+"]").text();
			s  = parseInt(s);
			s++;
			$("span[data-masach="+masach+"]").html(s);
			$("#tien").html(data);
		});
	});
	
	$(".removeitem").click(function(){
		var masach = $(this).attr("data-masach");
		$.get("xoahang.jsp",
		{
			masach: masach
		}, function(data){
			var s = $("span[data-masach="+masach+"]").text();
			s  = parseInt(s);
			if(s == 1){
				$("table[data-masach="+masach+"]").remove();
				$("#tien").html(data);
			}
			else {
				s--;
				$("span[data-masach="+masach+"]").html(s);
				$("#tien").html(data);
			}
			
		});
	});
</script>
</body>
</html>