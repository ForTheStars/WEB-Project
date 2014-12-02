package com.gizii.service;

import com.gizii.po.Goods;
import com.gizii.po.Pages;

public interface GoodsService {
	public void add(Goods goods);
	
	public void delete(int Id);
	
	public Goods getById(int Id);
	
	public int getIdByName(String name);
	
	public String getImage(int Id);
	
	public Pages<Goods> searchByName(String name);
	
	public void update(Goods goods);
}
