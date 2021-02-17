package com.yurucamp.camp.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.yurucamp.camp.model.CampInfo;
import com.yurucamp.camp.model.service.CampService;

@Controller
public class CampController {

	@Autowired
	CampService service;

	@GetMapping("/CampSite/Index")
	public String campIndex() {
//		return "CampSite/campSiteIndex";
		return "CampSiteIndex";
	}

	@GetMapping("/CampSite/index") // FakeIndex
	public String campindex() {
		return "CampSiteindex";
	}

	@PostMapping("/CampSite/Insert") // 新增
	public String InsertCamp(@ModelAttribute("campInfo") CampInfo ci, BindingResult result, Model model)
			throws SQLException {
		service.saveOrUpdate(ci);
		System.out.println("Already Save Object.id = " + ci.getName());
		return "QueryAllCamp";
	}

	@PostMapping("/CampSite/UpdateCamp") // 更改
	public String UpdateCamp(@ModelAttribute("campInfo") CampInfo ci, BindingResult result, Model model)
			throws SQLException {
		if (model.getAttribute("campImage") != null)
			ci.setImage((String) model.getAttribute("campImage"));
		service.saveOrUpdate(ci);
		System.out.println("Already update Object.id = " + ci.getName());
		System.out.println("Already update Object.id = " + ci.getImage());
		return "UpdateCamp";
	}

	@GetMapping("/CampSite/PureInsert") // 新增前置作業
	public String PureInsert(Model model) {
		CampInfo ci = new CampInfo();
		model.addAttribute("campInfo", ci);
		return "InsertCamp";
	}

	@GetMapping("/CampSite/QueryOne/{id}")
	public String QueryOne(@PathVariable int id, Model model) throws SQLException {
		CampInfo ci = service.queryCamp(id);
		String image = new String();
		image = ci.getImage();
		System.out.println("QueryOne = " + image);
		if (ci.getImage() != null)
			model.addAttribute("campImage", image);
		model.addAttribute("campInfo", ci);
		return "UpdateCamp";
	}

	@GetMapping("/CampSite/DeleteOne/{id}")
	public String DeleteOne(@PathVariable int id, Model model) throws SQLException {
		service.deleteCamp(id);
		List<CampInfo> list = service.queryAllCamp();
		model.addAttribute("campInfo", list);
		return "QueryAllCamp";
	}

	@GetMapping("/CampSite/QueryAllCamp")
	public String QueryAllCamp(Model model) throws SQLException {
		List<CampInfo> list = service.queryAllCamp();
		model.addAttribute("campInfo", list);
		return "QueryAllCamp";
	}

	@GetMapping("/CampSite/Test")
	public String Test(Model model) throws SQLException {
		return "Test";
	}

	@GetMapping("/CampSite/reCAPTCHA_v2")
	public String reCAPTCHA_v2(Model model) throws SQLException {
		return "reCAPTCHA_v2";
	}

	@GetMapping("/CampSite/reCAPTCHA_v3")
	public String reCAPTCHA_v3(Model model) throws SQLException {
		return "reCAPTCHA_v3";
	}

	@GetMapping("/CampSite/xldkayu186")
	public String xldkayu186() throws SQLException {
		return "xldkayu186";
	}

	@GetMapping("/CampSite/TestOne")
	public String Mail() throws SQLException {
//		service.sendRegistEmail();
		return "TestOne";
	}

}
