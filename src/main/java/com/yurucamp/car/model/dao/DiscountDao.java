package com.yurucamp.car.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yurucamp.car.model.DiscountBean;

@Repository
public class DiscountDao {
	@Autowired
	SessionFactory factory;

	public List<DiscountBean> getList(DiscountBean discountBean) {
//		String sql = "From DiscountBean";
		String sql = "From DiscountBean WHERE couponNumber = '" + discountBean.getCouponNumber() + "'";
		Session session = null;
		// List<Map<String,Object>> planList = new ArrayList<Map<String,Object>>();
		List<DiscountBean> planList = new ArrayList<>();
		session = factory.getCurrentSession();
		planList = session.createQuery(sql, DiscountBean.class).getResultList();
		
		return planList;
	}

}

