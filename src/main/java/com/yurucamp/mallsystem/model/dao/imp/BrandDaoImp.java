package com.yurucamp.mallsystem.model.dao.imp;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.yurucamp.mallsystem.model.BrandBean;
import com.yurucamp.mallsystem.model.dao.BrandDao;

@Repository
public class BrandDaoImp implements BrandDao {
	
	
	private SessionFactory sessionFactory;

	@Autowired
	public BrandDaoImp(@Qualifier(value = "sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void insert(BrandBean brandBean) throws SQLException {
		sessionFactory.getCurrentSession().save(brandBean);
	}

	@Override
	public void update(BrandBean brandBean) throws SQLException {
		BrandBean bean = sessionFactory.getCurrentSession().get(BrandBean.class, brandBean.getId());
		bean.setName(brandBean.getName());
		bean.setUpdatetime(new Timestamp(System.currentTimeMillis()));	
		sessionFactory.getCurrentSession().update(bean);
	}

	@Override
	public void deleteOne(Integer id) throws SQLException {
		BrandBean brandBean = sessionFactory.getCurrentSession().get(BrandBean.class, id);
		sessionFactory.getCurrentSession().delete(brandBean);
	}

	@Override
	public List<BrandBean> queryAll() throws SQLException {
		Query<BrandBean> query = sessionFactory.getCurrentSession().createQuery("FROM BrandBean", BrandBean.class);
		List<BrandBean> list = query.list();
		return list;
	}

	@Override
	public BrandBean queryOne(Integer id) throws SQLException {
		BrandBean brandBean = sessionFactory.getCurrentSession().get(BrandBean.class, id);
		return brandBean;
	}

	@Override
	public List<BrandBean> querypage() throws SQLException {
		String hql = "FROM BrandBean Order by id desc";
		Query<BrandBean> query = sessionFactory.getCurrentSession().createQuery(hql,BrandBean.class);
		query.setFirstResult(0);
		query.setMaxResults(5);
		List<BrandBean> results = query.list();
		return results;
	}
	
	@Override
	public Integer queryId(String brandname) throws SQLException {
		String hql = "from BrandBean where name=:name";
		System.out.println(hql);
		BrandBean brandBean= (BrandBean) sessionFactory.getCurrentSession().createQuery(hql).setParameter("name", brandname).getSingleResult();
		Integer id = brandBean.getId();
		return id ;			
	}


	
}
