<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Unsuccessfull</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel = "stylesheet" type = "text/css" href ="css/manager.css" />
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
a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

a:hover {
  background-color: #ddd;
  color: black;
}

.previous {
  background-color:#04AA6D;
  color: black;
}
.next {
  background-color: #04AA6D;
  color: white;
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
<div align="center">
        <h1>Admin Operation Unsuccessful</h1>
        
        <a href="Dashboard.jsp" class="previous">&laquo; Dashboard</a>
<!-- End Page Content -->
</div>


</body>
</html>
