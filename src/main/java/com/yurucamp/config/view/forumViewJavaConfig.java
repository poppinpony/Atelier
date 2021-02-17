package com.yurucamp.config.view;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceView;

@Configuration
public class forumViewJavaConfig {

	@Bean
	public View forumClassifyIndexPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Forum/forumClassifyIndex.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}

	@Bean
	public View campDiscussionPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Forum/campDiscussion.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}

	@Bean
	public View memberCreatPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Forum/memberCreat.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}
	@Bean
	public View memberReplyPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Forum/memberReply.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}
	@Bean
	public View memberReadPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Forum/memberRead.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}

	@Bean
	public View memberUpdatePage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Forum/memberUpdate.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}

	@Bean
	public View memberArticleListPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Forum/memberArticleList.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}
	
	@Bean
	public View imgurPage() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Forum/imgur.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}
	
	@Bean
	public View whereList() { // 呼叫此方法名稱及導向設定之jsp
		InternalResourceView view = new InternalResourceView();
		view.setUrl("/WEB-INF/pages/Forum/whereList.jsp"); // 此為範例，自己改路徑，或往下加其他路徑
		return view;
	}
}
