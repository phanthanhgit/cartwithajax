package com.phanthanh.bean;

public class menubean {
	private String ma;
	private String ten;
	
	public menubean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public menubean(String ma, String ten) {
		super();
		this.setMa(ma);
		this.setTen(ten);
	}

	public String getMa() {
		return ma;
	}

	public void setMa(String ma) {
		this.ma = ma;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}
}
