package com.gizii.controller;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gizii.po.Admin;
import com.gizii.po.Email;
import com.gizii.service.impl.AdminServiceImpl;
import com.gizii.service.impl.EmailServiceImpl;



@Controller("AdminController")
@RequestMapping("/Admin.html")     
public class AdminController  {

	@Resource
	private  AdminServiceImpl adminService;
	
	@Resource
	private EmailServiceImpl emailService;
	
	@RequestMapping(params="method=logIn") 
	public String logIn(String username,String password,int userType,String last_IP) {
		Admin admin = new Admin();
		admin.setUsername(username);
		admin.setPassword(password);
		admin.setUserType(userType);
		admin.setLast_IP(last_IP);
		System.out.println(admin.getLast_IP());
		if(admin.getUserType() == 0){
			adminService.logIn(admin);
			return "index";
		}
		else {
			return "index";
		}
	}
	
	@RequestMapping(params="method=add")
	public String add(String username,String password,String last_IP){
		Admin admin = new Admin();
		admin.setUsername(username);
		admin.setPassword(password);
		admin.setUserType(0);
		admin.setLast_IP(last_IP);
		adminService.add(admin);
		return "index";
	}
	
	@RequestMapping(params="method=delete")
	public String delete(int Id){
		adminService.delete(Id);
		return "index";
	}
	
	@RequestMapping(params="method=updatePW")
	public String updatePW(int Id,String oldPassword,String password){
		Admin admin = new Admin();
		admin.setId(Id);
		admin.setPassword(oldPassword);
		admin.setUsername(null);
		boolean OK = adminService.logIn(admin);
		if(!OK){
			return "index";
		}
		else {
			admin.setPassword(password);
			adminService.update(admin);
			return "index";
		}
	}
	
	@RequestMapping(params="method=updateUN")
	public String updateUN(int Id,String username){
		Admin admin = new Admin();
		admin.setUsername(username);
		admin.setId(Id);
		adminService.update(admin);
		return "index";
	}
	
	@RequestMapping(params="method=showAll")
	public @ResponseBody List<Admin> showAll(){
		List<Admin> admins= adminService.showAll();
		return admins;
	}
	
	@RequestMapping(params="method=showEmail")
	public @ResponseBody List<Email> showEmail(@RequestBody int admin_Id){
		List<Email> emails = emailService.getAll(admin_Id);
		return emails;
	}
	
	public AdminServiceImpl getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminServiceImpl adminService) {
		this.adminService = adminService;
	}

	public EmailServiceImpl getEmailService() {
		return emailService;
	}

	public void setEmailService(EmailServiceImpl emailService) {
		this.emailService = emailService;
	}

	
}

