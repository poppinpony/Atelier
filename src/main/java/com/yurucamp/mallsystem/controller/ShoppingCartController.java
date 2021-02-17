package com.yurucamp.mallsystem.controller;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.yurucamp.mallsystem.model.OrderBean;
import com.yurucamp.mallsystem.model.OrderDetailBean;
import com.yurucamp.mallsystem.model.ProductBean;
import com.yurucamp.mallsystem.model.ShoppingCart;
import com.yurucamp.mallsystem.model.service.OrderBeanService;
import com.yurucamp.mallsystem.model.service.OrderDetailBeanService;
import com.yurucamp.mallsystem.model.service.PorductService;
import com.yurucamp.member.model.MemberBean;
import com.yurucamp.member.model.dao.MemberDao;
import com.yurucamp.member.model.service.MemberCenterService;

@Controller
@SessionAttributes({"memberBean" ,"id", "ShoppingCart", })
public class ShoppingCartController {

	@Autowired
	MemberCenterService service;

	@Autowired
	OrderBeanService orderBeanService;

	@Autowired
	OrderDetailBeanService orderDetailBeanService;

	@Autowired
	PorductService productService;
	
	@Autowired
	MemberDao memberDao;

	@GetMapping("/shoppingcart")
	public String shopcart(Model model, SessionStatus status) throws SQLException {
			MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");
			if (memberBean == null) {
				return "redirectMallSystemIndex";
			}
			ShoppingCart cart = (ShoppingCart) model.getAttribute("ShoppingCart");
			// 如果找不到ShoppingCart物件
			if (cart == null) {
				// 新建ShoppingCart物件
				cart = new ShoppingCart();
				// 並將此新建ShoppingCart的物件放到session物件內，成為它的屬性物件
				model.addAttribute("ShoppingCart", cart);
				return "redirectMallSystemIndex";
			}
			return "cart";
		}

	@PostMapping("/shoppingcart/checklogin")
	@ResponseBody
	public Map<String, String> MemberIndex(HttpServletRequest request, Model model, String Account, String Password)
			throws SQLException {
		Map<String, String> rtnMap = new HashMap<String, String>();
		
		List<MemberBean> memberUser = memberDao.queryaUserId(Account,Password);

		if(memberUser.isEmpty()) { 
			System.out.println(memberUser);
			rtnMap.put("msg", "請登入會員!"); 
		}else {
//			rtnMap.put("msg", "登入成功!");
		}
		return rtnMap;  
	}
	
	@PostMapping("/shoppingcart/addProduct")
	public String addshopcart(@RequestParam("id") Integer productId, Model model,HttpServletRequest request,SessionStatus status) throws SQLException {
		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");
		if (memberBean == null) {
		 
			return "redirectMallSystemIndex";
		}

		HttpSession session = request.getSession(false);
		if (session == null) {
			return "indexPage";
		}

		// 取出存放在session物件內的ShoppingCart物件
		ShoppingCart cart = (ShoppingCart) model.getAttribute("ShoppingCart");
		// 如果找不到ShoppingCart物件
		if (cart == null) {
			// 新建ShoppingCart物件
			cart = new ShoppingCart();
			// 並將此新建ShoppingCart的物件放到session物件內，成為它的屬性物件
			model.addAttribute("ShoppingCart", cart);
		}
		Map<Integer, ProductBean> productMap =productService.queryallon();
		ProductBean productBean = productMap.get(productId);

		OrderBean orderbean = new OrderBean();
		orderbean.setProductId(productId);
		orderbean.setProductName(productBean.getName());
		

		orderbean.setDescription(productBean.getDescription());
		orderbean.setQuantity(1);
		orderbean.setPrice(productBean.getPrice());

		orderbean.setFee(60);
		orderbean.setImage(productBean.getImage());

		orderbean.setCategory(productBean.getCategory());

		cart.addToCart(productId, orderbean);
		
		System.out.println(orderbean.getTotal());
		System.out.println(cart.getContent());
		List<ProductBean> list = productService.queryAllon();	
		model.addAttribute("productBeans", list);
		model.addAttribute("ShoppingCart", cart);
		return "mallSystemIndex";

	}

	@PostMapping("/shoppingcart/updateProduct")
	public String updateProduct(
			@RequestParam(value = "id", required = false) Integer  prodcutId, 
			@RequestParam(value = "newQty", required = false) Integer  qty, 
			Model model, SessionStatus status) {
		
		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");
		if (memberBean == null) {
			return "redirectMallSystemIndex";
		}
		
		ShoppingCart cart = (ShoppingCart) model.getAttribute("ShoppingCart");
		if (cart == null) {
			return "redirectMallSystemIndex";
		}
	  System.out.println("cart=" + cart + ", prodcutId=" + prodcutId + ", QTY=" + qty);
	  		
	  	if(prodcutId!=null || qty!=null) {	  		
	  		cart.modifyQty(prodcutId, qty);   // 修改某項商品的數項
	  	}
		
			model.addAttribute("ShoppingCart", cart);
			return "cart";
	}
	

	@PostMapping("/shoppingcart/deleteProduct")
	public String deleteProduct(@RequestParam("id")Integer productId, Model model,SessionStatus status) throws SQLException {
	
		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");
		if (memberBean == null) {
			return "mallSystemIndex";
		}
		
		ShoppingCart cart = (ShoppingCart) model.getAttribute("ShoppingCart");
		if (cart == null) {
			return "redirectMallSystemIndex";
		}
		
		cart.deleteProduct(productId);
		
		model.addAttribute("ShoppingCart", cart);
		return "cart";
	}

	@GetMapping("/shoppingcart/check")
	public String checkview(Model model,SessionStatus status) throws SQLException {
	
		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");
		if (memberBean == null) {
			return "mallSystemIndex";
		}
		
		ShoppingCart cart = (ShoppingCart) model.getAttribute("ShoppingCart");
		if (cart == null) {
			return "redirectMallSystemIndex";
		}
		OrderBean orderBean = new OrderBean();
		orderBean.setCreateTime(new Timestamp(System.currentTimeMillis()));
		orderBean.setMemberId(memberBean.getId());
		orderBean.setFee(60);
		
		model.addAttribute("orderBean", orderBean);
		model.addAttribute("memberBean", memberBean);
		model.addAttribute("ShoppingCart", cart);
		return "check";
	}
	
	@PostMapping(value = "/shoppingcart/finish")
	public String finish(
			@RequestParam("urbanArea")String urbanArea,
			@RequestParam("postalCode")String postalCode,
			@RequestParam("address")String address,
			Model model,SessionStatus status) throws SQLException {
		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");
		
		if (memberBean == null) {
			return "mallSystemIndex";
		}
		ShoppingCart cart = (ShoppingCart) model.getAttribute("ShoppingCart");
		if (cart == null) {
			return "redirectMallSystemIndex";
		}
		
		OrderBean orderBean = new OrderBean();
		orderBean.setCreateTime(new Timestamp(System.currentTimeMillis()));
		orderBean.setMemberId(memberBean.getId());
		orderBean.setFee(60);
		memberBean.setAddress(postalCode+urbanArea+address);

		model.addAttribute("orderBean", orderBean);
		model.addAttribute("memberBean", memberBean);
		model.addAttribute("ShoppingCart", cart);
		return "finish"; 
	}
	@GetMapping(value = "/shoppingcart/insertorder")
	public String insertorder(Model model,SessionStatus status) throws SQLException {
		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");
		
		if (memberBean == null) {
			return "mallSystemIndex";
		}
		ShoppingCart cart = (ShoppingCart) model.getAttribute("ShoppingCart");
		if (cart == null) {
			return "redirectMallSystemIndex";
		}
		
		
		OrderBean orderBean = new OrderBean();
		orderBean.setCreateTime(new Timestamp(System.currentTimeMillis()));
		orderBean.setMemberId(memberBean.getId());
		orderBean.setFee(60);
		System.out.println(memberBean.getAddress());
		orderBean.setOrderAddress(memberBean.getAddress());
		Map<Integer,OrderBean> orderBeanMap = cart.getContent();
		if(memberBean.getPaid() == 1) {
			orderBean.setTotal(cart.getPayFinalSubtotal());	
		}else {
			orderBean.setTotal(cart.getFinalSubtotal());		
		}
		orderBean  = orderBeanService.insert(orderBean);
		
		for(Integer key : orderBeanMap.keySet()) {
			OrderDetailBean  orderDetailBean = new OrderDetailBean();
			OrderBean bean = orderBeanMap.get(key);		
			orderDetailBean.setOrderId(orderBean.getId());
			orderDetailBean.setPrice(bean.getPrice());
			orderDetailBean.setCreatetime(new Timestamp(System.currentTimeMillis()));
			orderDetailBean.setProductId(bean.getProductId());
			orderDetailBean.setQuantity(bean.getQuantity());
			orderDetailBeanService.insert(orderDetailBean);
		}
		System.out.println(orderBean.getId());
//		List<OrderDetailBean> orderDetailBean = orderDetailBeanService.queryByOrderId(orderBean.getId());
		System.out.println(orderBean.getId());
//		model.addAttribute("orderDetailBeans",orderDetailBean);
		model.addAttribute("orderBean",orderBean);
		cart.getContent().clear();
		return "order"; 
	}
	
	@GetMapping("/shoppingcart/removeOrder")
	public String removeOrder(Model model,SessionStatus status) throws SQLException {
		
		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");
		if (memberBean == null) {
			return "mallSystemIndex";
		}
		
		ShoppingCart cart = (ShoppingCart) model.getAttribute("ShoppingCart");
		if (cart == null) {
			return "redirectMallSystemIndex";
		}
		
		cart.getContent().clear();
		return "redirectMallSystemIndex";
		
	}
		
	@PostMapping("/shoppingcart/orderDetail")
	public String orderDetailView(@RequestParam("id")Integer orderId, Model model,SessionStatus status) throws SQLException {
		
		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");
		if (memberBean == null) {
			return "mallSystemIndex";
		}
		
		ShoppingCart cart = (ShoppingCart) model.getAttribute("ShoppingCart");
		if (cart == null) {
			return "redirectMallSystemIndex";
		}

		List<OrderDetailBean> Mapean = orderDetailBeanService.queryByOrderId(orderId);
		
		for (OrderDetailBean orderDetailBean : Mapean) {
		ProductBean productBean =	productService.queryOne(orderDetailBean.getProductId());
			orderDetailBean.setProductName(productBean.getName());
			orderDetailBean.setProductImage(productBean.getImage());
		}
		OrderBean ordreBean = orderBeanService.queryone(orderId);
		
		model.addAttribute("orderDetailBeans",Mapean);
		model.addAttribute("ordreBean",ordreBean);
		
		return "orderDetail";
	}
	
	

}
