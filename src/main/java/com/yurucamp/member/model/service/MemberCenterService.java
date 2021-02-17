package com.yurucamp.member.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.yurucamp.member.model.MemberBean;
import com.yurucamp.member.model.dao.MemberCenterDao;

@Service
@Transactional
public class MemberCenterService {

	@Autowired
	private JavaMailSender mailSender;
	 
	@Autowired
	private MemberCenterDao memberCenterDao;

	public MemberBean queryMem(String memberId) throws SQLException {
		System.out.println("ServicememberId="+memberId);
		return memberCenterDao.queryMem(memberId); 
	}
	
	public String add(MemberBean mBean) throws SQLException {
//		System.out.println("ServicememberId="+memberId);
		String mes=memberCenterDao.addMem(mBean);
		System.out.println(mBean);
		return mes;
	}
	
	public List<MemberBean> querySearch(String name) throws SQLException { 
		return memberCenterDao.querySearch(name);
	}
	//發送驗證碼確認信件
	public Integer sendRE(String mail,String name) throws SQLException {
		SimpleMailMessage message = new SimpleMailMessage();
		//收信人
		message.setTo(mail);
		
		//信件標題
		message.setSubject("YuruCamp會員 驗證信");
		
		//信件內文
		Integer num=memberCenterDao.sendRm();
		String content = "Dear " 
				+ name
				+ ", \n\n您的驗證碼為：\n\n" 
				+ num
				+ "\n\n請輸入驗證碼以完成註冊 .\n\n" ;
		message.setText(content);		
		//發出信件
		mailSender.send(message);
		return num;
	}
	
	//更新會員中心
	public String update(MemberBean mbean) throws SQLException {
		System.out.println("進到Service");
		String r=memberCenterDao.updatem(mbean); 
		System.out.println("Service r="+r);
		return  r;
		
	}
	
	//綠界付款成功，更改Membean.paid為1
	public void mbPaid(MemberBean memberBean) throws SQLException {
		System.out.println("進到Service");
		memberCenterDao.mbPaidUpdate(memberBean); 		
	}
	
	//忘記密碼
	public boolean forget(String memberId,String name) throws SQLException {

		System.out.println("進到Service");
		MemberBean r=memberCenterDao.forgetReturnDb(memberId,name); 
		System.out.println("回到Service");
		System.out.println("oh ya");
		System.out.println("r"+r);
		System.out.println("name="+name+"ok");
				
		if (r==null || !r.getName().equals(name) ) {			
		return false;
		};
		
		System.out.println("oh ya 2");
		SimpleMailMessage message = new SimpleMailMessage();
		//收信人
		message.setTo(r.getMail());
		
		//信件標題
		message.setSubject("YuruCamp會員 忘記密碼");
		
		//信件內文

		String content = "Dear " 
				+ name
				+ ", \n\n您的密碼為：\n\n" 
				+ r.getPassword()
				+ "\n\n請以此密碼登入。\n\n" ;
		message.setText(content);		
		//發出信件
		mailSender.send(message);
		
		return true;	
	
	}

}
