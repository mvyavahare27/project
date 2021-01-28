package com.met.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;
import javax.transaction.Transaction;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.met.entity.Register;
import oracle.jdbc.OraclePreparedStatement;

@Repository
public class RegisterLoginDao {

	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	/*@Transactional(rollbackFor=Exception.class)
	*/
	public void registerDao(Register register) throws SQLException{
		
		System.out.println(register);
		
		int count = jdbcTemplate.queryForObject("select rowcount from view_login", Integer.class);
		
		int num = 100;
		
		int id = num + count +1;
		register.setCustid(id);
		
		try
		{
		jdbcTemplate.update("insert into registertbl values(?,?,?,?,?,?,?)",
				
				new Object[]{
						
						register.getCustid(),
						register.getFirstname(),
						register.getLastname(),
						register.getMobileno(),
						register.getAddress(),
						register.getCountry(),
						register.getPincode()
						
				});
		}
		catch(Exception e)
		{
			System.out.println("Table not found");
		}
		
		jdbcTemplate.update("insert into logintbl values(?,'user',?,?)",
		
				new Object[]{
						
						register.getCustid(),
						register.getUsername(),
						register.getPassword()
				});
		
		
		
	}
	

	public boolean isValidUser(String username, String password) throws SQLException
    {
		Connection connection = null;
		OraclePreparedStatement pstmt = null;
 		
 		connection = dataSource.getConnection();
 		String query = "Select username,password from logintbl where username = ? and password = ?";
 		 
 		 String un = username;
 		 String pwd = password;
 		 
 		 System.out.println("username" + un + "\t" + "password" +pwd);
 		 
        pstmt = (OraclePreparedStatement) connection.prepareStatement(query);
         
 		 //pstmt = (PreparedStatement) connection.prepareStatement("Select * from logintbl where username = ? and password = ?");
 		 
 		 pstmt.setString(1, username);
         pstmt.setString(2, password);
         
         ResultSet resultSet = pstmt.executeQuery();
         if(resultSet.next())
             
        	return true;
         
         else
            return false;
        }
}

	
	
	
	
	
	
	
	
	
	
	

