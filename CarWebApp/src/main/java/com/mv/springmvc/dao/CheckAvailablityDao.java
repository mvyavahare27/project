package com.mv.springmvc.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mv.springmvc.entity.Cars;
import com.mv.springmvc.entity.CheckAvailblity;

/*Name: Mukund 
Title: Dao class for checkavailablity
Date: 16-10-20
*/
@Repository
public class CheckAvailablityDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveData(CheckAvailblity check){
		
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(check);
		tx.commit();
		session.close();
		
	}
	public List listOfCars(){
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		String hql = "FROM Cars";
		Query query = session.createQuery(hql);
		
		List result = query.list();
		
		for(Iterator iterator = result.iterator();iterator.hasNext();)
		{
		Cars c = (Cars) iterator.next();
		
	}
		
		tx.commit();
		session.close();
		return result;
		
	}

}
