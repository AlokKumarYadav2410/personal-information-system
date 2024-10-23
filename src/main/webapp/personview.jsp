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
				<div class="txt main-txt">
					<%
					PersonInsert pv1 = (PersonInsert) session.getAttribute("view-ob");
					%> 
					<%
					if (pv1 != null) {
 					%>
 					<h1><%=pv1.getFirst_name()%> !!! Your Details are</h1>
 					<%
							 }
							%>
				</div>
				<table>
					<tr class="td-txt">
						<td>Your id:</td>
						<td>
							<%
					if (pv1 != null) {
 					%>
								<%=pv1.getPerson_id()%>
							 <%
							 }
							%>
						</td>
					</tr>
					<tr class="td-txt1">
						<td >First Name:</td>
						<td> 
							<%
 							if (pv1 != null) {
 							%>
								<%=pv1.getFirst_name()%>
							 <%
							 }
							%>
						</td>
					</tr>
					<tr class="td-txt">
						<td>Last Name:</td>
						<td>
							<%
 							if (pv1 != null) {
 							%>
								<%=pv1.getLast_name()%>
							 <%
							 }
							%>
						</td>
					</tr>
					<tr class="td-txt1">
						<td >Email:</td>
						<td>
							<%
 							if (pv1 != null) {
 							%>
								<%=pv1.getEmail()%>
							 <%
							 }
							%>
						
						</td>

					</tr>

					<tr class = "td-txt">
						<td>Father's Name:</td>
						<td>
							<%
 							if (pv1 != null) {
 							%>
								<%=pv1.getFathers_name()%>
							 <%
							 }
							%>
						</td>
					</tr>
					<tr class = "td-txt1">
						<td>Mother's Name:</td>
						<td>
							<%
 							if (pv1 != null) {
 							%>
								<%=pv1.getMothers_name()%>
							 <%
							 }
							%>
						</td>
					</tr>
					<tr class="td-txt">
						<td>Date Of Birth:</td>
						<td>
							<%
 							if (pv1 != null) {
 							%>
								<%=pv1.getDate_of_birth()%>
							 <%
							 }
							%>
						</td>
					</tr>
					<tr class="td-txt1">
						<td >Gender:</td>
						<td>
							<%
 							if (pv1 != null) {
 							%>
								<%=pv1.getGender()%>
							 <%
							 }
							%>
						</td>
					</tr>
					<tr class="td-txt">
						<td>Favourite Color:</td>
						<td>
							<%
 							if (pv1 != null) {
 							%>
								<%=pv1.getFav_color()%>
							 <%
							 }
							%>
						</td>
					</tr>
					<tr class="td-txt1">
						<td >Hobbies:</td>
						<td>
							<%
 							if (pv1 != null) {
 							%>
								<%=pv1.getHobbies()%>
							 <%
							 }
							%>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</main>

	<footer class="flex-all-centre">
		<p>Copyright &copy; All rights Reserved to Alok</p>
	</footer>
</body>

</html>