package com.gizii.cld.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.gizii.cld.dao.OrdersDAO;
import com.gizii.cld.mapper.OrdersMapper;
import com.gizii.cld.po.Orders;

@Repository("ordersDao")
public class OrdersDAOImpl implements OrdersDAO {

	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void add(Orders orders) {
		sqlSessionTemplate.getMapper(OrdersMapper.class).add(orders);

	}

	@Override
	public void delete(int Id) {
		sqlSessionTemplate.getMapper(OrdersMapper.class).delete(Id);

	}
	
	@Override
	public void update(Orders orders){
		sqlSessionTemplate.getMapper(OrdersMapper.class).update(orders);
	}
	
	@Override
	public Orders getById(int Id) {
		return sqlSessionTemplate.getMapper(OrdersMapper.class).getById(Id);
	}

	@Override
	public List<Orders> getByDay(int day) {
		return sqlSessionTemplate.getMapper(OrdersMapper.class).getByDay(day);
	}

	@Override
	public void clearByDay(int day) {
		sqlSessionTemplate.getMapper(OrdersMapper.class).clearByDay(day);
	}

	public SqlSessionTemplate getSqlSessionTemplate() {
		return sqlSessionTemplate;
	}

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	
}
