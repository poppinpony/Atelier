package com.yurucamp.mallsystem.model.dao;

import java.sql.SQLException;
import java.util.List;

import com.yurucamp.mallsystem.model.OrderBean;
import com.yurucamp.mallsystem.model.OrderDetailBean;

public interface OrderDetailBeanDao {

	public void insert(OrderDetailBean orderDetailBean)throws SQLException;
	
	public void update(OrderDetailBean orderDetailBean)throws SQLException;
	
	public void delete(Integer id)throws SQLException;
	
	public OrderBean getOrder(Integer id)throws SQLException;
	
	public List<OrderDetailBean> queryByOrderId(Integer orderId)throws SQLException;
	
	public List<OrderDetailBean> queryByProductId(Integer productId)throws SQLException;
	
}
