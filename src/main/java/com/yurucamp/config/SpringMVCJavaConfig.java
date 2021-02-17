package com.yurucamp.config;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.BeanNameViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.yurucamp.camp.controller",
								"com.yurucamp.car.controller", 
								"com.yurucamp.forum.controller",
								"com.yurucamp.mallsystem.controller",
								"com.yurucamp.backstage.controller",
								"com.yurucamp.general.controller",								
								"com.yurucamp.member.controller" })

//SpringMVCJavaConfig設定與MVC有關的操作
//註冊ViewJavaConfig
@Import({ com.yurucamp.config.view.campViewJavaConfig.class,
          com.yurucamp.config.view.carViewJavaConfig.class,
          com.yurucamp.config.view.mallSystemViewJavaConfig.class,
          com.yurucamp.config.view.backstageViewJavaConfig.class,
          com.yurucamp.config.view.memberViewJavaConfig.class,
          com.yurucamp.config.view.forumViewJavaConfig.class,
		  com.yurucamp.config.view.GeneralViewJavaConfig.class})
public class SpringMVCJavaConfig implements WebMvcConfigurer {
	@Autowired
	ServletContext servletContext;

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/static/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/static/js/");
		registry.addResourceHandler("/img/**").addResourceLocations("/WEB-INF/static/img/");
		registry.addResourceHandler("/fonts/**").addResourceLocations("/WEB-INF/static/fonts/");
		registry.addResourceHandler("/ionicons/**").addResourceLocations("/WEB-INF/static/ionicons/");
	}

	// 集中管理View Java Config，只要呼叫方法名稱即能導向路徑
	@Bean
	public ViewResolver beanNameViewResolver() {
		BeanNameViewResolver bnvr = new BeanNameViewResolver();
		bnvr.setOrder(10);
		return bnvr;
	}
	
	@Bean
	public CommonsMultipartResolver multipartResolver() {
	    CommonsMultipartResolver resolver=new CommonsMultipartResolver();
	    resolver.setDefaultEncoding("utf-8");
	    resolver.setMaxUploadSize(819200000);
	    return resolver;
	}

}
