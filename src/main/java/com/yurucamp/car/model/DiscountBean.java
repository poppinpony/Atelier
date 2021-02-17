package com.yurucamp.car.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Discount")
public class DiscountBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "couponNumber")
	private String couponNumber;
	
	@Column(name = "couponName")
	private String couponName;
	

	@Column(name = "discountAmount")
	private Integer discountAmount;
	
	@Column(name = "threeDay")
	private Float threeDay;
	
	@Column(name = "fiveDay")
	private Float fiveDay;

	public DiscountBean() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCouponNumber() {
		return couponNumber;
	}
	
	public void setCouponNumber(String couponNumber) {
		this.couponNumber = couponNumber;
	}
	
	public String getCouponName() {
		return couponName;
	}

	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}

	public Integer getDiscountAmount() {
		return discountAmount;
	}

	public void setDiscountAmount(Integer discountAmount) {
		this.discountAmount = discountAmount;
	}

	public Float getThreeDay() {
		return threeDay;
	}

	public void setThreeDay(Float threeDay) {
		this.threeDay = threeDay;
	}

	public Float getFiveDay() {
		return fiveDay;
	}

	public void setFiveDay(Float fiveDay) {
		this.fiveDay = fiveDay;
	}
	
	

}
