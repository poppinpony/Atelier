package com.Atelier.config;

import java.util.Properties;

import javax.naming.NamingException;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jndi.JndiObjectFactoryBean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;



@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages = { "com.atelier.product",
								"com.atelier.photoGrapher", 
								})
//SpringJavaConfig設定與資料庫有關的操作
public class SpringJavaConfig {

	@Bean
	public DataSource dataSource() {
		JndiObjectFactoryBean factory = new JndiObjectFactoryBean();
		factory.setJndiName("java:comp/env/jdbc/Atelier");
		factory.setProxyInterface(DataSource.class);

		try {

			// look up context JNDI object
			factory.afterPropertiesSet();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return (DataSource) factory.getObject();

	}

	@Bean
	public SessionFactory sessionFactory() {
		return new LocalSessionFactoryBuilder(dataSource())
				.configure("hibernate.cfg.xml").buildSessionFactory();
	}

	@Bean
	public PlatformTransactionManager transactionManagement() {
		return new HibernateTransactionManager(sessionFactory());

	}
	
	@Bean
	public JavaMailSender javaMailSender() {
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setHost("smtp.gmail.com");
	    mailSender.setPort(587);
	    mailSender.setDefaultEncoding("UTF-8");
	    mailSender.setUsername("alan800103@gmail.com");  //發信人
	    mailSender.setPassword("gdwxshtasmviqlov");  //應用程式金鑰
	     
	    Properties props = mailSender.getJavaMailProperties();
	    props.put("mail.transport.protocol", "smtp");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.debug", "true");
	    
	    return mailSender;
	}
	
}
