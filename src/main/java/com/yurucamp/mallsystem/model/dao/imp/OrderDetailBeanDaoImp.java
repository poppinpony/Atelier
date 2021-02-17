package com.yurucamp.mallsystem.model.dao.imp;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.yurucamp.mallsystem.model.BrandBean;
import com.yurucamp.mallsystem.model.OrderBean;
import com.yurucamp.mallsystem.model.OrderDetailBean;
import com.yurucamp.mallsystem.model.ProductBean;
import com.yurucamp.mallsystem.model.dao.OrderDetailBeanDao;

@Repository
public class OrderDetailBeanDaoImp implements OrderDetailBeanDao{

	private SessionFactory sessionFactory;

	@Autowired
	public OrderDetailBeanDaoImp(@Qualifier(value = "sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;

	}
	
	@Override
	public void insert(OrderDetailBean orderDetailBean) throws SQLException {
		sessionFactory.getCurrentSession().save(orderDetailBean);
		
	}

	@Override
	public void update(OrderDetailBean orderDetailBean) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer id) throws SQLException {
		OrderBean orderBean = sessionFactory.getCurrentSession().get(OrderBean.class, id);
		sessionFactory.getCurrentSession().delete(orderBean);
		
	}

	@Override
	public OrderBean getOrder(Integer id) throws SQLException {
		OrderBean OrderBean = sessionFactory.getCurrentSession().get(OrderBean.class, id);
		return OrderBean;
	}

	@Override
	public List<OrderDetailBean> queryByOrderId(Integer orderId) throws SQLException {
		
		@SuppressWarnings("unchecked")
		List<OrderDetailBean> list = sessionFactory.getCurrentSession().createQuery("From OrderDetailBean where orderId =:orderId").setParameter("orderId", orderId).getResultList();
		
		return list;
		
//		String hql = "from BrandBean where name=:name";
//		System.out.println(hql);
//		BrandBean brandBean= (BrandBean) sessionFactory.getCurrentSession().createQuery(hql).setParameter("name", brandname).getSingleResult();
//		Integer id = brandBean.getId();
//		return id ;	
	}

	@Override
	public List<OrderDetailBean> queryByProductId(Integer productId) throws SQLException {

			Query<OrderDetailBean> query = sessionFactory.getCurrentSession().createQuery("From OrderDetailBean a where a.productID =:productID", OrderDetailBean.class);
			query.setParameter("productId", productId);
			List<OrderDetailBean> list = query.list();
			return list;
			
			
	}
}

