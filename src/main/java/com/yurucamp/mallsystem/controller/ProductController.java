package com.yurucamp.mallsystem.controller;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yurucamp.general.model.service.GeneralService;
import com.yurucamp.mallsystem.model.BrandBean;
import com.yurucamp.mallsystem.model.ProductBean;
import com.yurucamp.mallsystem.model.service.BrandService;
import com.yurucamp.mallsystem.model.service.PorductService;

@Controller
public class ProductController {

	@Autowired
	PorductService productService;

	@Autowired
	BrandService brandService;
	
	@Autowired
	GeneralService generalService ;

	// 商城首頁
	@GetMapping(value = "/Product/Index")
	public String ProductIndex(HttpServletRequest req,Model model) throws SQLException {
		List<ProductBean> list = productService.queryAllon();	
		model.addAttribute("productBeans", list);
		
//		String memberId = (String) req.getAttribute("memberId");
		
//		boolean isLogin = false; 
//		
//		if(memberId != null && !"".equals(memberId)) {
//			isLogin = true;
//		}
//		
//		model.addAttribute("isLogin", isLogin);
		
		return "mallSystemIndex";
	}
	
	// 商城首頁分類搜尋
	@GetMapping(value = "/Product/BrandNUIT")
	public String ProductBrandNUIT(Model model) throws SQLException {
		List<ProductBean> list = productService.queryNuit();	
		model.addAttribute("productBeans", list);
		
		return "mallSystemIndex";
	}
	
	// 商城首頁分類搜尋
	@GetMapping(value = "/Product/BrandRHINO")
	public String ProductBrandRHINO(Model model) throws SQLException {
		List<ProductBean> list = productService.queryRHINO();	
		model.addAttribute("productBeans", list);
		
		return "mallSystemIndex";
	}
	
	// 商城首頁分類搜尋
	@GetMapping(value = "/Product/BrandLOGOS")
	public String ProductBrandLOGOS(Model model) throws SQLException {
		List<ProductBean> list = productService.queryLOGOS();	
		model.addAttribute("productBeans", list);
		
		return "mallSystemIndex";
	}
	// 商城首頁分類搜尋
	@GetMapping(value = "/Product/CategoryTents")
	public String ProductCategoryTents(Model model) throws SQLException {
		List<ProductBean> list = productService.queryCategoryTents();	
		model.addAttribute("productBeans", list);
		
		return "mallSystemIndex";
	}
	// 商城首頁分類搜尋
	@GetMapping(value = "/Product/CategorySleepingBags")
	public String ProductCategorySleepingBags(Model model) throws SQLException {
		List<ProductBean> list = productService.queryCategorySleepingBags();	
		model.addAttribute("productBeans", list);
		
		return "mallSystemIndex";
	}
	// 商城首頁分類搜尋
	@GetMapping(value = "/Product/CategoryStoves")
	public String ProductCategoryStoves(Model model) throws SQLException {
		List<ProductBean> list = productService.queryCategoryStoves();	
		model.addAttribute("productBeans", list);
		
		return "mallSystemIndex";
	}
	// 商城首頁分類搜尋
	@GetMapping(value = "/Product/CategoryCooking")
	public String ProductCategoryCooking(Model model) throws SQLException {
		List<ProductBean> list = productService.queryCategoryCooking();	
		model.addAttribute("productBeans", list);
		
		return "mallSystemIndex";
	}
	// 商城首頁分類搜尋
	@GetMapping(value = "/Product/CategoryFurniture")
	public String ProductCategoryFurniture(Model model) throws SQLException {
		List<ProductBean> list = productService.queryCategoryFurniture();	
		model.addAttribute("productBeans", list);
		
		return "mallSystemIndex";
	}
	
	// 商城首頁分類搜尋
	@PostMapping(value = "/Product/orderby")
	public String Productorderby(@RequestParam("orderby")Integer value,Model model) throws SQLException {
		List<ProductBean> list =null;
		if(value == 1) {
			 list = productService.queryTimeNew();
		}
		else if(value == 2) {
			 list = productService.queryTimeOld();
		}
		else if(value == 3) {
			 list = productService.queryPriceHigher();
		}
		else if(value == 4) {
			 list = productService.queryPirceLower();
		}
		else if(value == 5) {
			 list = productService.queryPopularProduct();
		}
		else if(value == 6) {
			 list = productService.queryUnpopularProduct();
		}

		model.addAttribute("productBeans", list);
		
		return "mallSystemIndex";
	}

	// 後臺首頁
	@GetMapping(value = "/Product/search")
	public String Productsearch(@RequestParam("name")String name,Model model) throws SQLException {
		System.out.println(name);
		List<ProductBean> list = productService.querySearch(name);	
		model.addAttribute("productBeans", list);
		
		return "mallSystemIndex";
	}
	
	// 後臺首頁
	@GetMapping(value = "/Product/BackStageIndex")
	public String ProductBackStageIndex() {
		return "mallSystemViewPage";
	}

	// 後臺商品列表
	@GetMapping(value = "/Product/GetAllProduct")
	public String GetAllProduct(Model model) throws SQLException {
		List<ProductBean> list = productService.queryAll();	
		model.addAttribute("productBeans", list);
		return "mallSystemGetAllProduct";
	}

	// 後臺新增商品頁面
	@RequestMapping(value = "/Product/InsertProduct", method = RequestMethod.GET)
	public String InsertProductinfo()  {
		
		return "mallSystemInsertProduct";
	}	
//	// 後臺新增商品資料
//	@PostMapping(value = "/Product/InsertProductinfo")
//	@ResponseBody
//	public JSONArray InsertProduct(@RequestParam("name") String name,
//								@RequestParam("brand") String brandname,
//								@RequestParam("price") Integer price,
//								@RequestParam("image") MultipartFile image,
//								@RequestParam("description") String description,
//								@RequestParam("status") String status,
//								@RequestParam("stock") Integer stock,
//								@RequestParam("category") String category, Model model)throws SQLException {
//		ProductBean productBean = new ProductBean();
//		productBean.setName(name);
//		productBean.setBrandId(brandService.queryId(brandname));
//		productBean.setPrice(price);
//		productBean.setImage(generalService.uploadToImgur(image));
//		productBean.setDescription(description);
//		productBean.setStatusId(productService.queryId(status));
//		productBean.setStock(stock);
//		productBean.setCategory(category);
//		productBean.setCreatetime(new Timestamp(System.currentTimeMillis()));
//		productService.insert(productBean);
//		List<ProductBean> list = productService.querypage();
//		model.addAttribute("productBeans", list);
//		return (JSONArray) list;
//	}
	// 後臺新增商品資料
	@PostMapping(value = "/Product/InsertProductinfo")
	@ResponseBody
	public List<ProductBean> InsertProduct(@ModelAttribute ProductBean productBean, Model model)throws SQLException {
		
		System.out.println(productBean.toString());
		
		productBean.setCreatetime(new Timestamp(System.currentTimeMillis()));
		productService.insert(productBean);
		List<ProductBean> list = productService.querypage();
		
		return list;
	}
	
	@PostMapping(path = "/Product/upfileimage",produces = "application/json")
	@ResponseBody
	public Map<String,String> img(@RequestPart(value = "image") MultipartFile image) {
		
		System.out.println(image);
		String imgur = generalService.uploadToImgur(image);
		Map<String,String> result = new HashMap<>();
		
		if(imgur != null) {
			result.put("upload","true");
			result.put("url",imgur);
			
		}else {
			result.put("upload","true");
			result.put("url",null);
		}
		 return result;
	}
	
	
	// 後臺刪除商品
	@PostMapping(value = "/Product/DeleteProduct")
	public String DeleteProduct(@RequestParam("id") Integer id, Model model) throws SQLException {
		productService.deleteOne(id);
		List<ProductBean> list = productService.queryAll();
		model.addAttribute("productBeans", list);
		return "mallSystemGetAllProduct";
	}
	
	// 後臺修改商品頁面
	@PostMapping(value = "/Product/UpdateProduct")
	public String UpdateProduct(@RequestParam("id") Integer id,Model model) throws SQLException {
		ProductBean productBean = new ProductBean();
		productBean = productService.queryOne(id);
		model.addAttribute("productBean", productBean);
		return "mallSystemUpdateProduct";
	}
	
	
	// 後臺修改商品內容
	@PostMapping("/Product/UpdateProductinfo")
	public String UpdateProducinfo(@RequestParam("id") Integer id, 
								   @RequestParam("price") Integer price, 
								   @RequestParam("stock") Integer stock,
								   @RequestParam("description") String description ,Model model) throws SQLException {
		ProductBean productBean = new ProductBean();	
		productBean.setId(id);
		productBean.setPrice(price);
		productBean.setStock(stock);
		productBean.setDescription(description);
		productService.update(productBean);
		productBean = productService.queryOne(id);

		
		model.addAttribute("productBeaninfo", productBean);

		return "mallSystemUpdateProduct";
	}
	
	// 後臺上架商品
		@PostMapping("/Product/PutOnShelfProduct")
		public String PutOnShelfProduct(@RequestParam("id") Integer id,Model model) throws SQLException {

			ProductBean	productBean = productService.queryOne(id);
			productBean.setStatusId(1);
			productService.changeStatusUp(productBean);
//			model.addAttribute("productBeaninfo", productBean);

			List<ProductBean> list = productService.queryAll();
			model.addAttribute("productBeans", list);
			return "mallSystemGetAllProduct";
		}
		
		// 後臺下架商品
		@PostMapping("/Product/OffShelfProduct")
		public String OffShelfProduct(@RequestParam("id") Integer id,Model model) throws SQLException {
			ProductBean	productBean = productService.queryOne(id);
			productBean.setStatusId(2);
			productService.changeStatusDown(productBean);
			
//			model.addAttribute("productBeaninfo", productBean);
			
			List<ProductBean> list = productService.queryAll();
			model.addAttribute("productBeans", list);
			return "mallSystemGetAllProduct";
		}
	
	
	
	// 後臺查詢所有廠牌
	@GetMapping(value = "/Product/GetAllBrand")
	public String GetAllBrand(Model model) throws SQLException {
		List<BrandBean> list = brandService.queryAll();
		model.addAttribute("brandBeans", list);
		return "mallSystemGetAllBrand";
	}
	// 後臺新增廠牌頁面
	@GetMapping(value = "/Product/InsertBrand")
	public String InsertBrand() {
		return "mallSystemInsertBrand";
	}
	// 後臺新增廠牌
	@RequestMapping(value = "/Product/InsertBrandinfo",method = RequestMethod.POST)
	public String InsertBrandinfo(@RequestParam("name") String name, Model model) throws SQLException  {
		BrandBean brandBean = new BrandBean();
		brandBean.setName(name);
		brandBean.setCreatetime(new Timestamp(System.currentTimeMillis()));
		brandService.insert(brandBean);
		List<BrandBean> list = brandService.querypage();
		model.addAttribute("brandBeans", list);
		return "mallSystemInsertBrand";
	}
	
	// 後臺刪除廠牌
	@RequestMapping(value = "/Product/DeleteBrand",method = RequestMethod.POST)
	public String DeleteBrand(@RequestParam("id") Integer id, Model model)
			throws SQLException {
		brandService.deleteOne(id);
		List<BrandBean> list = brandService.queryAll();
		model.addAttribute("brandBeans", list);
		return "mallSystemGetAllBrand";
	}
	
	// 後臺修改廠牌頁面
	@RequestMapping(value = "/Product/UpdateBrand",method = RequestMethod.POST)
	public String UpdateBrand(@RequestParam("id") Integer id, Model model) throws SQLException {
		BrandBean brandBean = new BrandBean();
		brandBean = brandService.queryOne(id);
		model.addAttribute("brandBean", brandBean);
		
		return "mallSystemUpdateBrand";
	}
	
	
	
	// 後臺修改廠牌
	@RequestMapping(value = "/Product/UpdateBrandinfo",method = RequestMethod.POST)
	public String UpdateBrand(@RequestParam("id") Integer id, @RequestParam("name") String name,Model model) throws SQLException {
		BrandBean brandBean = new BrandBean();		
		brandBean.setId(id);
		brandBean.setName(name);
		brandService.update(brandBean);
		brandBean = brandService.queryOne(id);

		
		model.addAttribute("brandBeaninfo", brandBean);

		return "mallSystemUpdateBrand";
	}

}
