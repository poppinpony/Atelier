package com.yurucamp.mallsystem.model.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.yurucamp.mallsystem.model.ItemStatus;
import com.yurucamp.mallsystem.model.ProductBean;

public interface ProductDao {

	public void insert(ProductBean productBean) throws SQLException;

	public void update(ProductBean productBean) throws SQLException;

	public void deleteOne(Integer id) throws SQLException;

	public List<ProductBean> queryAll() throws SQLException;

	public ProductBean queryOne(Integer id) throws SQLException;

	public Integer queryId(String status) throws SQLException;

	public ItemStatus queryOneStatus(Integer id) throws SQLException;

	public List<ProductBean> querypage() throws SQLException;

	public Map<Integer, ProductBean> queryallon() throws SQLException;

	public List<ProductBean> queryAllon() throws SQLException;

	public List<ProductBean> queryNuit() throws SQLException;

	public List<ProductBean> queryRHINO() throws SQLException;

	public List<ProductBean> queryLOGOS() throws SQLException;

	public List<ProductBean> queryTimeNew() throws SQLException;

	public List<ProductBean> queryTimeOld() throws SQLException;

	public List<ProductBean> queryPriceHigher() throws SQLException;

	public List<ProductBean> queryPirceLower() throws SQLException;

	public List<ProductBean> queryPopularProduct() throws SQLException;

	public List<ProductBean> queryUnpopularProduct() throws SQLException;

	public List<ProductBean> queryCategoryTents() throws SQLException;

	public List<ProductBean> queryCategorySleepingBags() throws SQLException;

	public List<ProductBean> queryCategoryStoves() throws SQLException;

	public List<ProductBean> queryCategoryCooking() throws SQLException;

	public List<ProductBean> queryCategoryFurniture() throws SQLException;

	public List<ProductBean> querySearch(String name) throws SQLException;

	public void changeStatusUp(ProductBean productBean) throws SQLException;

	public void changeStatusDown(ProductBean productBean) throws SQLException;

}
