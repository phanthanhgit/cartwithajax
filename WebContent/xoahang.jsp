<%@page import="com.phanthanh.bean.hangBean"%>
<%@page import="com.phanthanh.bo.sachBO"%>
<%@page import="com.phanthanh.bean.sachBean"%>
<%@page import="com.phanthanh.dao.gioHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(request.getParameter("masach") != null){
	String masach = request.getParameter("masach");
	if(session.getAttribute("giohang") != null){
		gioHang gh = new gioHang();
		gh = (gioHang)session.getAttribute("giohang");
		gh.xoaHang(masach);
		session.setAttribute("giohang", gh);
		out.print(gh.thanhToan());
	} 
}
%>
</body>
</html>