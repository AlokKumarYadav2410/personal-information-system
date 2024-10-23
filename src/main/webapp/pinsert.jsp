<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Details Form</title>
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

                <form action="pinsert" method="post">
                    <div class="txt main-txt">
                        <h1>Add you Details</h1>
                    </div>
			<%
			String subMsg = (String)session.getAttribute("submit-msg");
			if(subMsg != null){
			%>
            <div class="submit-msg">
                <%= subMsg %>
            </div>
			<%
			session.removeAttribute("submit-msg");
			}
			%>
                    <div class="txt">
                        <label for="First Name:" class="mg-1">First Name:</label>
                        <input type="text" name="fname" class="name1" required>

                    </div>
                    <div class="txt">
                        <label for="First Name:" class="mg-1">Last Name:</label>
                        <input type="text" name="lname" class="name1" required>

                    </div>
                    <div class="txt">

                        <label for="First Name:" class="mg-2">Father's Name:</label>
                        <input type="text" name="faname" class="name1" required>


                    </div>
                    <div class="txt">

                        <label for="First Name:" class="mg-2">Mother's Name:</label>
                        <input type="text" name="maname" class="name1" required>


                    </div>
                    <div class="txt">

                        <label for="First Name:" class="mg-3">Date of Birth: </label>
                        <input type="date" name="dob" class="name1" required>


                    </div>
                    <div class="txt">
                        <label for="" class="gender">Gender:</label>
                        <label for="male"><input type="radio" name="Gender" value="male" id="male">Male</label>
                        <label for="female"><input type="radio" name="Gender" value="female" id="female">Female</label>
                        <label for="other"><input type="radio" name="Gender" value="other" id="other">Other</label>
                    </div>
                    <div class="txt">
                        <label for="" class="mg-2">Favourite Color:</label>
                        <input type="color" name="color" class="name1" required>
                    </div>
                    <div class="txt">
                        <label for="" class="hobbie">Hobbies:</label>
                        <input type="text" name="hobby" class="name1" required>
                    </div>
					<div class="txt">
                        <label for="" class="email">Email:</label>
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