package com.yurucamp.mallsystem.model.dao.imp;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.yurucamp.mallsystem.model.OrderBean;
import com.yurucamp.mallsystem.model.dao.OrderBeanDao;
@Repository
public class OrderBeanDaoImp implements OrderBeanDao{

	private SessionFactory sessionFactory;

	@Autowired
	public OrderBeanDaoImp(@Qualifier(value = "sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;

	}
	
	@Override
	public OrderBean insert(OrderBean orderBean) {
	    sessionFactory.getCurrentSession().save(orderBean);
	    return orderBean;
	}

	@Override
	public void update(OrderBean orderBean) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer id) {
		OrderBean orderBean = sessionFactory.getCurrentSession().get(OrderBean.class, id);
		sessionFactory.getCurrentSession().delete(orderBean);
	}

	@Override
	public OrderBean queryone(Integer id) {
		OrderBean orderBean = sessionFactory.getCurrentSession().get(OrderBean.class, id);
		return orderBean;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderBean> queryByMemberId(Integer id) {
		

			Query<OrderBean> query = sessionFactory.getCurrentSession().createQuery("From OrderBean  where memberId = :memberId", OrderBean.class);
			query.setParameter("memberId", id);
			List<OrderBean> list = query.getResultList();
	
	
		return list;
	}
}
