package com.yurucamp.mallsystem.model.service;

import java.sql.SQLException;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yurucamp.mallsystem.model.BrandBean;
import com.yurucamp.mallsystem.model.dao.BrandDao;
import com.yurucamp.mallsystem.model.service.BrandService;

@Service
@Transactional
public class BrandService  {

	@Autowired
	BrandDao brandDao;

	public void insert(BrandBean brandBean) throws SQLException {
		brandDao.insert(brandBean);

	}

	
	public void update(BrandBean brandBean) throws SQLException {
		brandDao.update(brandBean);

	}
	
	
	public List<BrandBean> queryAll() throws SQLException {
		return brandDao.queryAll();
	}

	
	public BrandBean queryOne(Integer id) throws SQLException {
		return brandDao.queryOne(id);
	}

	
	public List<BrandBean> querypage() throws SQLException {	    
		return  brandDao.querypage();
		
	}

	
	public void deleteOne(Integer id) throws SQLException {
		      brandDao.deleteOne(id);
		
	}

	
	public Integer queryId(String brandname) throws SQLException {
		
		return brandDao.queryId(brandname);
	}

}
