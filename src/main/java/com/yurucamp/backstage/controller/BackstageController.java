package com.yurucamp.backstage.controller;

import java.sql.SQLException;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.yurucamp.backstage.model.CalendarBean;
import com.yurucamp.backstage.model.Test;
import com.yurucamp.backstage.service.BackstageService;
import com.yurucamp.member.model.MemberBean;

@Controller
@RequestMapping("/Backstage")
public class BackstageController {
	
	@Autowired
	BackstageService backstageService;
	
	
	
//	@Autowired
//	MemberService memberService;
	
	@GetMapping("/index")
	public String backstageIndex() {
//		return "Backstage/index";
		return "backstageViewPage";
	}
	
	@GetMapping("/member")
	public String backstageMemberIndex() {
		return "backstageMemberViewPage";
	}
	
	@GetMapping("/camp")
	public String backstageCampIndex() {
		return "backstagewebSocketTest";
	}
	
	@GetMapping("/socket")
	public String backstageWebSocketIndex() {
		return "backstagewebSocket";
	}
	
	@GetMapping("/forum")
	public String backstageForumIndex() throws SQLException {
		List<Test> products = backstageService.getAllProducts();
		
		for(Test s:products) {
			System.out.println("test"+s.getName());
		}
		return "backstageForumViewPage";
	}
	
	@GetMapping("/calendar")
	public String backstageCalendarIndex() throws SQLException {
		
		return "backstageCalendarViewPage";
	}
	
	@PostMapping("/memberSearc")
	@ResponseBody
	public String backstageMemberSearc(Model model,String Account) throws SQLException {
		List<MemberBean> memberData = backstageService.getMember(Account);
		String json = JSONArray.toJSONString(memberData);
		System.out.println("json"+json);
		return json;
	}
	
	@PostMapping("/calendarQuery")
	@ResponseBody
	public String backstageCalendarQuery(HttpServletRequest request) throws SQLException {
		HttpSession session = request.getSession();
		List<CalendarBean> calendarQuery = backstageService.getCalendarQuery((String) session.getAttribute("memberId"));
		String json = JSONArray.toJSONString(calendarQuery);
		
		return json;
	}
	
	@PostMapping("/calendarInsert")
	@ResponseBody
	public Map<String, String> backstageCalendarInset(HttpServletRequest request,String start,String end,String title) throws SQLException {
		Map<String, String> rtnMap = new HashMap<String, String>();
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("memberId");
		backstageService.CalendarInsert(memberId,start,end,title);
		rtnMap.put("msg", "新增成功");
		return rtnMap;
	}
	
	
	@PostMapping("/calendarDelete")
	@ResponseBody
	public Map<String, String> backstageCalendarDelete(Integer id) throws SQLException {
		Map<String, String> rtnMap = new HashMap<String, String>();
		backstageService.CalendarDelete(id);
		rtnMap.put("msg", "刪除成功");
		return rtnMap;
	}
	
	@PostMapping("/calendarUpdate")
	@ResponseBody
	public Map<String, String> backstageCalendarUpdate(Integer id,String start,String end,String title) throws SQLException {
		System.out.println("id"+id);
		System.out.println("start"+start);
		System.out.println("end"+end);
		System.out.println("title"+title);
		backstageService.CalendarUpdate(id,start,end,title);
		Map<String, String> rtnMap = new HashMap<String, String>();
//		backstageService.CalendarDelete(id);
		rtnMap.put("msg", "更新成功");
		return rtnMap;
	}
	
	
	
}
