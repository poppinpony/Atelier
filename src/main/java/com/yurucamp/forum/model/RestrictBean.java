package com.yurucamp.forum.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Component @Table(name="Restrict")
public class RestrictBean {

//	版主動作
	
	private	Integer freId;
	private	String memberId;
	private	String poId;
	private	String alert;
	private	String noReact;
	private	String noRead;
	
	

	@Id @Column(name="freId")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	public Integer getFreId() {
		return freId;
	}
	public void setFreId(Integer freId) {
		this.freId = freId;
	}
	
	
	@Column(name="memberId")
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	
	@Column(name="poId")
	public String getPoId() {
		return poId;
	}
	public void setPoId(String poId) {
		this.poId = poId;
	}
	
	
	@Column(name="alert")
	public String getAlert() {
		return alert;
	}
	public void setAlert(String alert) {
		this.alert = alert;
	}
	
	
	@Column(name="noReact")
	public String getNoReact() {
		return noReact;
	}
	public void setNoReact(String noReact) {
		this.noReact = noReact;
	}
	
	
	@Column(name="noRead")
	public String getNoRead() {
		return noRead;
	}
	public void setNoRead(String noRead) {
		this.noRead = noRead;
	}
	
	
	
	
	
}
