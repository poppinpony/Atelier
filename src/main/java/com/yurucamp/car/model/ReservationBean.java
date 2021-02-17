package com.yurucamp.car.model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "Reservation")
public class ReservationBean implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;

//	@Transient
	@Column(name = "memberId")
	private Integer memberId;

//	@Transient
	@Column(name = "carid")
	private Integer carid;

//	@Transient
	@Column(name = "couponId")
	private Integer couponId;

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "orderDate")
	private Timestamp orderDate;

	@Column(name = "dept")
	private String dept;

	@Column(name = "ret")
	private String ret;

	@Column(name = "deptDate")
	private Date deptDate;

	@Column(name = "deptTime")
	private String deptTime;

	@Column(name = "returnDate")
	private Date returnDate;

	@Column(name = "returnTime")
	private String returnTime;

	@Column(name = "type")
	private String type;

	@Column(name = "device")
	private Integer device;

	@Column(name = "amount")
	private Integer amount;

	@Column(name = "count")
	private Integer count;

	public ReservationBean(Integer id, Integer memberId,Timestamp orderDate,String dept,String ret,Date deptDate,String deptTime,Date returnDate,
			String returnTime,String type,Integer device,Integer couponId,Integer amount,Integer count) {
		this.id = id;
		this.memberId = memberId;
		this.orderDate = orderDate;
		this.dept = dept;
		this.ret = ret;
		this.deptDate = deptDate;
		this.deptTime = deptTime;
		this.returnDate = returnDate;
		this.returnTime = returnTime;
		this.type = type;
		this.device = device;
		this.couponId = couponId;
		this.amount = amount;
		this.count = count;
	}

	public ReservationBean() {
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getMemberId() {
		return memberId;
	}
	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}
	public Timestamp getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getRet() {
		return ret;
	}
	public void setRet(String ret) {
		this.ret = ret;
	}
	public Date getDeptDate() {
		return deptDate;
	}
	public void setDeptDate(Date deptDate) {
		this.deptDate = deptDate;
	}
	public String getDeptTime() {
		return deptTime;
	}
	public void setDeptTime(String deptTime) {
		this.deptTime = deptTime;
	}
	public Date getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}
	public String getReturnTime() {
		return returnTime;
	}
	public void setReturnTime(String returnTime) {
		this.returnTime = returnTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getDevice() {
		return device;
	}
	public void setDevice(Integer device) {
		this.device = device;
	}
	public Integer getCouponId() {
		return couponId;
	}
	public void setCouponId(Integer couponId) {
		this.couponId = couponId;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}

	public Integer getCarid() {
		return carid;
	}

	public void setCarid(Integer carid) {
		this.carid = carid;
	}

	public Integer getId() {
		return id;
	}

}
