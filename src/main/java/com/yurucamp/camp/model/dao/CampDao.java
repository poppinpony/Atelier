package com.yurucamp.camp.model.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.yurucamp.camp.model.CampInfo;

@Repository
public class CampDao {

	private SessionFactory sessionFactory;

	public CampDao() {
	}

	@Autowired
	public CampDao(@Qualifier("sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public CampInfo saveOrUpdate(CampInfo campInfo) throws SQLException {
		sessionFactory.getCurrentSession().saveOrUpdate(campInfo);
		return campInfo;
	}

	public CampInfo queryCamp(Integer id) throws SQLException {
		CampInfo campInfo = sessionFactory.getCurrentSession().get(CampInfo.class, id);
		return campInfo;
	}

	public List<CampInfo> queryAllCamp() throws SQLException {
		List<CampInfo> list = sessionFactory.getCurrentSession().createQuery("FROM CampInfo", CampInfo.class).getResultList();
		return list;
	}

	public void deleteCamp(Integer id) throws SQLException {
		Session session = sessionFactory.getCurrentSession();
		CampInfo ci = new CampInfo();
		ci.setId(id);
		session.delete(ci);
	}

}
