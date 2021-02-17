package com.yurucamp.forum.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Entity @Component @Table(name="ReplyArticle")
public class ReplyBean {

//	回覆文章
	@Id @Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private	Integer reId;
	
	@Column(name="memberId")
	private String memberId;
	@Column(name="poId")
	private Integer poId;
	@Column(name="reCreatTime")
	private	Date reCreatTime;
	@Column(name="reUpDateTime")
	private	Date reUpDateTime;
	@Column(name="reContent")
	private	String reContent;
	@Column(name="reImage")
	private	String reImage;
	
	
	@Transient
	private String name;
	
	
	
	
	
	
	

	
	@Override
	public String toString() {
		return "ReplyBean [reId=" + reId + ", memberId=" + memberId + ", poId=" + poId + ", reCreatTime=" + reCreatTime
				+ ", reUpDateTime=" + reUpDateTime + ", reContent=" + reContent + ", reImage=" + reImage + ", name="
				+ name + "]";
	}
	public Integer getReId() {
		return reId;
	}
	public void setReId(Integer reId) {
		this.reId = reId;
	}
	
	

	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	
	public Date getReCreatTime() {
		return reCreatTime;
	}
	public void setReCreatTime(Date reCreatTime) {
		this.reCreatTime = reCreatTime;
	}
	
	
	public Date getReUpDateTime() {
		return reUpDateTime;
	}
	public void setReUpDateTime(Date reUpDateTime) {
		this.reUpDateTime = reUpDateTime;
	}
	

	public String getReContent() {
		return reContent;
	}
	public void setReContent(String reContent) {
		this.reContent = reContent;
	}
	
	
	public String getReImage() {
		return reImage;
	}
	public void setReImage(String reImage) {
		this.reImage = reImage;
	}
	
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public Integer getPoId() {
		return poId;
	}
	public void setPoId(Integer poId) {
		this.poId = poId;
	}
	
	
}
