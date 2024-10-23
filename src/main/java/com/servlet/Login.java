package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entites.User;

@WebServlet("/login")
public class Login extends HttpServlet {

       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("useremail");
		String password = request.getParameter("pass");
		
		UserDAO dao = new UserDAO(DBConnect.getConnection());
		User user = dao.getLogin(email, password);
		
		String date = new Date().toString(); //This is used to show date 
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user-ob", user);
			session.setAttribute("date", date); //we have provided key for the date value
			response.sendRedirect("home.jsp");
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("error-msg", "Invalid email or password!!!");
			response.sendRedirect("login.jsp");
		}
	}

}
