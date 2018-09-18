<%@page import="com.phanthanh.bo.sachBO"%>
<%@page import="com.phanthanh.bean.sachBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Cửa hàng</title>
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
	<script type="text/javascript" src="assets/jquery.js"></script>
	<script type="text/javascript" src="assets/popper.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="assets/style.css">
</head>
<body>
	<div class="container">
		<div class="row mt-3">
		<% 
			ArrayList<sachBean> ds = new ArrayList<>();
			sachBO nn = new sachBO();
			ds = nn.getSach();
			int i = 1;
			for(sachBean x : ds){%>
				<div class="col-md-4 text-center" style="font-size: 13px;">
					<img alt="" src="assets/img/<%=x.getAnh() %>" width="160" height="200"><br>
					<br>
					<a href="themhangvaogio.jsp?masach=<%=x.getMaSach() %>&tensach=<%=x.getTenSach() %>&soluong=1&img=<%=x.getAnh() %>&gia=<%=x.getGia()%>"><img src="assets/img/buynow.jpg" style="cursor:pointer"></a>
					<br>
					<br>
					<h3 class="mb-0" style="text-transform: uppercase; font-size: 16px; font-weight: bold;"><%=x.getTenSach() %></h3>
					<b>Giá: <%=x.getGia() %>VND</b><br>
					<b>Số lượng: <%=x.getSoLuong() %></b>
				</div>
		<%} %>
		</div>
	</div>
	<a href="giohang.jsp" id="btn-giohang">
		<img alt="Gio hang" src="assets/img/bag.png" width="70" height="70">
	</a>
	<script type="text/javascript">
		setTimeout(function() {
	        $(".alert").alert('close');
	    }, 2000);
	</script>
</body>
</html>