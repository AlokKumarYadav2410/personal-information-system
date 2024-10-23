package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DAO.PersonDAO;
import com.DB.DBConnect;
import com.entites.PersonInsert;

@WebServlet("/delete")
public class PerosnUpdate extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		
		if(email=="" || password == "") {
			HttpSession session = request.getSession();
			session.setAttribute("msg", "Please insert correct email and password...");
			response.sendRedirect("updatepage.jsp");
		}
		else{
			PersonDAO dao = new PersonDAO(DBConnect.getConnection());
			int del = dao.getDelete(email);
			if(del != 0) {
			/*
			 * PrintWriter out = response.getWriter(); out.print("Login Successfully");
			 */
				HttpSession session = request.getSession();
				session.setAttribute("del", "Details are deleted successfully...");
				response.sendRedirect("updatepage.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("error-msg", "Invalid email or password!!!");
				response.sendRedirect("login.jsp");
			}
		}
	}

}
