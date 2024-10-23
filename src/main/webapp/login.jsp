<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login-Form</title>
<style type="text/css">
<%@include file="Styling/login.css" %>
</style>
</head>
<body>
    <div class="container">
        <div class="div1">
            <img src="images/auth.png" alt="" height="200" width="300">
            <%
            String logoutMsg = (String)session.getAttribute("logout-msg");
            if (logoutMsg != null){
            %>
            <div class="alert">
                <h1><%= logoutMsg%></h1>
            </div>
            <%
            session.removeAttribute("logout-msg");
             }
            %>
     <!--Error Message  -->
            <%
            String errorMsg = (String)session.getAttribute("error-msg");
            if(errorMsg != null){
            %>
            <div class="alert1">
                <h1><%= errorMsg%></h1>
            </div>
            <%
            session.removeAttribute("error-msg");
            }
            %>
            <form action="login" method="post" class="regform">
                <label class="lb1" for="">Email:
                <input type="email" name="useremail" class="name2" placeholder="abc@gmail.com" required>
                </label>
                <label class="lb2" for="">Password:
                <input type="password" name="pass" class="name1" placeholder="Enter your password" required>
                <button class="btn1">Login</button>
                </label>
            </form>
            <p class="lower">Not a member? &nbsp; <button class="btn2"><a href="signup.jsp">Signup!</a></button></p>
        </div>
        <div class="div2">
            <h1>Personal Information System</h1>
            <img src="images/icon1.png" alt="" height="270px" width="370px">
            <p>Secure your information digitally</p>
        </div>
        </div>
</body>
</html>