package com.yurucamp.forum.model;




import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;
@Entity @Component @Table(name="PostArticle")
public class PostBean {
	
//	發文文章	
	@Id @Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer poId;
	@Column(name="memberId")
	private String memberId;
	@Column(name="forum")
	private String forum;
	@Column(name="poTitle")
	private String poTitle;
	@JsonFormat (pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name="poCreatTime")
	private Timestamp poCreatTime;
	@JsonFormat (pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name="poUpDateTime")
	private Timestamp poUpDateTime;
	
	
	@Column(name="poContent")
	private String poContent;
	@Column(name="poImage")
	private String poImage;
	
	@Column(name="likeNumber")
	private	Integer likeNumber;
	@Column(name="reContentNumber")
	private	Integer reContentNumber;
	@Column(name="clickNumber")
	private	Integer clickNumber;
	
	
	
	@Transient
	private String forumName;
	
	@Transient
	private String name;
	
	
	
	
	@Override
	public String toString() {
		return "PostBean [poId=" + poId + ", memberId=" + memberId + ", forum=" + forum + ", poTitle=" + poTitle
				+ ", poCreatTime=" + poCreatTime + ", poUpDateTime=" + poUpDateTime + ", poContent=" + poContent
				+ ", poImage=" + poImage + ", likeNumber=" + likeNumber + ", reContentNumber=" + reContentNumber
				+ ", clickNumber=" + clickNumber + ", forumName=" + forumName + ", name=" + name + "]";
	}
	
	public Integer getPoId() {
		return poId;
	}
	public void setPoId(Integer poId) {
		this.poId = poId;
	}
	
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getForum() {
		return forum;
	}
	public void setForum(String forum) {
		this.forum = forum;
	}
	
	public String getPoTitle() {
		return poTitle;
	}
	public void setPoTitle(String poTitle) {
		this.poTitle = poTitle;
	}
	
	
	
	public Timestamp getPoCreatTime() {
		return poCreatTime;
	}
	public void setPoCreatTime(Timestamp poCreatTime) {
		this.poCreatTime = poCreatTime;
	}
	
	

	public Timestamp getPoUpDateTime() {
		return poUpDateTime;
	}
	public void setPoUpDateTime(Timestamp poUpDateTime) {
		this.poUpDateTime = poUpDateTime;
	}
	
	
	public String getPoContent() {
		return poContent;
	}
	public void setPoContent(String poContent) {
		this.poContent = poContent;
	}
	
	
	
	public String getPoImage() {
		return poImage;
	}
	public void setPoImage(String poImage) {
		this.poImage = poImage;
	}
	
	
	
	public Integer getLikeNumber() {
		return likeNumber;
	}
	public void setLikeNumber(Integer likeNumber) {
		this.likeNumber = likeNumber;
	}
	
	
	
	public Integer getReContentNumber() {
		return reContentNumber;
	}
	public void setReContentNumber(Integer reContentNumber) {
		this.reContentNumber = reContentNumber;
	}
	
	
	
	public Integer getClickNumber() {
		return clickNumber;
	}
	public void setClickNumber(Integer clickNumber) {
		this.clickNumber = clickNumber;
	}
	
	
	
	
	public String getForumName() {
		return forumName;
	}
	public void setForumName(String forumName) {
		this.forumName = forumName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
}
