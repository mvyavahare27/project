package com.met.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.met.entity.Booking;

@Repository
public class BookingDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void insertBookingDetails(Booking booking){
		
		String sql = "insert into ordertbl value(?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, 
					
				new Object[]{
						
						booking.getFirstname(),
						booking.getLastname(),
						booking.getMobileno(),
						booking.getAddress(),
						booking.getUsername(),
						booking.getPickup_date(),
						booking.getDrop_date()
			
			
		});
		
		
	}

}
