package com.yurucamp.car.model.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yurucamp.car.model.DiscountBean;
import com.yurucamp.car.model.dao.DiscountDao;

@Service
public class discountService {

	@Autowired
	DiscountDao discountDao;

	public List<DiscountBean> getList(DiscountBean discountBean) {
		return discountDao.getList(discountBean);
	}
	
}

