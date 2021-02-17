package com.yurucamp.member.controller;

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

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.yurucamp.general.model.service.GeneralService;
import com.yurucamp.member.model.MemberBean;
import com.yurucamp.member.model.service.MemberCenterService;
import com.yurucamp.member.utils.DateUtils;

@Controller
@SessionAttributes({"memberId","memberRolse","memberRolse","memberBean"})
public class MemberCenterController {

	String imgstr="https://i.imgur.com/gtsgIJd.png";
	
	@Autowired
	MemberCenterService service ;
	
	@Autowired
	GeneralService generalService;

	@GetMapping("/Member/MemberCenter")
	public String MemberCenter(HttpServletRequest request,Model model) throws SQLException {
		HttpSession session = request.getSession();
		MemberBean mb = new MemberBean();
		String memberId = (String) session.getAttribute("memberId");
		mb = service.queryMem(memberId); 
		model.addAttribute("MemberBean",mb);
		System.out.println(mb.getMemberId());
		System.out.println(mb.getBirthday());
		return "MemberViewPage";
	}

	//註冊
	@PostMapping("/Member/Rer")
	@ResponseBody
	public Map<String, String> Memberadd(Model model,String name,String memberId,String password,String gender,String birthday,String phone,
			String address,String mail,String registerDate,String status,Integer paid,String roles) throws SQLException, Throwable {

		System.out.println("進到Controller");
		System.out.println("memberId="+memberId);		
		
		MemberBean mBean=new MemberBean();
		mBean.setName(name);
		mBean.setMemberId(memberId);
		mBean.setPassword(password);
		mBean.setGender(gender);	
		mBean.setBirthday(DateUtils.StringToDate(birthday));
		System.out.println("birthdaypass="+DateUtils.StringToDate(birthday));
		mBean.setPhone(phone);
		mBean.setAddress(address);	
		mBean.setMail(mail);		
		mBean.setRegisterDate(DateUtils.StringToDateTime());
		System.out.println("registerDatepass=:"+DateUtils.StringToDateTime());
		mBean.setStatus(status);		
		mBean.setPaid(paid);	
		mBean.setRoles(roles);	
		mBean.setImage(imgstr);
		System.out.println("imgstr=:"+imgstr);
		
		System.out.println("Controller-getbean-memberId="+mBean.getMemberId());

		String mes=null;
		mes=service.add(mBean);
		
		System.out.println("DAO回到Controller");
		System.out.println("mes="+mes);
		
		//把成功失敗訊息丟置前端
		Map<String, String> mes1 = new HashMap<String, String>();
		mes1.put("mes", mes); 
		return mes1;
	}
	
	//關鍵字搜尋
	@PostMapping("/Member/search")
	@ResponseBody
	public Map<String, List<MemberBean>> Membersearch(@RequestParam("name")String name,Model model ) throws SQLException, Throwable {
		List<MemberBean> list = service.querySearch(name);
		System.out.println(list);
		
		Map<String, List<MemberBean>> list2 = new HashMap<String, List<MemberBean>>();
		list2.put("list", list); 
		return list2;

		
	}
	
	//寄送註冊信
	@PostMapping("/Member/sendRegisterMail")
	@ResponseBody
	public Map<String,Integer> sendRegisterMail(String mail,String name) throws SQLException, Throwable {
		System.out.println("mail:"+mail);
		Integer num=service.sendRE(mail, name);
		Map<String,Integer> num1 = new HashMap<String,Integer>();
		num1.put("num", num); 
		return num1;
	}
	
	//更新會員資訊
	@PostMapping("/Member/updatemcmem")
	@ResponseBody
	public Map<String, String> updatemcmem(Model model,String birthday,String registerDate,
			String roles,String memberId,String gender,String status,
			Integer paid,String mail,String name,String password,String phone,String image,
			String address,Integer id) throws SQLException, Throwable {
		
		System.out.println("第一站Controller");
		MemberBean mBean=new MemberBean();
		mBean.setId(id);		
		mBean.setName(name);
		mBean.setPassword(password);
		mBean.setPhone(phone);	
		mBean.setAddress(address);
		mBean.setMemberId(memberId);
		mBean.setGender(gender);
		mBean.setBirthday(DateUtils.StringToDate(birthday));
		mBean.setMail(mail);
		mBean.setRegisterDate(DateUtils.StringToDate(registerDate));
		mBean.setStatus(status);
		mBean.setPaid(paid);		
		mBean.setRoles(roles);
		mBean.setImage(image);	
		System.out.println("第一站Controller name ="+mBean.getName());		
		System.out.println("第一站Controller Birthday ="+mBean.getBirthday());
		

		String r=service.update(mBean);
		System.out.println("回到Controller r="+r);
		Map<String, String> mes1 = new HashMap<String, String>();
		mes1.put("r", r); 
		return mes1;
	}
	
	//忘記密碼
	@PostMapping("/Member/forgetinfo")
	@ResponseBody
	public Map<String,Boolean> forgetinfo(Model model,String memberId,String name) throws SQLException, Throwable {
		System.out.println("第一站Controller");
		System.out.println("memberId="+memberId);
		System.out.println("name="+name);	
		Boolean r=service.forget(memberId,name);
		
		Map<String,Boolean> rt = new HashMap<String,Boolean>();
		rt.put("r", r); 
		return rt;

		}
	
	//上傳頭貼
	@PostMapping(value="/Member/registeraddpic",produces= {"application/json"})
	
	public @ResponseBody String registeraddpic(@RequestParam(value="files",defaultValue = "未輸入") MultipartFile file) throws Exception {
		System.out.println("file.getName();="+file.getName());	
		imgstr=generalService.uploadToImgur(file);
		return imgstr ;

		}

	//綠界 成功後打進來，更改付款欄位為1
	@PostMapping("/Member/ecpayDbPaid")
	@ResponseBody	
	public void mbEcPaid(Model model) throws SQLException {
//		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");
		MemberBean memberBean = (MemberBean) model.getAttribute("memberBean");		
		System.out.println("memberBean=");	
		System.out.println(memberBean);	
		System.out.println("memberBean.getPaid()="+memberBean.getPaid());
		memberBean.setPaid(1);
		service.mbPaid(memberBean);
		
	}
	
}
