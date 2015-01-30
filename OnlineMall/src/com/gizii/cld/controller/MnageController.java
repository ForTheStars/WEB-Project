package com.gizii.cld.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.File;


@Controller("manageController")
@RequestMapping("/manage.html")
public class MnageController{

	@RequestMapping(params="method=upload",method = RequestMethod.POST)
	public String handleUploadData(@RequestParam("imgfile")CommonsMultipartFile file,String target,String Block,String productId,HttpServletRequest req) {
		if (!file.isEmpty()) {
			ServletContext servletContext = req.getSession().getServletContext();
			String  path = servletContext.getRealPath("/images/"+target+"/");
			String fileName = file.getOriginalFilename();
			//String fileType = fileName.substring(fileName.lastIndexOf("."));
			File data = new File(path,fileName);
			try {
					file.getFileItem().write(data);
			} catch (Exception e) {
				req.setAttribute("errorMsg","写入文件失败！");
				return "error";
			}
			servletContext.setAttribute(Block+"_"+target,req.getContextPath()+"/images/"+target+"/"+fileName);
			servletContext.setAttribute(Block+"_"+target+"ProductId",productId);
			return "Blank";
		}
		else {
			req.setAttribute("errorMsg","文件为空！");
			return "error";
		}
	}
	
	
	@RequestMapping(params="method=block",method=RequestMethod.POST)
	public String Block(String blockNo,String blockName,HttpServletRequest request,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");
		ServletContext servletContext = request.getSession().getServletContext();
		servletContext.setAttribute(blockNo, blockName);
		return null;
	}
	
	@RequestMapping(params="method=banner")
	public String Banner(@RequestParam("imgfile")CommonsMultipartFile file,String bannerNo,String productId,HttpServletRequest req){
		if (!file.isEmpty()) {
			ServletContext servletContext = req.getSession().getServletContext();
			String  path = servletContext.getRealPath("/images/banner/");
			String fileName = file.getOriginalFilename();
			File data = new File(path,fileName);
			try {
				file.getFileItem().write(data);
			} catch (Exception e) {
				req.setAttribute("errorMsg","写入文件失败！");
			return "error";
			}
			servletContext.setAttribute(bannerNo,req.getContextPath()+"/images/banner/"+fileName);
			servletContext.setAttribute(bannerNo+"ProductId",productId);
			return null;
		}
		else {
			req.setAttribute("errorMsg","文件为空！");
			return "error";
		}
	}
	
	@RequestMapping(params="method=coupon")
	public String Coupon(@RequestParam("imgfile")CommonsMultipartFile file,String CouponNo,String productId,HttpServletRequest req){
		if (!file.isEmpty()) {
			ServletContext servletContext = req.getSession().getServletContext();
			String  path = servletContext.getRealPath("/images/coupon/");
			String fileName = file.getOriginalFilename();
			File data = new File(path,fileName);
			try {
				file.getFileItem().write(data);
			} catch (Exception e) {
				req.setAttribute("errorMsg","写入文件失败！");
			return "error";
			}
			servletContext.setAttribute(CouponNo,req.getContextPath()+"/images/coupon/"+fileName);
			servletContext.setAttribute(CouponNo+"ProductId",productId);
			return "Blank";
		}
		else {
			req.setAttribute("errorMsg","文件为空！");
			return "error";
		}
	}
	
	@RequestMapping(params="method=logo")
	public String logo(@RequestParam("imgfile")CommonsMultipartFile file,HttpServletRequest req){
		if (!file.isEmpty()) {
			ServletContext servletContext = req.getSession().getServletContext();
			String  path = servletContext.getRealPath("/images/logo/");
			String fileName = file.getOriginalFilename();
			File data = new File(path,fileName);
			try {
				file.getFileItem().write(data);
			} catch (Exception e) {
				req.setAttribute("errorMsg","写入文件失败！");
			return "error";
			}
			servletContext.setAttribute("logo",req.getContextPath()+"/images/logo/"+fileName);
			return "Blank";
		}
		else {
			req.setAttribute("errorMsg","文件为空！");
			return "error";
		}
	}
	
}