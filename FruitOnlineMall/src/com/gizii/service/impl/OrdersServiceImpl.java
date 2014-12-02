package com.gizii.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gizii.dao.impl.OrdersDAOImpl;
import com.gizii.po.Orders;
import com.gizii.service.OrdersService;

@Service("ordersService")
public class OrdersServiceImpl implements OrdersService {

	@Resource
	private OrdersDAOImpl ordersDao;
	
	@Override
	public void add(Orders orders) {
		ordersDao.add(orders);
	}

	@Override
	public void delete(int Id) {
		ordersDao.delete(Id);

	}
	
	@Override
	public void update(Orders orders){
		ordersDao.update(orders);
	}
	
	@Override
	public Orders getById(int Id) {
		return ordersDao.getById(Id);
	}

	@Override
	public List<Orders> getByDay(int day) {
		return ordersDao.getByDay(day);
	}

	@Override
	public void clearByDay(int day) {
		ordersDao.clearByDay(day);

	}

}
