package com.gizii.cld.controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gizii.cld.po.Admin;
import com.gizii.cld.po.Email;
import com.gizii.cld.po.ShopException;
import com.gizii.cld.service.impl.AdminServiceImpl;
import com.gizii.cld.service.impl.EmailServiceImpl;

@Controller("AdminController")
@RequestMapping("/Admin.html")     
public class AdminController  {

	@Resource
	private  AdminServiceImpl adminService;
	
	@Resource
	private EmailServiceImpl emailService;
	
	
	@RequestMapping(params="method=logInInput")
	public String logInInput(HttpServletRequest req,HttpServletResponse resp){
		Admin a = (Admin)req.getSession().getAttribute("loginUser");
		if(a!=null)
			return "manage";
		else
			return "admin";
	}
	
	@RequestMapping(params="method=logIn") 
	public String logIn(HttpServletRequest req,HttpServletResponse resp) {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		Admin admin = new Admin();
		admin.setUsername(username);
		admin.setPassword(password);
		try {
			Admin a = adminService.logIn(admin);
			req.getSession().setAttribute("loginUser",a);
		} catch (ShopException e) {
			req.setAttribute("errorMsg",e.getMessage());
			return "error";
		}
		return "redirect:Admin.html?method=logIn_OK";
	}
	
	@RequestMapping(params="method=logIn_OK")
	public String logIn_OK(HttpServletRequest req,HttpServletResponse resp){
		Admin a = (Admin)req.getSession().getAttribute("loginUser");
		if(a==null)
			return "admin";	
		else {
			return "manage";
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
	public String updatePW(HttpServletRequest req,HttpServletResponse resp){
		Admin a = (Admin)req.getSession().getAttribute("loginUser");
		String username = a.getUsername();
		String password = req.getParameter("password");
		String repPassword = req.getParameter("repPassword");
		String oldPassword = req.getParameter("oldPassword");
		Admin admin = new Admin();
		admin.setUsername(username);
		admin.setPassword(oldPassword);
		try{
			adminService.logIn(admin);
			adminService.verify(password,repPassword);
			req.setAttribute("OK", "密码修改成功!");
		}catch (ShopException e) {
			req.setAttribute("errorMsg",e.getMessage());
			return "error.jsp";			
		}
		
		return "admin";
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

