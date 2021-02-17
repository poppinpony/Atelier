package com.yurucamp.car.model.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import com.yurucamp.car.model.CarBean;
import com.yurucamp.car.model.ReservationBean;

public interface CarDao {
	public List<CarBean> getCarList(Map<String,Object> condList, int[] arrCarId) throws SQLException;

	public void insert(ReservationBean rsvBean) throws SQLException;

	public List<ReservationBean> getRsvList(Map<String,Object> condList) throws SQLException;
	
	public List<ReservationBean> getContractList(int memberId) throws SQLException;
	
	public List<ReservationBean> getcontractDetailList(int id) throws SQLException;
	
	public List<CarBean> getCarMenuList() throws SQLException;
	
	public List<CarBean> getCarMenuByPriceList() throws SQLException;
}