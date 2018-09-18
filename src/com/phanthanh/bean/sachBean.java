package com.phanthanh.bean;

public class sachBean {
	public String maSach;
	public String tenSach;
	public String gia;
	public String soLuong;
	public String anh;
	public sachBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public sachBean(String maSach, String tenSach, String gia, String soLuong, String anh) {
		super();
		this.maSach = maSach;
		this.tenSach = tenSach;
		this.gia = gia;
		this.soLuong = soLuong;
		this.anh = anh;
	}
	public String getMaSach() {
		return maSach;
	}
	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}
	public String getTenSach() {
		return tenSach;
	}
	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}
	public String getGia() {
		return gia;
	}
	public void setGia(String gia) {
		this.gia = gia;
	}
	public String getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(String soLuong) {
		this.soLuong = soLuong;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
}
