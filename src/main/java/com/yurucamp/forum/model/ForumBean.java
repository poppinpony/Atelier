package com.yurucamp.forum.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Component @Table(name="Forum")
public class ForumBean {
	
	@Id @Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private	Integer forumId;
	@Column(name="name")
	private	String forumName;
	@Column(name="image")
	private	String forumImage;
	
	@Override
	public String toString() {
		return "ForumBean [forumId=" + forumId + ", forumName=" + forumName + ", forumImage=" + forumImage + "]";
	}
	
	
	public Integer getForumId() {
		return forumId;
	}
	public void setForumId(Integer forumId) {
		this.forumId = forumId;
	}
	
	
	public String getForumName() {
		return forumName;
	}
	public void setForumName(String forumName) {
		this.forumName = forumName;
	}
	

	public String getForumImage() {
		return forumImage;
	}
	public void setForumImage(String forumImage) {
		this.forumImage = forumImage;
	}
	
	
	
	


	
}
