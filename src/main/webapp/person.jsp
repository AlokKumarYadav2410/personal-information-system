<%@page import="com.entites.PersonInsert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Home Page</title>

	    <style type="text/css">
    <%@ include file="/Styling/home.css" %>
	<%@ include file="/Styling/responsive.css"%>
	<%@ include file="/Styling/pinsert.css" %>
</style>

</head>

<body>
 <%@include file="menu.jsp" %>
    <main>
        <div class="main_container">

            <div class="sub-containers">
                <!-- <img class="picture" src="img/img1.jpeg" alt="Education" width="200px"> -->
                
                <form action="personView" method="post">
                    <div class="txt main-txt">
                        <h1>For Viewing your details please enter</h1>
                    </div>
                <%
			String subMsg = (String)session.getAttribute("insert-msg");
			if(subMsg != null){
			%>
            <div class="submit-msg">
                <%= subMsg %>
            </div>
			<%
			session.removeAttribute("insert-msg");
			}
			%>
                    <div class="txt">
                        <label for="First Name" class="mg-1">First Name:</label>
                        <input type="text" name="fname" class="name1">
					</div>
                    <div class="txt">
                        <label for="Email" class="email">Email:</label>
                        <input type="email" name="email" class="name1">
                    </div>

                    <div class="btn">
                        <input type="submit" value="Submit Form" class="btnSubmit">
                    </div>

                </form>

            </div>
        </div>
    </main>

    <footer class="flex-all-centre">
        <p>Copyright &copy; All rights Reserved to Alok</p>
    </footer>
</body>
</html>