package com.met.dao;

import java.sql.SQLException;


import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.met.entity.Order;
import com.met.entity.Register;

@Repository
public class OrderDao {
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void  insertOrderData(Order order) throws SQLException{
		
		//System.out.println(order);
		int count = jdbcTemplate.queryForObject("select rowcount from view_Order ", Integer.class);
	
		int num=1000;
		int id=num + count +1;
		order.setOrderId(id);
		
			jdbcTemplate.update("insert into order_detail(orderid,itemqty,containerqty,item_name) values(?,?,?,?)",
		
				new Object[]{
						order.getOrderId(),
						order.getItemqty(),
						order.getContainerQty(),
						order.getItem_Name(),	
				});
	}
	
	

}
