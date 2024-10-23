package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.DAO.PersonDAO;
import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entites.PersonInsert;
import com.entites.User;

@WebServlet("/personView")
public class PersonView extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String first_name = request.getParameter("fname");
		String email = request.getParameter("email");
		if(first_name == ""||email=="") {
			HttpSession session = request.getSession();
			session.setAttribute("insert-msg", "Please fill correct first name and eamil...");
			response.sendRedirect("person.jsp");
		}
		else {
			PersonDAO dao = new PersonDAO(DBConnect.getConnection());
			PersonInsert pv = dao.getView(email, first_name);
	
			if(pv != null) {
			
				HttpSession session = request.getSession();
				session.setAttribute("view-ob", pv);
				response.sendRedirect("personview.jsp");
			}
		
			else if(pv == null) {
				HttpSession session = request.getSession();
				session.setAttribute("insert-msg", "No Record found please first insert the data...");
				response.sendRedirect("person.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("error-msg", "Invalid email or password!!!");
				response.sendRedirect("login.jsp");
			}
		}
	}
		
}
//		PersonInsert pu = dao.getUpdate(email, first_name);
	/*
			 * PrintWriter out = response.getWriter(); out.print("Login Successfully");
			 */
//		if(pu != null) {
//			/*
//			 * PrintWriter out = response.getWriter(); out.print("Login Successfully");
//			 */
//			HttpSession session = request.getSession();
//			session.setAttribute("view-ob", pu);
//			response.sendRedirect("personview.jsp");
//		}
//		else {
//			HttpSession session = request.getSession();
//			session.setAttribute("error-msg", "Invalid email or password!!!");
//			response.sendRedirect("login.jsp");
//		}
//		