package com.yurucamp.forum.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.yurucamp.forum.model.ForumBean;

@Repository
public class ForumDao  {


private SessionFactory sessionFactory;

//	@Autowired
//	public ForumDao(@Qualifier("SessionFactory") SessionFactory sessionFactory) {
//		this.sessionFactory = sessionFactory;
//
//	}

//	@Override
//	public ForumBean insertForum(ForumBean forum) {
//		List<ForumBean> query = sessionFactory.getCurrentSession()
//				.createQuery("from Forum where forumName=?1 and forumFigure=?2", ForumBean.class)
//				.setParameter(1, forum.getForumName()).setParameter(2, forum.getForumImage()).list();
//
//		if (query.size() > 0) {
//			return null;
//		}
//		sessionFactory.getCurrentSession().save(forum);
//		return forum;
//
//	}

//	@Override
//	public ForumBean updateOneForum(ForumBean forum) {
//		ForumBean result = sessionFactory.getCurrentSession().get(ForumBean.class, forum.getForumId());
//
//		result.setForumName(forum.getForumName());
//		result.setForumImage(forum.getForumImage());
//		sessionFactory.getCurrentSession().update(result);
//		return result;
//	}

//	@Override
//	public boolean deleteOneForum(ForumBean forum) {
//		ForumBean delete = sessionFactory.getCurrentSession().get(ForumBean.class, forum.getForumId());
//
//		if (delete != null) {
//			sessionFactory.getCurrentSession().delete(delete);
//			return true;
//		}
//		return false;
//	}
//
//
//	public List<ForumBean> queryForumAll() {
//		Query<ForumBean> query = sessionFactory.getCurrentSession().createQuery("FROM ForumBean", ForumBean.class);
//		List<ForumBean> list = query.list();
//		return list;
//		
//	}

}
