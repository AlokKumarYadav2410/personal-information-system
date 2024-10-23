<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration-Form</title>
<style type="text/css">
<%@include file="Styling/signup.css" %>
</style>
</head>
<body>
    <div class="container">
        <div class="div2">
            <h1>Personal Information System</h1>
            <img src="images/icon1.png" alt="" height="270px" width="370px">
            <p>Secure your information digitally</p>
        </div>
        <div class="div1">
            <img src="images/auth.png" alt="" height="200" width="300">
           	<%
			String regMsg = (String)session.getAttribute("reg-msg");
			if(regMsg != null){
			%>
            <div class="alert">
                <p><%= regMsg %>, Please Click Login</p>
            </div>
			<%
			session.removeAttribute("reg-msg");
			}
			%>
            <form action="register" method="post" class="regform">
                <label class="lb1" for="">Username:
                <input type="text" name="username" placeholder="Enter your name" class="name1" required>
                </label>
                <label class="lb3" for="">Email:
                <input type="email" name="useremail" class="name2" placeholder="abc@gmail.com" required>
                </label>
                <label class="lb2" for="">Password:
                <input type="password" name="userpass" class="name1" placeholder="Enter your password" required>
                <button class="btn1">Signup</button>
                </label>
            </form>
            <p class="lower">Already a member?&nbsp;<button class="btn2"><a href="login.jsp">Login!</a></button></p>
        </div>
        </div>
</body>
</html>
