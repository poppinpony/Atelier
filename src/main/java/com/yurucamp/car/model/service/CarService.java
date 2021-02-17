package com.yurucamp.car.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.yurucamp.car.model.CarBean;
import com.yurucamp.car.model.ReservationBean;
import com.yurucamp.car.model.dao.CarDao;
import com.yurucamp.member.model.MemberBean;

@Service
@Transactional
public class CarService {

	@Autowired
	CarDao carDao;
	@Autowired
	private JavaMailSender mailSender;

	public List<CarBean> getCarList(Map<String,Object> condList, int[] arrCarId) throws SQLException {
		return carDao.getCarList(condList, arrCarId);
	}

	public List<ReservationBean> getRsvList(Map<String,Object> condList) throws SQLException {
		return carDao.getRsvList(condList);
	}

	public void insert(ReservationBean rsvBean) throws SQLException {
		carDao.insert(rsvBean);
	}

	public List<ReservationBean> query(int memberId) throws SQLException {
		return carDao.getContractList(memberId);
	}

	public List<ReservationBean> querydetail(int id) throws SQLException {
		return carDao.getcontractDetailList(id);
	}

	public List<CarBean> querycar() throws SQLException {
		return carDao.getCarMenuList();
	}

	public List<CarBean> querycarbyprice() throws SQLException {
		return carDao.getCarMenuByPriceList();
	}

	//預約成功信件
	public void sendPlanSuccessEmail(ReservationBean rsvBean, MemberBean memberBean) {
		SimpleMailMessage message = new SimpleMailMessage();

		//收信人
//		message.setTo("ashley72045@gmail.com");
		message.setTo("ethos0505@gmail.com");
//		message.setTo(memberBean.getMail()); // 会員情報にまともなデータがある場合は使用

		//信件標題
		message.setSubject("YuruCamp 悠遊租車預約成功");

		//信件內文
		String content = "Dear" + memberBean.getName()
				+ "\n\n 感謝您選擇YURU CAMP露營車,我們已收到您的預約。\n\n"
//				+ "並期待與您的旅程。\n\n"
				+ ""
				+ "\n\n以下為您的預約明細"
				+ "\n\n您預約的出發時間：" + rsvBean.getDeptDate() +" "+ rsvBean.getDeptTime()
				+ "\n\n您預約的出發地點：" + rsvBean.getDept()
				+ "\n\n選購車型：" + rsvBean.getType()
				+ "\n\n數量：" + rsvBean.getCount()
				+ "\n\n加購裝備數量：" + rsvBean.getDevice()
				+ "\n\n總金額：" + rsvBean.getAmount()
				+ ""
				+ "\n\n提醒您取車時須備有效駕照,並攜帶身分證件喔(⋈◍＞◡＜◍)。✧♡";

		message.setText(content);

		//發出信件
		mailSender.send(message);

	}

}



