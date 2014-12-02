package com.gizii.dao;

import java.util.List;

import com.gizii.po.Orders;

public interface OrdersDAO {
	
	public void add(Orders orders);
	
	public void delete(int Id);
	
	public void update(Orders orders);
	
	public Orders getById(int Id);
	
	public List<Orders> getByDay(int day);
	
	public void clearByDay(int day);
}
