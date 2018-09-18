package com.phanthanh.bo;

import java.util.ArrayList;

import com.phanthanh.bean.menubean;
import com.phanthanh.dao.menudao;

public class menubo {
	menudao mn = new menudao();
	
	public ArrayList<menubean> getMenu(){
		return mn.getmenu();
	}

}
