<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>For Update and Delete</title>

   <style type="text/css">
    <%@ include file="/Styling/home.css" %>
	<%@ include file="/Styling/responsive.css"%>
	<%@ include file="/Styling/pinsert.css" %>
	
	body {
	background-color: white;
    background-image: url("images/2.jpeg");
    background-size: contain;
}
   </style>

</head>

<body>
	
  <%@include file="menu.jsp" %>
    <main>

        <div class="main_container">

            <div class="sub-containers">
                <!-- <img class="picture" src="img/img1.jpeg" alt="Education" width="200px"> -->
                
                <form action="update" method="post">
                    <div class="h1-txt">
                        <h1>For Updating your details please enter</h1>
                    </div>
                
                    <div class="up-txt">
                        <label for="First Name:">First Name:</label>
                        <input type="text" name="fname" class="name1">
					</div>
                    <div class="up-txt">
                        <label for="" >Email:</label>
                        <input type="email" name="email" class="name1 lb1">
                    </div>

                    <div class="btn">
                        <input type="submit" value="To Update" class="btnSubmit">
                    </div>

                </form>

                <form  action="delete" method="post">
                    <div class="h1-txt">
                        <h1>If you want to delete your details please enter</h1>
                        <%
		String del = (String)session.getAttribute("del");
	%>
	  <%
		if(del != null){
			%>
			<h2><%=del %></h2>
		<%
		session.removeAttribute("del");
		}
	%>
	
	                        <%
		String msg1 = (String)session.getAttribute("msg");
	%>
	  <%
		if(msg1 != null){
			%>
			<h2><%=msg1 %></h2>
		<%
		session.removeAttribute("msg");
		}
	%>
                    </div>
                
                    <div class="up-txt">
                        <label for="pass" >Password:</label>
                        <input type="password" name="pass" class="name1 lb2">
					</div>
                    <div class="up-txt">
                        <label for="">Email:</label>
                        <input type="email" name="email" class="name1 lb1">
                    </div>

                    <div class="btn">
                        <input type="submit" value="Delete" class="btnSubmit btnDel">
                    </div>

                </form>

            </div>
        </div>
    </main>

    <footer class="flex-all-centre">
        <p>Copyright &copy; All rights Reserved to Alok</p>
    </footer>
	
	<script type="text/javascript">
		function showPopup(){
			alert("Data is Deleted Successfully");
		}
		function showMsg(){
			alert("Please insert correct email and password...");
		}
	</script>
	
	<%
		if(del != null){
			out.println("<script>showPopup();</script>");
		}
	%>
	
		
	<%
		if(msg1 != null){
			out.println("<script>showMsg();</script>");
		}
	%>
	
</body>
</html>