package com.gizii.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.gizii.dao.GoodsDAO;
import com.gizii.mapper.GoodsMapper;
import com.gizii.po.Goods;
import com.gizii.po.Pages;
import com.gizii.po.systemContext;

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
	public void delete(int Id) {
		sqlSessionTemplate.getMapper(GoodsMapper.class).delete(Id);

	}

	@Override
	public int getIdByName(String name) {
		return sqlSessionTemplate.getMapper(GoodsMapper.class).getIdByName(name);
	}

	@Override
	public Pages<Goods> searchByName(String name) {
		int pageOffset = systemContext.getPageOffset();
		int pageSize = systemContext.getPageSize();
		String order = systemContext.getOrder();
		String sort = systemContext.getSort();
		Pages<Goods> pages = new Pages<Goods>();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("pageOffset", pageOffset);
		params.put("pageSize", pageSize);
		params.put("name", name);
		params.put("sort", sort);
		params.put("order", order);
		List<Goods> Datas = sqlSessionTemplate.getMapper(GoodsMapper.class).searchByName(params);
		pages.setDatas(Datas);
		pages.setPageOffset(pageOffset);
		pages.setPageSize(pageSize);
		int totalRecor = sqlSessionTemplate.getMapper(GoodsMapper.class).search_Count(name);
		pages.setTotalRecor(totalRecor);
		return 	pages;
	}

	@Override
	public Goods getById(int Id) {
		return sqlSessionTemplate.getMapper(GoodsMapper.class).getById(Id);
	}
	
	@Override
	public String getImage(int Id){
		return sqlSessionTemplate.getMapper(GoodsMapper.class).getImage(Id);
	}

	public SqlSessionTemplate getSqlSessionTemplate() {
		return sqlSessionTemplate;
	}

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	
}
