package com.met.services;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.met.dao.OrderDao;
import com.met.entity.Order;

@Component
public class OrderServices {
	
	@Autowired
	private OrderDao orderDao;
	
	
	public void orderService(Order order) throws SQLException{
		
		
		orderDao.insertOrderData(order);
		
		
	}

}
