package com.met.services;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.met.dao.RegisterLoginDao;
import com.met.entity.Register;

@Component
public class RegisterLoginService {

	@Autowired
	private RegisterLoginDao registerdao;
	
	public void registerServices(Register register) throws SQLException{
		
		registerdao.registerDao(register);
	}
	
	public boolean isValidService(String username, String password) throws SQLException{
		
		return registerdao.isValidUser(username, password);
	}
}
