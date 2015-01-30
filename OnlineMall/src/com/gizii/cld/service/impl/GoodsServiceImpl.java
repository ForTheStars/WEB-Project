package com.gizii.cld.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gizii.cld.dao.impl.GoodsDAOImpl;
import com.gizii.cld.po.Goods;
import com.gizii.cld.service.GoodsService;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

	@Resource
	private GoodsDAOImpl goodsDao;
	
	@Override
	public void add(Goods goods) {
		goodsDao.add(goods);

	}

	@Override
	public void delete(Integer Id) {
		goodsDao.delete(Id);

	}

	@Override
	public Goods getById(Integer Id) {
		return goodsDao.getById(Id);
	}

	@Override
	public int getIdByName(String name) {
		return goodsDao.getIdByName(name);
	}

	@Override
	public List<Goods> getAllGoods() {
		return goodsDao.getAllGoods();
	}

	@Override
	public void update(Goods goods) {
		goodsDao.update(goods);

	}
	
	@Override
	public String getImage(Integer Id){
		return goodsDao.getImage(Id);
	}

	public GoodsDAOImpl getGoodsDao() {
		return goodsDao;
	}

	public void setGoodsDao(GoodsDAOImpl goodsDao) {
		this.goodsDao = goodsDao;
	}

	
}
