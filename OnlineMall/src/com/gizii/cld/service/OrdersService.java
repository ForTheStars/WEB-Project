package com.gizii.cld.service;

import java.util.List;

import com.gizii.cld.po.Orders;

public interface OrdersService {
	
	public void add(Orders orders);
	
	public void delete(int Id);
	
	public void update(Orders orders);
	
	public Orders getById(int Id);
	
	public List<Orders> getByDay(int day);
	
	public void clearByDay(int day);
}