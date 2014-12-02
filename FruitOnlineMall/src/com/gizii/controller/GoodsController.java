package com.gizii.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gizii.po.Goods;
import com.gizii.po.Pages;
import com.gizii.po.systemContext;
import com.gizii.service.impl.GoodsServiceImpl;

@Controller("goodsController")
@RequestMapping("/Goods.html")
public class GoodsController {
	
	@Resource
	private GoodsServiceImpl goodsService;
	
	@RequestMapping(params="method=add")
	public void add(int Category_ID,String name,String intro,double unitPrice,double vipPrice,int inventory,String imageUrl){
		Goods goods = new Goods();
		goods.getCategory().setId(Category_ID);
		goods.setName(name);
		goods.setIntro(intro);
		goods.setUnitPrice(unitPrice);
		goods.setVipPrice(vipPrice);
		goods.setImageUrl(imageUrl);
		goods.setInventory(inventory);
		goodsService.add(goods);
	}
	
	@RequestMapping(params="method=delete")
	public void delete(int Id){
		goodsService.delete(Id);
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
	
	@RequestMapping(params="method=show")
	public void searchByName(String name){
		systemContext.setPageOffset(0);
		systemContext.setPageSize(10);
		Pages<Goods> pages = goodsService.searchByName(name);
		//TODO 前端传值
	}

	@RequestMapping(params="method=show_next")
	public void nextPage(){
		//TODO 未写完
	}
	
	@RequestMapping(params="method=getImage")
	public @ResponseBody String getImage(@RequestBody int Id){
		return goodsService.getImage(Id);
	}
	
	
	public GoodsServiceImpl getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsServiceImpl goodsService) {
		this.goodsService = goodsService;
	}
	
}
