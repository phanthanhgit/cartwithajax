package com.phanthanh.dao;

import java.util.ArrayList;

import com.phanthanh.bean.sachBean;

public class sachDAO {
	public ArrayList<sachBean> getSach(){
		ArrayList<sachBean> ds = new ArrayList<>();
		sachBean m = new sachBean("sach1", "Chữa bệnh không dùng thuốc", "10000", "410", "anh1.jpg");
		ds.add(m);
		m = new sachBean("sach2", "Ngôn ngữ lập trình thiết bị di động", "10000", "1130", "anh2.jpg");
		ds.add(m);
		m = new sachBean("sach3", "Số phận và tâm linh", "10000", "100", "anh3.JPG");
		ds.add(m);
		m = new sachBean("sach4", "Tôi đã kiếm 2.000.000 Đô la như thế nào?", "20000", "130", "anh4.JPG");
		ds.add(m);
		m = new sachBean("sach5", "Món ngon xứ Huế", "50000", "1310", "anh5.jpg");
		ds.add(m);
		m = new sachBean("sach6", "Lang thang và hành trình ngàn dặm", "20000", "1230", "anh6.jpg");
		ds.add(m);
		return ds;
	}
}
