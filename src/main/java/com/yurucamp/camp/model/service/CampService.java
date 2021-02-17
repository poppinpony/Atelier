package com.yurucamp.camp.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yurucamp.camp.model.CampInfo;
import com.yurucamp.camp.model.dao.CampDao;

@Service
@Transactional
public class CampService {

	@Autowired
	private CampDao campDao;
	@Autowired
	private JavaMailSender mailSender;

	public CampInfo saveOrUpdate(CampInfo campInfo) throws SQLException {
		return campDao.saveOrUpdate(campInfo);
	}

	public CampInfo queryCamp(Integer id) throws SQLException {
		return campDao.queryCamp(id);
	}

	public List<CampInfo> queryAllCamp() throws SQLException {
		return campDao.queryAllCamp();
	}

	public void deleteCamp(Integer id) throws SQLException {
		campDao.deleteCamp(id);
	}

	public void sendRegistEmail() {
		SimpleMailMessage message = new SimpleMailMessage();
//		message.setTo("ashley72045@gmail.com");
		//收信人
		message.setTo("ethos0505@gmail.com");
		
		//信件標題
		message.setSubject("YuruCamp會員 驗證信");
		
		//信件內文
		String authURL ="google.com";
		String content = "Dear " 
				+ "PP"
				+ ", \n\n您的驗證碼為：\n\n" 
				+ "9527"
				+ "\n\n請輸入驗證碼進行確認 完成註冊 .\n\n" 
				+ authURL;
		message.setText(content);
		
		//發出信件
		mailSender.send(message);
	}

}
