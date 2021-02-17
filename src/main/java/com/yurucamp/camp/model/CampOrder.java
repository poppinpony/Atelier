package com.yurucamp.camp.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "CampOrder")
@Component
public class CampOrder implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Integer memberId;
	private Integer ampInfoId;
	private Date checkIn;
	private Date checkOut;
	private Integer count;
	private Integer total;

	public CampOrder() {
	}

	public CampOrder(Integer id, Integer memberId, Integer ampInfoId, Date checkIn, Date checkOut, Integer count,
			Integer total) {
		super();
		this.id = id;
		this.memberId = memberId;
		this.ampInfoId = ampInfoId;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.count = count;
		this.total = total;
	}

	public Integer getId() {
		return id;
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

	public Integer getAmpInfoId() {
		return ampInfoId;
	}

	public void setAmpInfoId(Integer ampInfoId) {
		this.ampInfoId = ampInfoId;
	}

	public Date getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}

	public Date getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

}
