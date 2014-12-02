package com.gizii.dao;

import com.gizii.po.Goods;
import com.gizii.po.Pages;

public interface GoodsDAO {
	
	public void add(Goods goods);
	
	public void update(Goods goods);
	
	public void delete(int Id);
	
	public int getIdByName(String name);
	
	public Pages<Goods> searchByName(String name);
	
	public Goods getById(int Id);
	
	public String getImage(int Id);
}
