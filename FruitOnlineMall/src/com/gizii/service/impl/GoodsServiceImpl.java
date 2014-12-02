package com.gizii.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gizii.dao.impl.GoodsDAOImpl;
import com.gizii.po.Goods;
import com.gizii.po.Pages;
import com.gizii.service.GoodsService;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

	@Resource
	private GoodsDAOImpl goodsDao;
	
	@Override
	public void add(Goods goods) {
		goodsDao.add(goods);

	}

	@Override
	public void delete(int Id) {
		goodsDao.delete(Id);

	}

	@Override
	public Goods getById(int Id) {
		return goodsDao.getById(Id);
	}

	@Override
	public int getIdByName(String name) {
		return goodsDao.getIdByName(name);
	}

	@Override
	public Pages<Goods> searchByName(String name) {
		return goodsDao.searchByName(name);
	}

	@Override
	public void update(Goods goods) {
		goodsDao.update(goods);

	}
	
	@Override
	public String getImage(int Id){
		return goodsDao.getImage(Id);
	}

	public GoodsDAOImpl getGoodsDao() {
		return goodsDao;
	}

	public void setGoodsDao(GoodsDAOImpl goodsDao) {
		this.goodsDao = goodsDao;
	}

	
}
