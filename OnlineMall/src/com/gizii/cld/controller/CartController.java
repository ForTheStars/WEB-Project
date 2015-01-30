package com.gizii.cld.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gizii.cld.po.Goods;
import com.gizii.cld.service.impl.GoodsServiceImpl;


@Controller
@RequestMapping("/Cart.html")     
public class CartController {
	@Resource
	private GoodsServiceImpl goodsService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(params="method=addToCart")
	public @ResponseBody String addToCart(@RequestBody HashMap<String, String> map,HttpServletRequest request){
		HttpSession reqSession = request.getSession();
		Map<String, Goods> list;
		if(reqSession.getAttribute("productNum")==null){
			reqSession.setAttribute("productNum", 1);
		}
		else {
			int num = (int)reqSession.getAttribute("productNum");
			reqSession.setAttribute("productNum", ++num);
		}
		Integer Id=Integer.parseInt(map.get("id"));
		Integer num = Integer.parseInt(map.get("num"));
		Integer norm = Integer.parseInt(map.get("norm"));
		Goods goods = goodsService.getById(Id);
		goods.setUuid(UUID.randomUUID());
		goods.setNum(num);
		goods.setNorm(norm);
		if(reqSession.getAttribute("productList")==null)
			list = new HashMap<String,Goods>();
		else
			list = (HashMap<String, Goods>)reqSession.getAttribute("productList");
			
		list.put(goods.getUuid().toString(), goods);
		reqSession.setAttribute("productList", list);
		return null ;
	}
	
	@RequestMapping(params="method=toPay")
	public String toPay(HttpServletRequest request){
		return "pay";
	}
	
	@RequestMapping(params="method=toCart")
	public String toCart(HttpServletRequest request){
		return "cart";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(params="method=delete")
	public @ResponseBody String delete(@RequestBody Goods goods,HttpServletRequest request){
		Map<String, Goods> list = (HashMap<String, Goods>)request.getSession().getAttribute("productList");
		int num = (int)request.getSession().getAttribute("productNum");
		request.getSession().setAttribute("productNum", --num);
		UUID uuid = goods.getUuid();
		Goods product = list.get(uuid);
		if(product.isCombo()){
			UUID ComboUuid = product.getComboUuid();
			Map<String, Integer> map = (HashMap<String, Integer>)request.getSession().getAttribute("privilege");
			Integer privilege = map.get(ComboUuid.toString());
			if(privilege!=null){
				map.remove(ComboUuid);
				request.getSession().setAttribute("privilege", map);
			}
		}
		list.remove(uuid.toString());
		request.getSession().setAttribute("productList", list);
		return null;
	}
	
	@RequestMapping(params="method=clear")
	public @ResponseBody String clear(HttpSession session){
		Map<String, Goods> list = new HashMap<String, Goods>();
		session.setAttribute("productList", list);
		session.setAttribute("productNum", 0);
		return null;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(params="method=addCombo")
	public @ResponseBody String  addCombo(HttpServletRequest request,ArrayList<HashMap<String, Integer>> Idlist,Integer privilege){
		HttpSession reqSession = request.getSession();
		HashMap<String,Goods> list;
		if(reqSession.getAttribute("productList")==null)
			list = new HashMap<String,Goods>();
		else
			list = (HashMap<String, Goods>)reqSession.getAttribute("productList");
		UUID comboUuid = UUID.randomUUID();
		for (HashMap<String, Integer> hashMap : Idlist) {
			Goods goods = goodsService.getById(hashMap.get("id"));
			goods.setNum(hashMap.get("num"));
			goods.setNorm(hashMap.get("norm"));
			goods.setUuid(UUID.randomUUID());
			goods.setCombo(true);
			goods.setComboUuid(comboUuid);
			list.put(goods.getUuid().toString(), goods);
		}
		reqSession.setAttribute("productList", list);
		if(reqSession.getAttribute("privilege")==null){
			HashMap<String,Integer> Privilege = new HashMap<String,Integer>();
			Privilege.put(comboUuid.toString(), privilege);
			reqSession.setAttribute("privilege", Privilege);
		}
		else{
			HashMap<String, Integer> p = (HashMap<String, Integer>)reqSession.getAttribute("privilege");
			p.put(comboUuid.toString(), privilege);
			reqSession.setAttribute("privilege", p);
		}
		return null;
	}

}
