package com.phanthanh.dao;

import java.util.ArrayList;

import com.phanthanh.bean.hangBean;

public class gioHang {
	public ArrayList<hangBean> lst = new ArrayList<>();
	
	public void Them(String masach, String tensach, String img, int soluong, int gia) {
		for(hangBean x : lst) {
			if(x.getMaSach().toUpperCase().equals(masach.toUpperCase())) {
				x.setSoluong(x.getSoluong() + soluong);
				x.setThanhtien(x.getGia() * (x.getSoluong()));
				return;
			}
		}
		hangBean h = new hangBean(masach, tensach, img, gia, soluong);
		lst.add(h);
	}
	
	public void themHang(String masach) {
		for(int i = 0; i < lst.size(); i++) {
			if(lst.get(i).getMaSach().equals(masach)) {
				hangBean x = new hangBean();
				x = lst.get(i);
				x.setSoluong(x.getSoluong() + 1);
				x.setThanhtien(x.getSoluong() * x.getGia());
				return;
			}
		}
		return;
	}
	
	public void xoaHang(String masach) {
		for(int i = 0; i < lst.size(); i++) {
			if(lst.get(i).getMaSach().equals(masach)) {
				hangBean x = new hangBean();
				x = lst.get(i);
				if(x.getSoluong() == 1) {
					lst.remove(i);
					return;
				}
				x.setSoluong(x.getSoluong() - 1);
				x.setThanhtien(x.getSoluong() * x.getGia());
				return;
			}
		}
		return;
	}
	
	public long thanhToan() {
		long sum = 0;
		for(hangBean x : lst) {
			sum += x.getThanhtien();
		}
		return sum;
	}
}
