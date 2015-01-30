package com.gizii.cld.mapper;

import java.util.List;

import com.gizii.cld.po.Goods;

public interface GoodsMapper {
	
	public void add(Goods goods);
	
	public void update(Goods goods);
	
	public void delete(Integer Id);
	
	public int getIdByName(String name);
	
	public List<Goods> getAllGoods();
	
	public int search_Count(String name);
	
	public Goods getById(Integer Id);
	
	public String getImage(Integer Id);
}