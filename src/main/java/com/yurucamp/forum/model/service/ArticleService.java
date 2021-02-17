package com.yurucamp.forum.model.service;

import java.sql.SQLException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.yurucamp.forum.model.PostBean;
import com.yurucamp.forum.model.ReplyBean;
import com.yurucamp.forum.model.dao.PostDao;
import com.yurucamp.forum.model.dao.ReplyDao;

@Service
@Transactional
public class ArticleService {
	
	@Autowired
	private PostDao postDao;
	
	@Autowired
	private ReplyDao replyDao;
	//新增文章
	public void insertPost(PostBean postBean) throws SQLException {
		postDao.insertMainPost(postBean);
	}
	
	//編輯文章
	public void updatePost(PostBean postBean) throws SQLException {
		postDao.updatePost(postBean);
	}

	//新增回覆
	public void insertReply(ReplyBean replyBean) throws SQLException {
		replyDao.insertReply(replyBean);
	}
	//查詢單一文章
	public  PostBean queryPostId(Integer poId) throws SQLException {
		PostBean po = postDao.queryPostId(poId);
		return po;
		}
	//查詢同一ID下全部文章
	public List<PostBean> queryPostIdList(Integer poId)throws SQLException {
		List<PostBean> po = postDao.queryPostIdList(poId);
		return po;
	}
	//查詢同一ID下所有回覆(文章read用)
	public  List<ReplyBean> queryPoIdAllReply(Integer poId) throws SQLException {
		List<ReplyBean> re = replyDao.queryPoIdAllReply(poId);
		return re;
	}
	//查詢全部PO文(文章列表)
	public  List<PostBean> queryPostAll() throws SQLException {
			List<PostBean> po = postDao.queryPostAll();
			return po;
	}

	//刪除特定poid文章
	public void deleteOne(Integer poId)throws SQLException {
		postDao.deleteOne(poId);
		
	}



	public List<PostBean> queryMemberPost(String memberId) {
		List<PostBean> po = postDao.queryMemberPost(memberId);
		return po;
	}

	public List<ReplyBean> queryMemberReply(String memberId) {
		List<ReplyBean> re = replyDao.queryMemberReply(memberId);
		return re;
	}

	
	
	

	
	

	


	



	
	
}
