package com.gizii.cld.dao.impl;

import java.util.List;


import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.gizii.cld.dao.GoodsDAO;
import com.gizii.cld.mapper.GoodsMapper;
import com.gizii.cld.po.Goods;


@Repository("goodsDao")
public class GoodsDAOImpl implements GoodsDAO {

	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	@Override
	public void add(Goods goods) {
		sqlSessionTemplate.getMapper(GoodsMapper.class).add(goods);

	}

	@Override
	public void update(Goods goods) {
		sqlSessionTemplate.getMapper(GoodsMapper.class).update(goods);

	}

	@Override
	public void delete(Integer Id) {
		sqlSessionTemplate.getMapper(GoodsMapper.class).delete(Id);

	}

	@Override
	public int getIdByName(String name) {
		return sqlSessionTemplate.getMapper(GoodsMapper.class).getIdByName(name);
	}

	@Override
	public List<Goods> getAllGoods() {
		return sqlSessionTemplate.getMapper(GoodsMapper.class).getAllGoods();
	}

	@Override
	public Goods getById(Integer Id) {
		return sqlSessionTemplate.getMapper(GoodsMapper.class).getById(Id);
	}
	
	@Override
	public String getImage(Integer Id){
		return sqlSessionTemplate.getMapper(GoodsMapper.class).getImage(Id);
	}

	public SqlSessionTemplate getSqlSessionTemplate() {
		return sqlSessionTemplate;
	}

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	
}
