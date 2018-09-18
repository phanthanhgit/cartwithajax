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
	String masach = request.getParameter("masach");
	gioHang gh = new gioHang();
	gh = (gioHang)session.getAttribute("giohang");
	for(int i = 0; i < gh.lst.size(); i++)
		if(gh.lst.get(i).getMaSach().equals(masach)){
			gh.lst.remove(i);
			break;
		}
	session.setAttribute("giohang", gh);
	out.print(gh.thanhToan());
%>
</body>
</html>