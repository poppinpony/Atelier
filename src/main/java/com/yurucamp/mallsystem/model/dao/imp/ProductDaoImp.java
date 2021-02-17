package com.yurucamp.mallsystem.model.dao.imp;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.yurucamp.mallsystem.model.ItemStatus;
import com.yurucamp.mallsystem.model.ProductBean;
import com.yurucamp.mallsystem.model.dao.ProductDao;

@Repository
public class ProductDaoImp implements ProductDao {

	private SessionFactory sessionFactory;

	@Autowired
	public ProductDaoImp(@Qualifier(value = "sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;

	}

	@Override
	public ProductBean queryOne(Integer id) throws SQLException {
		ProductBean product = sessionFactory.getCurrentSession().get(ProductBean.class, id);
		return product;
	}


	@Override
	public void insert(ProductBean productBean) throws SQLException {
		sessionFactory.getCurrentSession().save(productBean);
	}

	@Override
	public void update(ProductBean productBean) throws SQLException {
		ProductBean bean = sessionFactory.getCurrentSession().get(ProductBean.class, productBean.getId());
		bean.setPrice(productBean.getPrice());
		bean.setStock(productBean.getStock());
		bean.setDescription(productBean.getDescription());
		bean.setUpdatetime(new Timestamp(System.currentTimeMillis()));	
		sessionFactory.getCurrentSession().update(bean);
	}

	@Override
	public void deleteOne(Integer id) throws SQLException {
		ProductBean productBean = sessionFactory.getCurrentSession().get(ProductBean.class, id);
		sessionFactory.getCurrentSession().delete(productBean);
	}

	@Override
	public List<ProductBean> queryAll() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("FROM ProductBean", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public Integer queryId(String status) throws SQLException {
		String hql = "from ItemStatus where name=:name";
		ItemStatus itemStatus= (ItemStatus) sessionFactory.getCurrentSession().createQuery(hql).setParameter("name", status).getSingleResult();
		Integer id = itemStatus.getId();
		return id ;			
	}
	
	@Override
	public ItemStatus queryOneStatus(Integer id) throws SQLException {
		ItemStatus itemStatus = sessionFactory.getCurrentSession().get(ItemStatus.class, id);
		return itemStatus;	
	}
	
	@Override
	public void changeStatusUp(ProductBean productBean) throws SQLException {
		ProductBean bean = sessionFactory.getCurrentSession().get(ProductBean.class, productBean.getId());
		bean.setStatusId(1);
		sessionFactory.getCurrentSession().update(productBean);
	}
	@Override
	public void changeStatusDown(ProductBean productBean) throws SQLException {
		ProductBean bean = sessionFactory.getCurrentSession().get(ProductBean.class, productBean.getId());
		bean.setStatusId(2);
		sessionFactory.getCurrentSession().update(productBean);
	}
	
	
	
	
	
	
	@Override
	public List<ProductBean> querypage() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean Order by id desc",ProductBean.class);
		query.setFirstResult(0);
		query.setMaxResults(5);
		List<ProductBean> results = query.list();
		return results;
	}

	@Override
	public Map<Integer, ProductBean> queryallon() throws SQLException {
		Map<Integer, ProductBean> map= new LinkedHashMap<>();
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1", ProductBean.class);
		List<ProductBean> list = query.list();
		for (ProductBean productBean : list) {
			map.put( productBean.getId(),productBean);
		}
		return map;
	}
	
	//首頁上架商品
	@Override
	public List<ProductBean> queryAllon() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	//首頁標籤分類
	@Override
	public List<ProductBean> queryNuit() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 and brandId=1", ProductBean.class);
		List<ProductBean> list = query.list(); 
		return list; 
	}
	
	@Override
	public List<ProductBean> queryRHINO() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 and brandId=2", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> queryLOGOS() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 and brandId=3", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	//首頁商品排序
	@Override
	public List<ProductBean> queryTimeNew() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 Order by createtime desc", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> queryTimeOld() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 Order by createtime", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> queryPriceHigher() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 Order by price desc", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> queryPirceLower() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 Order by price", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> queryPopularProduct() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 Order by webTraffic desc", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> queryUnpopularProduct() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 Order by webTraffic", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> queryCategoryTents() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 and category like '%帳篷裝備%'", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> queryCategorySleepingBags() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 and category like '%睡袋%'", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> queryCategoryStoves() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 and category like '%爐具%'", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> queryCategoryCooking() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 and category like '%炊具%'", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> queryCategoryFurniture() throws SQLException {
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery("from ProductBean where statusId=1 and category like '%桌椅傢具%'", ProductBean.class);
		List<ProductBean> list = query.list();
		return list;
	}
	
	@Override
	public List<ProductBean> querySearch(String name) throws SQLException { //statusId=1 and 
		String hql ="from ProductBean where statusId=1 and name like :name"
			+" or statusId=1 and category like :name";
		Query<ProductBean> query = sessionFactory.getCurrentSession().createQuery(hql,ProductBean.class)
				.setParameter("name", "%"+name+"%");
		List<ProductBean> list = query.list();
		return list;
	}
	
	
	
	
	
	
	
	
}
