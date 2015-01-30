package com.gizii.cld.service;

import java.util.List;

import com.gizii.cld.po.Goods;

public interface GoodsService {
	public void add(Goods goods);
	
	public void delete(Integer Id);
	
	public Goods getById(Integer Id);
	
	public int getIdByName(String name);
	
	public String getImage(Integer Id);
	
	public List<Goods> getAllGoods();
	
	public void update(Goods goods);
}