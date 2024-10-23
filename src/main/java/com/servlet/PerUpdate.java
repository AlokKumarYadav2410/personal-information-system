package com.servlet;

import java.io.IOException;

import com.DAO.PersonDAO;
import com.DB.DBConnect;
import com.entites.PersonInsert;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/update")
public class PerUpdate extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = request.getParameter("email");
		String first_name = request.getParameter("fname");
		
		if(email=="" || first_name == "") {
			HttpSession session = request.getSession();
			session.setAttribute("msg", "Please insert correct email and password...");
			response.sendRedirect("updatepage.jsp");
		}
		
		else {
//			HttpSession session = request.getSession();
//			response.sendRedirect("perupdate.jsp");
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String faname = request.getParameter("faname");
			String maname = request.getParameter("maname");
			String dob = request.getParameter("dob");
			String Gender = request.getParameter("Gender");
			String color = request.getParameter("color");
			String hobby = request.getParameter("hobby");
			
			PersonInsert pi = new PersonInsert();
			pi.setFirst_name(fname);
			pi.setLast_name(lname);
			pi.setFathers_name(faname);
			pi.setMothers_name(maname);
			pi.setDate_of_birth(dob);
			pi.setGender(Gender);
			pi.setFav_color(color);
			pi.setHobbies(hobby);
			
			PersonDAO dao = new PersonDAO(DBConnect.getConnection());
			boolean f = dao.getUpdate(email, pi);
			if(true) {
				HttpSession session = request.getSession();
				session.setAttribute("submit-msg", "Your Details are Inserted Successfully...");
				response.sendRedirect("perupdate.jsp");
				System.out.println("Data is innsereettted");
				
				System.out.println("Inserted basic Personal details");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("not-sub-msg", "Your details are not inserted!!!");
				response.sendRedirect("perupdate.jsp");
			
		}
		}
	}
}
