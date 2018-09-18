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
<title>Insert title here</title>
</head>
<body>
<%
if(request.getParameter("masach") != null && request.getParameter("tensach") != null && request.getParameter("soluong") != null && request.getParameter("img") != null && request.getParameter("gia") != null){
	if(session.getAttribute("giohang") != null){
		gioHang gh = new gioHang();
		String masach = request.getParameter("masach");
		String tensach = request.getParameter("tensach");
		int soluong = Integer.parseInt(request.getParameter("soluong"));
		int gia = Integer.parseInt(request.getParameter("gia"));
		String img = request.getParameter("img");
		gh = (gioHang)session.getAttribute("giohang");
		hangBean x = new hangBean(masach, tensach, img, gia, soluong);
		gh.Them(masach, tensach, img, soluong, gia);
		session.setAttribute("giohang", gh);
	} else {
		gioHang gh = new gioHang();
		String masach = request.getParameter("masach");
		String tensach = request.getParameter("tensach");
		int soluong = Integer.parseInt(request.getParameter("soluong"));
		int gia = Integer.parseInt(request.getParameter("gia"));
		String img = request.getParameter("img");
		hangBean x = new hangBean(masach, tensach, img, gia, soluong);
		gh.Them(masach, tensach, img, soluong, gia);
		session.setAttribute("giohang", gh);
	}
}
response.sendRedirect("giohang.jsp");
%>
</body>
</html>