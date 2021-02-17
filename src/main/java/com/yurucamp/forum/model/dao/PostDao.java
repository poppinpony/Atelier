package com.yurucamp.forum.model.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.yurucamp.forum.model.PostBean;
import com.yurucamp.forum.model.ReplyBean;
import com.yurucamp.mallsystem.model.BrandBean;

@Repository
public class PostDao {

	
private SessionFactory sessionFactory;
	
	@Autowired
	public PostDao(@Qualifier("sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	public void  insertMainPost(PostBean postBean) throws SQLException {
		sessionFactory.getCurrentSession().saveOrUpdate(postBean);
	}
	
	public PostBean queryPostId(Integer poId){
		PostBean PostBean = sessionFactory.getCurrentSession().get(PostBean.class, poId);
		return PostBean;
	}
	
	
	public boolean deleteOne(PostBean postBean) {
		PostBean delete = sessionFactory.getCurrentSession()
				.get(PostBean.class, postBean.getPoId());
		if (delete != null) {
			sessionFactory.getCurrentSession()
			.delete(delete);
			return true;
		}
		return false;
	}
	
	
	public void  updatePost(PostBean postBean) throws SQLException {
		sessionFactory.getCurrentSession().saveOrUpdate(postBean);
	}


	public List<PostBean> queryPostIdList(Integer poId) {
		List<PostBean> postList = sessionFactory.getCurrentSession()
		.createQuery("from PostBean where poId=:poId", PostBean.class)
		.setParameter("poId", poId).getResultList();
		
		System.out.println(postList);
		return postList;
	}


	public List<PostBean> queryPostAll() {
		Query<PostBean> query = sessionFactory.getCurrentSession().createQuery("FROM PostBean", PostBean.class);
		List<PostBean> list = query.list();
		return list;
	}


	public void deleteOne(Integer poId) {
		PostBean postBean = sessionFactory.getCurrentSession().get(PostBean.class, poId);
		sessionFactory.getCurrentSession().delete(postBean);
	}


	public List<PostBean> queryMemberPost(String memberId) {
		List<PostBean> postList = sessionFactory.getCurrentSession()
				.createQuery("from PostBean where memberId=:memberId", PostBean.class)
				.setParameter("memberId", memberId).getResultList();
		return postList;
	}


	
	
	
	
//	public PostBean updatePost(PostBean po) {
//		PostBean  post = sessionFactory.getCurrentSession()
//				.get(PostBean.class,po.getPoId());
//		
//		post.setPoTitle(po.getPoTitle());
//		post.setPoUpDateTime(po.getPoUpDateTime());
//		post.setPoContent(po.getPoContent());
//		post.setPoUpDateTime(po.getPoUpDateTime());
//		post.setLikeNumber(po.getLikeNumber());
//		post.setReContentNumber(po.getReContentNumber());
//		post.setClickNumber(po.getClickNumber());
//		return post;
//	}
//	
	
	
	
	
}
