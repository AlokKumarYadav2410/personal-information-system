package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entites.User;

@WebServlet("/register")
public class Register extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = request.getParameter("username");
		String email = request.getParameter("useremail");
		String password = request.getParameter("userpass");
		
		User us = new User();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		UserDAO dao = new UserDAO(DBConnect.getConnection());
		boolean f = dao.userRegister(us);
		
		if(true) {
			HttpSession session = request.getSession();
			session.setAttribute("reg-msg", "Registration Successful...");			
			response.sendRedirect("signup.jsp");
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("error-msg", "Registration Not Successful...");
			response.sendRedirect("signup.jsp");
	     }

   }
}
