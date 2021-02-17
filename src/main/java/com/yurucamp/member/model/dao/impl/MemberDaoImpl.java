package com.yurucamp.member.model.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yurucamp.member.model.MemberBean;
import com.yurucamp.member.model.dao.MemberDao;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	SessionFactory factory;
	
//	@Override
//	public MemberBean queryUserId(String Account,String Password) throws SQLException {
//		String hql = "FROM MemberBean m WHERE m.memberId = :mid and password = :paw";
//		Session session = null;
////		List<MemberBean> list = new ArrayList<>();
//		session = factory.getCurrentSession();
//		MemberBean memberBean = (MemberBean) session.createQuery(hql).setParameter("mid", Account)
//									   .setParameter("paw", Password).getSingleResult();
//		return memberBean;
//	}
//	@Override
//	public MemberBean queryUserId(String Account,String Password) throws SQLException {
//		String hql = "FROM MemberBean m WHERE m.memberId = :mid and password = :paw";
//		Session session = null;
////		List<MemberBean> list = new ArrayList<>();
//		session = factory.getCurrentSession();
//		MemberBean memberBean = (MemberBean) session.createQuery(hql).setParameter("mid", Account)
//				.setParameter("paw", Password).getSingleResult();
//		return memberBean;
//	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MemberBean> queryaUserId(String Account, String Password) throws SQLException {
		String hql = "FROM MemberBean m WHERE m.memberId = :mid and password = :paw";
		Session session = null;
//		List<MemberBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
	    List<MemberBean> list = session.createQuery(hql).setParameter("mid", Account)
									   .setParameter("paw", Password).getResultList();
		return list;
	}
	
}
