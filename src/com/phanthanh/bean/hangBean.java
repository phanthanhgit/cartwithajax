package com.phanthanh.bean;

public class hangBean {
	private String maSach;
	private String tenSach;
	private String img;
	private int gia;
	private int soluong;
	private	int thanhtien;
	
	public hangBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public hangBean(String maSach, String tenSach, String img, int gia, int soluong) {
		super();
		this.maSach = maSach;
		this.tenSach = tenSach;
		this.img = img;
		this.gia = gia;
		this.soluong = soluong;
		this.thanhtien = gia*soluong;
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
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}	
}
