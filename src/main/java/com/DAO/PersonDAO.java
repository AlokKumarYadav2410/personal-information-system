package com.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entites.PersonInsert;
import com.entites.User;

public class PersonDAO {
	private Connection conn;
	public PersonDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean personInsert(PersonInsert pi) {
		boolean f =false;
		try {
			String sql = "INSERT INTO Person (first_name, last_name, fathers_name, mothers_name, fav_color, hobbies, date_of_birth, gender, email) VALUES (?,?,?,?,?,?,?,?,?);";
			PreparedStatement ps = conn.prepareStatement(sql);
//			ps.setInt(1, pi.getPerson_id());
			ps.setString(1, pi.getFirst_name());
			ps.setString(2, pi.getLast_name());
			ps.setString(3, pi.getFathers_name());
			ps.setString(4, pi.getMothers_name());
			ps.setString(5, pi.getFav_color());
			ps.setString(6, pi.getHobbies());
			ps.setString(7, pi.getDate_of_birth());
			ps.setString(8, pi.getGender());
			ps.setString(9, pi.getEmail());
			ps.executeUpdate();
			f = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public PersonInsert getView(String email, String first_name) {
		PersonInsert pv = null;
		try {
			
			String sql = "SELECT * FROM Person WHERE email=? AND first_name=?;";
			PreparedStatement stmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			stmt.setString(1, email);
			stmt.setString(2, first_name);
			ResultSet  rs = stmt.executeQuery();
			if(rs.next()) {
				pv = new PersonInsert(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return pv;
	}
	
	
	public int getDelete(String email) {
		int i = 0;
		try{
			String sql = "DELETE FROM Person WHERE email = ?;";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, email);
			i = stmt.executeUpdate();
			if (i > 0) {
				System.out.println("Password is Updated Successfully :)");
			} else {
				System.out.println("No such record found in database");
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return i;
	}
	
	public boolean getUpdate(String email, PersonInsert pi) {
		boolean f =false;
		try{
			String sql = "UPDATE Person SET first_name=?, last_name=?, fathers_name=?, mothers_name=?, fav_color=?, hobbies=?, date_of_birth=?, gender=? WHERE email = ?;";
			PreparedStatement ps = conn.prepareStatement(sql);
//			ps.setInt(1, pi.getPerson_id());
			ps.setString(1, pi.getFirst_name());
			ps.setString(2, pi.getLast_name());
			ps.setString(3, pi.getFathers_name());
			ps.setString(4, pi.getMothers_name());
			ps.setString(5, pi.getFav_color());
			ps.setString(6, pi.getHobbies());
			ps.setString(7, pi.getDate_of_birth());
			ps.setString(8, pi.getGender());
			ps.setString(9, pi.getEmail());
			ps.executeUpdate();
			f = true;
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return f;
	}
	
}
