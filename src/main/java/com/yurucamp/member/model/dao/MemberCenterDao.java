package com.yurucamp.member.model.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Random;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yurucamp.mallsystem.model.BrandBean;
import com.yurucamp.mallsystem.model.ProductBean;
import com.yurucamp.member.model.MemberBean;

@Repository
public class MemberCenterDao {

	private SessionFactory sessionFactory;
	
	public MemberCenterDao() {
	}

	@Autowired
	public MemberCenterDao(@Qualifier("sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//查詢---會員中心資料
	public MemberBean queryMem(String memberId) throws SQLException {
//		MemberBean memInfo = sessionFactory.getCurrentSession().get(MemberBean.class,memberId);		
		String hql = "from MemberBean where memberId=:memberId";
		System.out.println(hql);
		MemberBean memberBean= (MemberBean) sessionFactory.getCurrentSession().createQuery(hql).setParameter("memberId", memberId).getSingleResult();
		return memberBean ;	 
	}
		
	//新增----註冊
	public String addMem(MemberBean mBean) throws SQLException {
		MemberBean result = null;
		String mes=null;
		try {
			System.out.println("進到Dao");
			String memberId = mBean.getMemberId();
			System.out.println("memberId="+memberId);
			String hql = "FROM MemberBean WHERE memberId=:memberId";
			
//		MemberBean result=getSession().get(MemberBean.class,mBean.getMemberId());
			System.out.println("mes="+mes);
			System.out.println("(MemberBean)="+(MemberBean) sessionFactory.getCurrentSession().createQuery(hql).setParameter("memberId", memberId).getSingleResult());
			
			result = (MemberBean) sessionFactory.getCurrentSession().createQuery(hql).setParameter("memberId", memberId).getSingleResult();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(result);
		}
		if (result==null) {
			sessionFactory.getCurrentSession().save(mBean);
			mes="新增成功";			
			System.out.println("mes="+mes);
			return  mes;
		}
		mes="帳號重複";
		System.out.println("mes="+mes);		
		return  mes;
	}

	//亂數---註冊驗證碼
	public Integer sendRm() throws SQLException {
		
        Random rand=new Random(); 
        
        Integer numa=rand.nextInt(10); 
        Integer numb=rand.nextInt(10); 
        Integer numc=rand.nextInt(10); 
        Integer numd=rand.nextInt(10); 
        Integer nume=rand.nextInt(10); 
        Integer numf=rand.nextInt(10); 
        Integer numg=rand.nextInt(10); 
        Integer num=numa*100000+numb*100000+numc*10000+numd*1000+nume*100+numf*10+numg;
        System.out.println("隨機亂數="+num);
		return num;
		}
	
	//更新會員中心
	public String updatem(MemberBean mbean) {
		System.out.println("進到Dao");
		sessionFactory.getCurrentSession().update(mbean);
		
		String r="更新完成";
		return r;
	}
	
	//忘記密碼--回資料庫確認是否有此筆資料，有的話撈出Bean
	public MemberBean  forgetReturnDb(String memberId,String name) throws SQLException {
		try {
		System.out.println("進到Dao  name="+name);
		String hql = "from MemberBean where memberId=:memberId";
		System.out.println("hql="+hql);
		MemberBean memberBean= (MemberBean) sessionFactory.getCurrentSession().createQuery(hql).setParameter("memberId", memberId).getSingleResult();
		System.out.println("memberBean="+memberBean);
				
		return memberBean;
		} catch (Exception e) {return null;}	
		
	}
	
	//綠界付款成功，更改Membean.paid為1
	public void mbPaidUpdate(MemberBean memberBean) {
		System.out.println("進到Dao");		
		System.out.println("memberBean.getPaid()="+memberBean.getPaid());
		sessionFactory.getCurrentSession().update(memberBean);

	}
	
	public List<MemberBean> querySearch(String name) throws SQLException { //statusId=1 and 
		String hql ="from MemberBean where name like :name";
		Query<MemberBean> query = sessionFactory.getCurrentSession().createQuery(hql,MemberBean.class)
				.setParameter("name", "%"+name+"%");
		List<MemberBean> list = query.list();
		return list;
	}
}
