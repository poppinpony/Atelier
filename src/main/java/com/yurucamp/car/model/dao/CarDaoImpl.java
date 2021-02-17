package com.yurucamp.car.model.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yurucamp.car.model.CarBean;
import com.yurucamp.car.model.ReservationBean;

@Repository
public class CarDaoImpl implements CarDao {
	@Autowired
	private SessionFactory factory;

	@Override
	public List<CarBean> getCarList(Map<String,Object> condList, int[] arrCarId) {
		String sql = "FROM CarBean cb WHERE"
				+ " cb.location = '" + (String)condList.get("dept")
				+ "' AND cb.status = 0";

		// 予約中のＩＤを除く（上限：１０００件）
		if (arrCarId.length > 0) {
			sql += " AND cb.id NOT IN ("
			+ Arrays.toString(arrCarId).replace("[", "").replace("]", "")
			+ ")";
		}

		Session session = null;
		List<CarBean> planList = new ArrayList<>();
		session = factory.getCurrentSession();
		planList = session.createQuery(sql, CarBean.class).getResultList();
		return planList;
	}

	@Override
	public void insert(ReservationBean rsvBean) throws SQLException {
		System.out.println("amout:" + rsvBean.getAmount());
		System.out.println("carid:" + rsvBean.getCarid());
		System.out.println("count:" + rsvBean.getCount());
		System.out.println("dept:" + rsvBean.getDept());
		System.out.println("deptDate:" + rsvBean.getDeptDate());
		System.out.println("deptTime:" + rsvBean.getDeptTime());
		System.out.println("device:" + rsvBean.getDevice());
		System.out.println("orderDate:" + rsvBean.getOrderDate());
		System.out.println("ret:" + rsvBean.getRet());
		System.out.println("returnDate:" + rsvBean.getReturnDate());
		System.out.println("returnTime:" + rsvBean.getReturnTime());
		System.out.println("type :" + rsvBean.getType());
		System.out.println("memberId:" + rsvBean.getMemberId());

		factory.getCurrentSession().save(rsvBean);
	}

	@Override
	public List<ReservationBean> getRsvList(Map<String,Object> condList) {
		// 検索条件の出発時刻
		String condDeptDateTime = "CONVERT(datetime, '" + (String)condList.get("deptDate") + " " +
									(String)condList.get("deptTime") + "')";
		// 検索条件の返却時刻
		String condReturnDateTime = "CONVERT(datetime, '" + (String)condList.get("returnDate") + " " +
									(String)condList.get("returnTime") + "')";
		// ＤＢの出発時刻
		String tblDeptDateTime = "CONVERT(datetime, CONVERT(VARCHAR, rb.deptDate)+ ' ' + rb.deptTime)";
		// ＤＢの返却時刻
		String tblReturnDateTime = " CONVERT(datetime, CONVERT(VARCHAR, rb.returnDate)+ ' ' + rb.returnTime)";

		String sql = "FROM ReservationBean rb WHERE"
				+ " (" + tblReturnDateTime + " >= " + condDeptDateTime
				+ " AND " + tblDeptDateTime + " <= " + condDeptDateTime + ") "
				+ " OR (" + tblReturnDateTime + " >= " + condReturnDateTime
				+ " AND " + tblDeptDateTime + " <= " + condReturnDateTime + ") "
				+ " OR (" + tblReturnDateTime + " <= " + condReturnDateTime
				+ " AND " + tblDeptDateTime + " >= " + condDeptDateTime + ")";

		Session session = null;
		List<ReservationBean> planList = new ArrayList<>();
		session = factory.getCurrentSession();
		planList = session.createQuery(sql, ReservationBean.class).getResultList();

		return planList;
	}

	@Override
	public List<ReservationBean> getContractList(int memberId) {
		String sql = "FROM ReservationBean WHERE memberId = '" + memberId + "'";

		Session session = null;
		List<ReservationBean> contractList = new ArrayList<>();
		session = factory.getCurrentSession();
		contractList = session.createQuery(sql, ReservationBean.class).getResultList();

		return contractList;
	}

	@Override
	public List<ReservationBean> getcontractDetailList(int id) {
		String sql = "FROM ReservationBean WHERE id = '" + id + "'";

		Session session = null;
		List<ReservationBean> contractDetailList = new ArrayList<>();
		session = factory.getCurrentSession();
		contractDetailList = session.createQuery(sql, ReservationBean.class).getResultList();

		return contractDetailList;
	}
	
	@Override
	public List<CarBean> getCarMenuList() {
		String sql = "FROM CarBean WHERE location = '台北'";

		Session session = null;
		List<CarBean> CarMenuList = new ArrayList<>();
		session = factory.getCurrentSession();
		CarMenuList = session.createQuery(sql, CarBean.class).getResultList();

		return CarMenuList;
	}
	
	@Override
	public List<CarBean> getCarMenuByPriceList() {
		String sql = "FROM CarBean WHERE location = '台北' ORDER BY price ASC";

		Session session = null;
		List<CarBean> CarMenuList = new ArrayList<>();
		session = factory.getCurrentSession();
		CarMenuList = session.createQuery(sql, CarBean.class).getResultList();

		return CarMenuList;
	}

}
