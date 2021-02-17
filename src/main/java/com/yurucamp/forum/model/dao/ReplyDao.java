package com.yurucamp.forum.model.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.yurucamp.forum.model.PostBean;
import com.yurucamp.forum.model.ReplyBean;

@Repository
public class ReplyDao{
	
private SessionFactory sessionFactory;
	
	@Autowired
	public ReplyDao(@Qualifier("sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	public void  insertReply(ReplyBean replyBean) throws SQLException {
		sessionFactory.getCurrentSession().saveOrUpdate(replyBean);
	}

	
	public List<ReplyBean> queryPoIdAllReply(Integer poId){
		List<ReplyBean> replyBean = sessionFactory.getCurrentSession().createQuery("from ReplyBean where poId=:poId", ReplyBean.class).setParameter("poId", poId).getResultList();
		return replyBean;
	}
	
	
	public void deleteOne(Integer poId) {
//		ReplyBean delete = sessionFactory.getCurrentSession()
//				.get(ReplyBean.class, re.getReId());
		sessionFactory.getCurrentSession().createQuery("DELETE FROM ReplyBean WHERE NAME=:poId",ReplyBean.class).setParameter("poId", poId).executeUpdate();
		
	}
	
	public void  updateReply(ReplyBean replyBean) throws SQLException {
		sessionFactory.getCurrentSession().saveOrUpdate(replyBean);
	}


	public List<ReplyBean> queryMemberReply(String memberId) {
		List<ReplyBean> replyList = sessionFactory.getCurrentSession()
				.createQuery("from ReplyBean where memberId=:memberId", ReplyBean.class)
				.setParameter("memberId", memberId).getResultList();
		return replyList;
	}
	
	
	
}
