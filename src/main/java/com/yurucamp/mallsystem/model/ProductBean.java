package com.yurucamp.mallsystem.model;

import java.io.Serializable;
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

@Component
@Entity
@Table(name = "Product")
public class ProductBean implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "name")
	private String name;

	@Column(name = "brandId")
	private Integer brandId;

	@Column(name = "price")
	private Integer price;

	@Column(name = "image")
	private String image;

	@Column(name = "webTraffic")
	private Integer webTraffic;

	@Column(name = "description")
	private String description;

	@Column(name = "statusId")
	private Integer statusId;

	@Column(name = "stock")
	private Integer stock;

	@Column(name = "category")
	private String category;

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "createtime")
	private Timestamp createtime;

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "updatetime")
	private Timestamp updatetime;

	@Transient
	private String brand;
	
	@Transient
	private String status;
	
	
	@Override
	public String toString() {
		return "ProductBean [id=" + id + ", name=" + name + ", brandId=" + brandId + ", price=" + price + ", image="
				+ image + ", webTraffic=" + webTraffic + ", description=" + description + ", statusId=" + statusId
				+ ", stock=" + stock + ", category=" + category + ", createtime=" + createtime + ", updatetime="
				+ updatetime + ", brand=" + brand + ", status=" + status + "]";
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

	public Integer getBrandId() {
		return brandId;
	}

	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getWebTraffic() {
		return webTraffic;
	}

	public void setWebTraffic(Integer webTraffic) {
		this.webTraffic = webTraffic;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getStatusId() {
		return statusId;
	}

	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Timestamp getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}

	public Timestamp getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Timestamp updatetime) {
		this.updatetime = updatetime;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	
}
