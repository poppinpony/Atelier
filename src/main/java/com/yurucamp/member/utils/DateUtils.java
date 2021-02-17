package com.yurucamp.member.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class DateUtils {

	public static Date StringToDate(String date) throws ParseException {
		return new SimpleDateFormat("yyyy-MM-dd").parse(date);
	}
	
	public static Date StringToDateTime() throws ParseException {
		Date dNow = new Date( );
	      SimpleDateFormat ft = 
	      new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss.SSS");
	      System.out.println("Current Date: " + ft.format(dNow));
		return dNow;
	   }
}

