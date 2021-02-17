package com.yurucamp.mallsystem.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yurucamp.mallsystem.model.OrderBean;
import com.yurucamp.mallsystem.model.OrderDetailBean;
import com.yurucamp.mallsystem.model.dao.OrderDetailBeanDao;

@Service
@Transactional
public class OrderDetailBeanService {

	@Autowired
	OrderDetailBeanDao orderDetailBeanDao;
	
	
	public void insert(OrderDetailBean orderDetailBean)throws SQLException{
		orderDetailBeanDao.insert(orderDetailBean);
	}
		public void update(OrderDetailBean orderDetailBean)throws SQLException{
			orderDetailBeanDao.update(orderDetailBean);
	}
	public void delete(Integer id)throws SQLException{
		orderDetailBeanDao.delete(id);
		
	}
	public OrderBean getOrder(Integer id)throws SQLException{
		return orderDetailBeanDao.getOrder(id);
		
	}
	public List<OrderDetailBean> queryByOrderId(Integer orderId)throws SQLException{
		return orderDetailBeanDao.queryByOrderId(orderId);
		
	}
	public List<OrderDetailBean> queryByProductId(Integer productId)throws SQLException{
		return orderDetailBeanDao.queryByProductId(productId);
		
	}
	
}
