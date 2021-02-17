package com.yurucamp.mallsystem.model.dao;

import java.util.List;

import com.yurucamp.mallsystem.model.OrderBean;

public interface OrderBeanDao {
	
	public OrderBean insert(OrderBean orderBean);
	
	public void update(OrderBean orderBean);
	
	public void delete(Integer id);
	
	public OrderBean queryone(Integer id);
	
	public List<OrderBean> queryByMemberId(Integer id);
}
