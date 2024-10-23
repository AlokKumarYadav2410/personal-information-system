package com.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entites.*;

public class UserDAO {
	private Connection conn;
	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean userRegister(User us) {
		boolean f =false;
		try {
			String sql = "INSERT INTO Users (user_name, user_email, user_password) VALUES (?,?,?);";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPassword());
			ps.executeUpdate();
			f = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public User getLogin(String em, String ps) {
		User us = null;
		try {
			String sql = "SELECT * FROM Users WHERE user_email=? and user_password=?;";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, em);
			stmt.setString(2, ps);
			ResultSet  rs = stmt.executeQuery();
			if(rs.next()) {
				us = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return us;
	}
}

