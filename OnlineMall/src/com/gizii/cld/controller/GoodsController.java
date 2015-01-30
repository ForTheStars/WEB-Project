package com.gizii.cld.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.gizii.cld.po.Goods;
import com.gizii.cld.service.impl.GoodsServiceImpl;

@Controller("goodsController")
@RequestMapping("/Goods.html")
public class GoodsController {
	
	@Resource
	private GoodsServiceImpl goodsService;
	
	@RequestMapping(params="method=add")
	public String add(String name,String intro,double price,double unitPrice,double bPrice,@RequestParam("imgfile")CommonsMultipartFile file,HttpServletRequest req){
		if (!file.isEmpty()) {
			ServletContext servletContext = req.getSession().getServletContext();
			String  path = servletContext.getRealPath("/images/Goods/");
			String fileName = file.getOriginalFilename();
			File data = new File(path,fileName);
			try {
					file.getFileItem().write(data);
			} catch (Exception e) {
				req.setAttribute("errorMsg","写入文件失败！");
				return "error";
			}
			String imageUrl = req.getContextPath()+"/images/Goods/"+fileName;
			Goods goods = new Goods();
			goods.setName(name);
			goods.setIntro(intro);
			goods.setPrice(price);
			goods.setUnitPrice(unitPrice);
			goods.setbPrice(bPrice);
			goods.setImageUrl(imageUrl);
			goodsService.add(goods);
			return null;
		}
		else {
			req.setAttribute("errorMsg","文件为空！");
			return "error";
		}
	}
	
	@RequestMapping(params="method=delete")
	public String delete(int Id){
		goodsService.delete(Id);
		return null;
	}
	
	@RequestMapping(params="method=update")
	public void update(int Id,String name,String intro,Double unitPrice,Double vipPrice,Integer Num,Integer inventory,String imageUrl){
		Goods goods = new Goods();
		goods.setId(Id);
		goods.setName(name);
		goods.setIntro(intro);
		goods.setUnitPrice(unitPrice);
		goods.setVipPrice(vipPrice);
		goods.setNum(Num);
		goods.setImageUrl(imageUrl);
		goods.setInventory(inventory);
		goodsService.update(goods);
	}
	
	@RequestMapping(params="method=product")
	public String Product(HttpServletRequest request,int Id){
		request.setAttribute("productId", Id);
		return "product";
	}
	
	@RequestMapping(params="method=getById")
	public @ResponseBody Goods getById(int Id){
		Goods goods = goodsService.getById(Id);
		return goods;
	}
	
	@RequestMapping(params="method=getAllProduct")
	public String getAllProduct(HttpServletResponse response) throws IOException{
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setContentType("text/html; charset=utf-8");
		List<Goods> list= new ArrayList<Goods>();
		list = goodsService.getAllGoods();
		String syh = "\"";
		String hkh = "{";
		String mh = ":";
		String Json="[";
		
		for (Goods goods : list) {
			Json+=hkh+syh+"name"+syh+mh+syh+goods.getName()+syh+","+syh+"Id"+syh+mh+syh+goods.getId()+syh+"},";
		}
		Json+="{\"name\":\"已经到底！\",\"value\":\"-1\"}]";
		response.getWriter().write(Json);
		response.getWriter().close();
		return null;
	}
	
	@RequestMapping(params="method=buy")
	public String buy(HttpServletRequest request,String name,String unitPrice,String num,String norm){
		request.setAttribute("unitPrice", unitPrice);
		request.setAttribute("name", name);
		request.setAttribute("num", num);
		request.setAttribute("norm", norm);
		return "pay";
	}
	
	
	public GoodsServiceImpl getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsServiceImpl goodsService) {
		this.goodsService = goodsService;
	}
	
}
