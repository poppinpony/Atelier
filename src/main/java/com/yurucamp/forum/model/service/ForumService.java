package com.yurucamp.forum.model.service;

import java.sql.SQLException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yurucamp.forum.model.ForumBean;
import com.yurucamp.forum.model.PostBean;
import com.yurucamp.forum.model.dao.ForumDao;


@Service
@Transactional
public class ForumService {

//	@Autowired
//	private ForumDao forumDao;
//	
//	
//	//查詢論壇表格
//		public  List<ForumBean> queryForumAll() throws SQLException {
//			List<ForumBean> fo = forumDao.queryForumAll();
//			return fo;
//			}
	
}
