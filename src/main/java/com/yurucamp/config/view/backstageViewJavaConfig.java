package com.yurucamp.config.view;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceView;

@Configuration
public class backstageViewJavaConfig {

	@Bean
	public View backstageViewPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Backstage/index.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}
	
	@Bean
	public View backstageMemberViewPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Backstage/member.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}
	
	@Bean
	public View backstageForumViewPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Backstage/forum.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}
	
	@Bean
	public View backstageCalendarViewPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Backstage/calendar.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}
	@Bean
	public View backstagewebSocketTest() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Backstage/webSocket.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}
	@Bean
	public View backstagewebSocket() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Backstage/clientWebSocket.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}

}
