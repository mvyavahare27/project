 package com.mv.springmvc.dao;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.mv.springmvc.entity.Book;
import com.mv.springmvc.entity.Cars;

@Repository
public class BookingDao {
	/*Name: Mukund Vyavahare
	Date:21-10-2020
	Title: Dao*/
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public int saveBookingDetails(Book book){
		
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		int carid = book.getCarid();
		System.out.println(carid);
		String hql = "FROM Book b where b.carid=?";
		Query query = session.createQuery(hql);
		query.setParameter(0, carid);
		List lst = query.list();
		int num = lst.size();
		if(num > 0){
			return num;
		}
		else{
			/*session.save(book);*/
			String hql2 = "Select c.hours , c.rate FROM Cars c INNER JOIN c.book b ";
			Query  query2 = session.createQuery(hql2);
			List lst1 = query2.list();
			int num1 = lst1.size();
			System.out.println("Number: "+num1);
			for(Iterator iterator = lst1.iterator();iterator.hasNext();)
			{
			Object[] obj = (Object[]) iterator.next();
			Integer hours = Integer.parseInt(String.valueOf(obj[0]));
			Float rate = Float.parseFloat(String.valueOf(obj[1]));
			double payment = hours * rate ;
			System.out.println("Total Payment: "+payment);
			}
		}
		tx.commit();
		session.close();
		
		return num;
		
	}
	
	

}
