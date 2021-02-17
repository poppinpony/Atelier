package com.yurucamp.config.view;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceView;

@Configuration
public class memberViewJavaConfig {

	//會員中心
	@Bean
	public View MemberViewPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Member/memberCenter.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}
	
	//首頁
	@Bean
	public View YuruPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Index/index.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view; 
	}

}
