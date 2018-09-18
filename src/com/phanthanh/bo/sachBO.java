package com.phanthanh.bo;

import java.util.ArrayList;

import com.phanthanh.bean.sachBean;
import com.phanthanh.dao.sachDAO;

public class sachBO {

	public ArrayList<sachBean> getSach(){
		ArrayList<sachBean> ds = new ArrayList<>();
		sachDAO mm = new sachDAO();
		ds = mm.getSach();
		return ds;
	}

}
