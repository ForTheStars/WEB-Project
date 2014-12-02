package com.gizii.mapper;

import java.util.List;
import java.util.Map;

import com.gizii.po.Goods;

public interface GoodsMapper {
	
	public void add(Goods goods);
	
	public void update(Goods goods);
	
	public void delete(int Id);
	
	public int getIdByName(String name);
	
	public List<Goods> searchByName(Map<String, Object> params);
	
	public int search_Count(String name);
	
	public Goods getById(int Id);
	
	public String getImage(int Id);
}
