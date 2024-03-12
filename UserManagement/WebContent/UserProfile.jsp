<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>User_Profile</title>
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
table {
  font-family: arial, sans-serif;
  width: 50%;
}

td {
  text-align: left;
  padding: 8px;
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



<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

<h1>User Profile</h1>

	<table>
	<c:forEach var="us" items ="${usDetails}">
	
	<c:set var ="userId" value="${us.userId}"/>
	<c:set var ="name" value="${us.name}"/>
	<c:set var ="nic" value="${us.nic}"/>
	<c:set var ="email" value="${us.email}"/>
	<c:set var ="phone" value="${us.phone}"/>
	<c:set var ="gender" value="${us.gender}"/>
	<c:set var ="password" value="${us.password}"/>
	<c:set var ="uCategory" value="${us.uCategory}"/>
	
	<tr>
		<td>User Category</td>
		<td>${us.uCategory}</td>
	</tr>
	<tr>
		<td>User ID</td>
		<td>${us.userId}</td>
	</tr>
	
	<tr>
		<td>User Name</td>
		<td>${us.name}</td>
	</tr>
	
	<tr>
		<td>NIC</td>
		<td>${us.nic}</td>
	</tr>
	
		<tr>
		<td>Email</td>
		<td>${us.email}</td>
	</tr>
	
	<tr>
		<td>Contact Number</td>
		<td>${us.phone}</td>
	</tr>
	
	<tr>
		<td>Gender</td>
		<td>${us.gender}</td>
	</tr>
	
	
	</c:forEach>
	</table>
	
	
	<c:url value="UserUpdate.jsp" var="usupdate">
	
	<c:param name ="userId" value="${userId}"/>
	<c:param name ="name" value="${name}"/>
	<c:param name ="nic" value="${nic}"/>
	<c:param name ="email" value="${email}"/>
	<c:param name ="phone" value="${phone}"/>
	<c:param name ="gender" value="${gender}"/>
	<c:param name ="password" value="${password}"/>
	<c:param name ="uCategory" value="${uCategory}"/>
	</c:url>
	
	<a href = "${usupdate}">
	<input type="button" name="update" class="submit2" value="Update User">
	</a><br>
	
	
	<c:url value="UserDelete.jsp" var="usdelete">
	
	<c:param name ="userId" value="${userId}"/>
	<c:param name ="name" value="${name}"/>
	<c:param name ="nic" value="${nic}"/>
	<c:param name ="email" value="${email}"/>
	<c:param name ="phone" value="${phone}"/>
	<c:param name ="gender" value="${gender}"/>
	<c:param name ="password" value="${password}"/>
	<c:param name ="uCategory" value="${uCategory}"/>
	</c:url>
	
	<a href = "${usdelete}">
	<input type="button" name="delete" class="submit3" value="Delete User">
	</a>
<!-- End Page Content -->
</div>


</body>
</html>
