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
@Table(name = "campInfo")
@Component
public class CampInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "name")
	private String name;

	@Column(name = "address")
	private String address;

	@Column(name = "altitude")
	private Integer altitude;

	@Column(name = "owner")
	private String owner;

	@Column(name = "ownerPhone")
	private String ownerPhone;

	@Column(name = "closed")
	private String closed;

	@Column(name = "image")
	private String image;

//	@OneToOne(fetch = FetchType.LAZY, mappedBy = "campInfo", cascade = CascadeType.ALL)
//	private CampDetail campDetail;

	public CampInfo() {
	}

	public CampInfo(Integer id, String name, String address, Integer altitude, String owner, String ownerPhone,
			String closed, String image) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.altitude = altitude;
		this.owner = owner;
		this.ownerPhone = ownerPhone;
		this.closed = closed;
		this.image = image;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getAltitude() {
		return altitude;
	}

	public void setAltitude(Integer altitude) {
		this.altitude = altitude;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getOwnerPhone() {
		return ownerPhone;
	}

	public void setOwnerPhone(String ownerPhone) {
		this.ownerPhone = ownerPhone;
	}

	public String getClosed() {
		return closed;
	}

	public void setClosed(String closed) {
		this.closed = closed;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
