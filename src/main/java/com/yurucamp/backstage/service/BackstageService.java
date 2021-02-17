package com.yurucamp.backstage.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Service;

import com.yurucamp.backstage.model.CalendarBean;
import com.yurucamp.backstage.model.Test;
import com.yurucamp.member.model.MemberBean;

@Service
public interface BackstageService {

	public List<Test> getAllProducts() throws SQLException ;
    
	public List<MemberBean> getMember(String Account) throws SQLException ;

	public List<CalendarBean> getCalendarQuery(String attribute);

	public void CalendarInsert(String memberId, String start, String end, String title);

	public void CalendarDelete(Integer id);

	public void CalendarUpdate(Integer id,String start, String end, String title);
	
	
}
