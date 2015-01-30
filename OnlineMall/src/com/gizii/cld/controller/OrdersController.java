package com.gizii.cld.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.gizii.cld.po.Orders;
import com.gizii.cld.service.impl.OrdersServiceImpl;

@Controller("ordersController")
@RequestMapping("/Orders.html")
public class OrdersController {
	@Resource
	private OrdersServiceImpl ordersService;
	
	public void add(int user_ID,double money,String address,String message){
		Orders orders = new Orders();
		orders.getUser().setId(user_ID);
		orders.setMoney(money);
		orders.setAddress(address);
		orders.setMessage(message);
		ordersService.add(orders);
	}
	
	public void delete(int Id){
		ordersService.delete(Id);
	}
	
	public void update(String address,String message){
		Orders orders = new Orders();
		orders.setAddress(address);
		orders.setMessage(message);
		ordersService.update(orders);
	}
	
}
