package com.yurucamp.backstage.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yurucamp.backstage.dao.BackstageDao;
import com.yurucamp.backstage.model.CalendarBean;
import com.yurucamp.backstage.model.Test;
import com.yurucamp.mallsystem.model.BrandBean;
import com.yurucamp.member.model.MemberBean;

@Repository
public class BackstageDaoimpl implements BackstageDao{

	@Autowired
	SessionFactory factory;
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Test> getAllProducts() {
		String hql = "FROM Test";
		Session session = null;
		List<Test> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<MemberBean> getMember(String Account) throws SQLException {
		String hql = "FROM MemberBean m WHERE m.memberId = :mid ";
		Session session = null;
		List<MemberBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("mid", Account)
									   .getResultList();
		return list;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<CalendarBean> getCalendarQuery(String attribute) {
		String hql = "FROM CalendarBean m WHERE m.memberId = :mid ";
		Session session = null;
		List<CalendarBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("mid", attribute)
									   .getResultList();
		return list;
	}

	@Override
	public void CalendarInsert(String memberId, String start, String end, String title) {
		CalendarBean calendarBean = new CalendarBean();
		calendarBean.setMemberId(memberId);
		calendarBean.setTitle(title);
		calendarBean.setStart(start);
		calendarBean.setEnd(end);
		factory.getCurrentSession().save(calendarBean);
	}

	@Override
	public void CalendarDelete(Integer id) {
		CalendarBean calendarBean = factory.getCurrentSession().get(CalendarBean.class, id);
		factory.getCurrentSession().delete(calendarBean);
	}

	@Override
	public void CalendarUpdate(Integer id,String start, String end, String title) {
		CalendarBean calendarBean = factory.getCurrentSession().get(CalendarBean.class, id);
		if(title != null) {
			calendarBean.setTitle(title);	
		}else {
			calendarBean.setStart(start);	
			calendarBean.setEnd(end);
		}
		factory.getCurrentSession().update(calendarBean);
	}
	
	
}
