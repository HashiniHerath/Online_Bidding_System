<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Add_New_User</title>
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


<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">
	<h1>Add New Employee</h1>
	<form  action="insert" method="post">
		<table>
		
			<tr>
				<td>Choose User Category</td>
				<td><Select name="uCategory" class="text">
					<option>Bidder</option>
					<option>Seller</option>
					</Select>
			   </td>
			</tr>
			<tr>
				<td>User Name</td>
				<td><input type="text" name="name" class="text" placeholder="Full Name" width="100" required/></td>
			</tr>
			<tr>
				<td>NIC</td>
				<td><input type="text" name="nic" class="text" required/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" class="text" placeholder ="example@example.com" required/></td>
			</tr>
			<tr>
				<td>Contact Number</td>
				<td><input type="text" name="phone" class="text" placeholder="(94)000000000" required/></td>
			</tr>
			<tr>
				<td>Choose a Gender</td>
				<td><Select name="gender" class="text">
					<option>Male</option>
					<option>Female</option>
					</Select>
			   </td>
			</tr>
			<tr>
				<td>Assign User ID</td>
				<td><input type="text" name="uid" class="text" placeholder="u+NIC" required/></td>
			</tr>
			<tr>
				<td>Assign Password</td>
				<td><input type="text" name="psw" class="text" required/></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" class="submit"  value="Submit"/> </td>
			</tr>
		</table>
	</form>
<!-- End Page Content -->
</div>


</body>
</html>
