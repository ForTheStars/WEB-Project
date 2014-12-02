package com.gizii.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gizii.po.User;
import com.gizii.service.impl.UserServiceImpl;

@Controller("UserController")
@RequestMapping("/User.html") 
public class UserController {
	
	@Resource
	private UserServiceImpl userService;

	@RequestMapping(params="method=add")
	public void add(String last_IP){
		User user=new User();
		user.setLast_IP(last_IP);
		userService.add(user);
	}
	
	@RequestMapping(params="method=clear")
	public void clear(){
		userService.deleteAll();
	}
	
	
	
	public UserServiceImpl getUserService() {
		return userService;
	}

	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}
	
	
}
