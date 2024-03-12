<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Update_User</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel = "stylesheet" type = "text/css" href ="css/admin.css" />
<style>
body {
    background-image: url('images/adashboard.webp');
    min-height: 600px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
</style>
</head>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="Dashboard.jsp" class="w3-bar-item w3-button w3-padding-large">Dashboard</a>
    <a href="UserInsert.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Add New User</a>
    <a href="AllUsers.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">View All User Details</a>
    <a href="Home.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Log Out</a>
    <div class="w3-padding-large w3-hover-red w3-hide-small w3-right">
    <form action="view" method="post">
      <input type="text" placeholder="Search By User ID" name="uid">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
  </div>
</div>


		<%
		String userId = request.getParameter("userId");
	    String name = request.getParameter("name");
	    String nic = request.getParameter("nic");
	    String email = request.getParameter("email");
	    String phone = request.getParameter("phone");
	    String gender = request.getParameter("gender");
	    String password = request.getParameter("password");
	    String uCategory = request.getParameter("uCategory");
	   %>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">
	<h1>Update User Profile</h1>
			<form  action="update" method="post">
		<table>
		
			<tr>
				<td>User Category</td>
				<td><input type="text" name="uCategory" class="text" value="<%= uCategory%>" readonly></td>
			</tr>
			<tr>
				<td>User ID</td>
				<td><input type="text" name="uid" class="text" value="<%= userId%>" readonly></td>
			</tr>
			
			<tr>
				<td>User Name</td>
				<td><input type="text" name="name" class="text" value="<%= name%>" ></td>
			</tr>
			
			<tr>
				<td>NIC</td>
				<td><input type="text" name="nic"  class="text" value="<%= nic%>"></td>
			</tr>
			
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" class="text" value="<%= email%>"></td>
			</tr>
			
			<tr>
				<td>Contact Number</td>
				<td><input type="text" name="phone" class="text" value="<%= phone%>"></td>
			</tr>
			
			<tr>
				<td>Gender</td>
				<td><input type="text" name="gender" class="text" value="<%= gender%>"></td>
			</tr>

			<tr>
				<td><input type="submit" name="submit" class="submit"  value="Save CHanges"/> </td>
			</tr>
		</table>
	</form>
<!-- End Page Content -->
</div>


</body>
</html>
