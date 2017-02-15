package com.services;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.been.RegistrationBeen;
import com.dbutil.CreateDbConnection;

public class RegistrationService extends CreateDbConnection {
	PreparedStatement ps=null;
	String query=null;
	int rt=-1;
	public int register(RegistrationBeen reg) 
	{
		System.out.println("Registration service");
		System.out.println(reg.getFileName());
		query="insert into tbl_user (vchr_user_fname,vchr_user_lname,vchr_user_email,vchr_user_password,vchr_user_file)"
				+ " values (?,?,?,?,?)";
		System.out.println(query);
		try {
			ps=super.createConnection().prepareStatement(query);
			ps.setString(1, reg.getFname());
			ps.setString(2, reg.getLname());
			ps.setString(3, reg.getEmail());
			ps.setString(4, reg.getPassword());
			ps.setString(5, reg.getFileName());
			rt=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rt;
		
	}

}
