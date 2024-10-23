
<%@page import="java.util.Date"%>
<%@page import="com.DAO.UserDAO"%>
<%@page import="com.entites.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
User user = (User) session.getAttribute("user-ob");
if (user == null) {
	session.setAttribute("login-msg", "Please Login First...");
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<style type="text/css">

<%@ include file="Styling/home.css" %>
<%@ include file="Styling/responsive.css"%>
</style>
</head>
<body>
<%@include file="menu.jsp" %>
	<main>
		<%
		User user1 = (User) session.getAttribute("user-ob");
		String date = (String) session.getAttribute("date");
		%>
		<% if(user1 != null)
		{%>
		<h1>
			Welcome
			<%=user1.getName()%>!!!
		</h1>
		<% } %>
		
		
		<!-- To show date we have first created the attribute in login and then get the attribute 
         Today is <%= date %>
          -->
		<div class="main_container">

			<div class="sub-containers">
				<img class="picture" src="images/img1.jpeg" alt="Education"
					width="200px">
				<p>Personal Information</p>
				<a href="pinsert.jsp">Insert</a> 
				<a href="updatepage.jsp">Update</a> 
				<a href="person.jsp">View</a>

			</div>
			<div class="sub-containers">
				<img class="picture" src="images/img2.jpeg" alt="Education"
					width="200px">
				<p>Educational Qualification</p>
				<a href="#">Insert</a> <a href="#">Update</a> <a href="#">View</a>
			</div>
			<div class="sub-containers">
				<img class="picture" src="images/img3.jpeg" alt="Education"
					width="200px">
				<p>Financial Information</p>
				<a href="#">Insert</a> <a href="#">Update</a> <a href="#">View</a>
			</div>
			<div class="sub-containers">
				<img class="picture" src="images/img4.jpeg" alt="Education"
					width="200px">
				<p>Professional Qualification</p>
				<a href="#">Insert</a> <a href="#">Update</a> <a href="#">View</a>
			</div>
			<div class="sub-containers">
				<img class="picture" src="images/img5.jpeg" alt="Education"
					width="200px">
				<p>Vehicle Information</p>
				<a href="#">Insert</a> <a href="#">Update</a> <a href="#">View</a>
			</div>
			<div class="sub-containers">
				<img class="picture" src="images/img6.jpeg" alt="Education"
					width="200px">
				<p>Medical Information</p>
				<a href="#">Insert</a> <a href="#">Update</a> <a href="#">View</a>
			</div>
		</div>
	</main>
	<footer class="flex-all-centre">
		<p>Copyright &copy; All rights Reserved to Alok</p>
	</footer>
</body>
</html>