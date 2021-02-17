package com.yurucamp.camp.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "CampSide")
@Component
public class CampSide implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "campInfoId")
	private Integer campInfoId;

	@Column(name = "name")
	private String name;

	@Column(name = "total")
	private Integer total;

	@Column(name = "surplus")
	private Integer surplus;

	@Column(name = "price")
	private Integer price;

	public CampSide() {
	}

	public CampSide(Integer id, Integer campInfoId, String name, Integer total, Integer surplus, Integer price) {
		super();
		this.id = id;
		this.campInfoId = campInfoId;
		this.name = name;
		this.total = total;
		this.surplus = surplus;
		this.price = price;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCampInfoId() {
		return campInfoId;
	}

	public void setCampInfoId(Integer campInfoId) {
		this.campInfoId = campInfoId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getSurplus() {
		return surplus;
	}

	public void setSurplus(Integer surplus) {
		this.surplus = surplus;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}
	
}
