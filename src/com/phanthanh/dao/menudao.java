package com.phanthanh.dao;

import java.util.ArrayList;

import com.phanthanh.bean.menubean;

public class menudao {

	public ArrayList<menubean> getmenu(){
		ArrayList<menubean> ds = new ArrayList<>();
		menubean m = new menubean("tc", "Trang chu");
		ds.add(m);
		m = new menubean("tt", "Tin tuc");
		ds.add(m);
		m = new menubean("vc", "Vui choi");
		ds.add(m);
		m = new menubean("sp", "The thao");
		ds.add(m);
		m = new menubean("ts", "Thoi su");
		ds.add(m);
		return ds;
	}

}
