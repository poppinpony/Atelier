package com.yurucamp.car.controller;

import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yurucamp.car.model.CarBean;
import com.yurucamp.car.model.DiscountBean;
import com.yurucamp.car.model.ReservationBean;
import com.yurucamp.car.model.service.CarService;
import com.yurucamp.car.model.service.discountService;
import com.yurucamp.member.model.MemberBean;

@Controller
@SessionAttributes({"memberBean"})
public class CarController {
	@Autowired
	CarService carService;

	@Autowired
	discountService discountService;

	@GetMapping("/Car/Index")
	public String carIndex() {
		return "CarViewPage";
	}

	@RequestMapping(value = "/Car/Index", method = RequestMethod.POST,
			params = {})
	public String carIndex(HttpServletRequest request, Model model) throws SQLException{

		String errorMsg = (String) model.getAttribute("errorMsg");
		model.addAttribute("errorMsg",errorMsg);

		return "CarViewPage";
	}

	@GetMapping("/Car/Location")
	public String carLocation() {
		return "CarLocationPage";
	}

	@GetMapping("/Car/Contact")
	public String carContact() {
		return "CarContactPage";
	}

//	訂單查詢 start

	@RequestMapping(value = "/Car/Order", method = RequestMethod.POST,
			params = {})
	public String carOrder(HttpServletRequest request, Model model) throws SQLException{

		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");

		if(null == memberBean) {// not login
			model.addAttribute("errorMsg","您尚未登入，請登入後再查詢");
			return "CarViewPage";
		}else {
			List<ReservationBean> planList = carService.query(memberBean.getId());
			model.addAttribute("planList",planList);
			return "CarOrderPage";
		}
	}

	@RequestMapping(value = "/Car/OrderDetail", method = RequestMethod.POST,
			params = {"id"})
	public String carOrderDetail(HttpServletRequest request, Model model, int id) throws SQLException{

//		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");

//		HttpSession session = request.getSession();

//		int memberId = 1;
//		try {
//			id = (int)session.getAttribute("id");
//		} catch (Exception e) {
//			//do nothing...
//		}

		List<ReservationBean> planList = carService.querydetail(id);
		model.addAttribute("planList",planList);
		return "CarOrderDetailPage";
	}

//	訂單查詢  end

//	車輛一覽 start

	@RequestMapping(value = "/Car/CarMenu", method = RequestMethod.GET,
			params = {})
	public String CarMenu(HttpServletRequest request, Model model) throws SQLException{

		List<CarBean> planList = carService.querycar();
		model.addAttribute("planList",planList);
		return "CarMenuPage";
	}

	@RequestMapping(value = "/Car/CarMenuByPrice", method = RequestMethod.GET,
			params = {})
	public String CarMenuByPrice(HttpServletRequest request, Model model) throws SQLException{

		List<CarBean> planList = carService.querycarbyprice();
		model.addAttribute("planList",planList);
		return "CarMenuPage";
	}

//	車輛一覽 end

	@RequestMapping(value = "/Car/reservation", method = RequestMethod.POST,
			params = { "dept", "ret", "deptDate", "deptTime", "returnDate", "returnTime" })
	public String goodLuck(Model model,
		@RequestParam(value = "dept") String dept,
		@RequestParam(value = "ret") String ret,
		@RequestParam(value = "deptDate") String deptDate,
		@RequestParam(value = "deptTime") String deptTime,
		@RequestParam(value = "returnDate") String returnDate,
		@RequestParam(value = "returnTime") String returnTime) throws SQLException {

		// 検索条件
		Map<String,Object> condList = new HashMap<>();
		condList.put("dept", dept);             // 出発地区
		condList.put("ret", ret);               // 返却地区
		condList.put("deptDate", deptDate);     // 出発日
		condList.put("deptTime", deptTime);     // 出発時間
		condList.put("returnDate", returnDate); // 返却日
		condList.put("returnTime", returnTime); // 返却時間

		// Reservationからの検索結果List
		List<ReservationBean> rsvList = carService.getRsvList(condList);

		// carId保持する配列
		int arrCarId[] = new int[rsvList.size()];

		// Reservationの検索結果からcarIdをセット
		for(int i=0; i < rsvList.size(); i++) {
			arrCarId[i] = rsvList.get(i).getCarid();
		}

		// carId重複削除
		arrCarId = removeIntArraysDuplicate(arrCarId);

		// Carからの検索結果List
		List<CarBean> planList = carService.getCarList(condList, arrCarId);

		model.addAttribute("dept", dept);
		model.addAttribute("ret", ret);
		model.addAttribute("deptDate", deptDate);
		model.addAttribute("deptTime", deptTime);
		model.addAttribute("returnDate", returnDate);
		model.addAttribute("returnTime", returnTime);
		model.addAttribute("planList",planList);
		return "ReservationPage";
	}

	@RequestMapping(value = "/Car/reservation2",
			params = { "carId", "dept", "ret", "deptDate", "deptTime", "returnDate", "returnTime", "amount", "type", "totalPrice", "normalPrice","discountPrice"})
	public String car(Model model,
			@RequestParam(value = "carId") String carId,
			@RequestParam(value = "dept") String dept,
			@RequestParam(value = "ret") String ret,
			@RequestParam(value = "deptDate") String deptDate,
			@RequestParam(value = "deptTime") String deptTime,
			@RequestParam(value = "returnDate") String returnDate,
			@RequestParam(value = "returnTime") String returnTime,
			@RequestParam(value = "amount") String amount,
			@RequestParam(value = "type") String type,
			@RequestParam(value = "totalPrice") String totalPrice,
			@RequestParam(value = "normalPrice") String normalPrice,
			@RequestParam(value = "discountPrice") String discountPrice){
		System.out.println("カーアイディ：" + carId);
		model.addAttribute("carId", carId);
		model.addAttribute("dept", dept);
		model.addAttribute("ret", ret);
		model.addAttribute("deptDate", deptDate);
		model.addAttribute("deptTime", deptTime);
		model.addAttribute("returnDate", returnDate);
		model.addAttribute("returnTime", returnTime);
		model.addAttribute("amount", amount);
		model.addAttribute("type", type);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("normalPrice", normalPrice);
		model.addAttribute("discountPrice", discountPrice);
		return "ReservationPage2";
 	}


	@RequestMapping("/Car/Discount")
	public @ResponseBody Map<String,Object> basicType(@RequestParam String couponNumber){
		Map<String,Object> map = new HashMap<String, Object>();
		// 検索条件
		DiscountBean discountBean = new DiscountBean();
		discountBean.setCouponNumber(couponNumber);

		// 検索結果List（Items）
		List<DiscountBean> planList = discountService.getList(discountBean);
		DiscountBean discount = new DiscountBean();

		if(planList!=null && planList.size()>0) {
			discount = planList.get(0);
		}

		map.put("couponName", discount.getCouponName());
		map.put("discountAmount", discount.getDiscountAmount());
		if("" == discount.getCouponName() || discount.getCouponName() == null) {
			map.put("invalidFlag", "Y");
		}

		return map;
	}



//			@RequestMapping(value = "/Car/reservation3",
//					params = { "dept", "ret", "deptDate", "deptTime", "returnDate", "returnTime", "amount", "type"})
//					params = { "dept", "ret", "deptDate", "deptTime", "returnDate", "returnTime", "amount", "type","device", "discount" })
//			public String carcar(Model model,
//					@RequestParam(value = "dept") String dept,
//					@RequestParam(value = "ret") String ret,
//					@RequestParam(value = "deptDate") String deptDate,
//					@RequestParam(value = "deptTime") String deptTime,
//					@RequestParam(value = "returnDate") String returnDate,
//					@RequestParam(value = "returnTime") String returnTime,
//					@RequestParam(value = "amount") String amount,
//					@RequestParam(value = "type") String type,
//					@RequestParam(value = "device") String device,
//				@RequestParam(value = "discount") String discount)
//			{
//				model.addAttribute("dept", dept);	// 將第一項資訊放入model物件內
//				model.addAttribute("ret", ret); 		// 將第二項資訊放入model物件內
//				model.addAttribute("deptDate", deptDate);
//				model.addAttribute("deptTime", deptTime);
//				model.addAttribute("returnDate", returnDate);
//				model.addAttribute("returnTime", returnTime);
//				model.addAttribute("amount", amount);
//				model.addAttribute("type", type);
//				model.addAttribute("device", device);
//				model.addAttribute("discount", discount);
//				return "ReservationPage3";
//		 	}
//		}

		@RequestMapping(value = "/Car/reservation3", method = RequestMethod.POST,
				params = { "dept", "ret", "deptDate", "deptTime", "returnDate", "returnTime", "type", "carId", "device", "couponName", "couponNo",
						"amount", "count" })
		public String reservation3(HttpServletRequest request, Model model,
			@RequestParam(value = "dept") String dept,
			@RequestParam(value = "ret") String ret,
			@RequestParam(value = "deptDate") String deptDate,
			@RequestParam(value = "deptTime") String deptTime,
			@RequestParam(value = "returnDate") String returnDate,
			@RequestParam(value = "returnTime") String returnTime,
			@RequestParam(value = "type") String type,
			@RequestParam(value = "carId") String carId,
			@RequestParam(value = "device") String device,
			@RequestParam(value = "couponName") String couponName,
			@RequestParam(value = "couponNo") String couponNo,
			@RequestParam(value = "amount") String amount,
			@RequestParam(value = "count") String count) throws SQLException{

			MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");

			if (memberBean == null) {
				// 注意事項①参照
				model.addAttribute("errorMsg","您尚未登入，請登入後再預約");
				return "CarViewPage";
			}
			System.out.println("couponNo：" + couponNo);

			// クーポンBeanの取得
			DiscountBean discountBean = new DiscountBean();
			discountBean.setCouponNumber(couponNo);

			// クーポンBeanの取得
			List<DiscountBean> planList = discountService.getList(discountBean);
			DiscountBean discount = new DiscountBean();

			if(planList!=null && planList.size()>0) {
				discount = planList.get(0);
			} else {
				// 注意事項②参照
			}

		    //協定世界時のUTC 1970年1月1日深夜零時との差をミリ秒で取得
		    long millis = System.currentTimeMillis();

		    //ミリ秒
		    System.out.println(millis);

		    //ミリ秒を引数としてTimestampオブジェクトを作成
		    Timestamp timestamp = new Timestamp(millis);
			ReservationBean rsvBean = new ReservationBean();
			rsvBean.setOrderDate(timestamp);
			rsvBean.setDept(dept);
			rsvBean.setRet(ret);
			rsvBean.setDeptDate(Date.valueOf(deptDate));
			rsvBean.setDeptTime(deptTime);
			rsvBean.setReturnDate(Date.valueOf(returnDate));
			rsvBean.setReturnTime(returnTime);
			rsvBean.setType(type);
			rsvBean.setCarid(Integer.parseInt(carId.trim()));
			rsvBean.setDevice(Integer.parseInt(device.trim()));
			rsvBean.setCouponId(discount.getId());
			rsvBean.setAmount(Integer.parseInt(amount.trim()));
			rsvBean.setCount(Integer.parseInt(count.trim()));
			rsvBean.setMemberId(memberBean.getId());

			System.out.println("ＣａｒＩＤ：" + carId);
			System.out.println("クーポンＩＤ：" + discount.getId());
//			System.out.println("メンバーＩＤ：" + memberBean.getId());

			carService.insert(rsvBean);

			//TODO TEST MAIL
//			carService.sendPlanSuccessEmail("ashley72045@gmail.com", "預約成功信", "歪尼歪");
//			campService.sendRegistEmail();
			carService.sendPlanSuccessEmail(rsvBean, memberBean);

//			new sendMail().sendMail("ashley72045@gmail.com", "weeee", "預約成功信");

			return "ReservationPage3";
		}


		private static int[] removeIntArraysDuplicate(int[] arrays) {

	        if (arrays.length == 0) {
	            return arrays;
	        }

	        HashSet<Integer> hashSet = new HashSet<>();
	        for (Integer i : arrays) {
	            hashSet.add(i);
	        }

	        Integer[] integers = hashSet.toArray(new Integer[0]);
	        int[] array = new int[integers.length];
	        for (int i = 0; i < array.length; i++) {
	            array[i] = integers[i];
	        }

	        return array;
	    }
	}

