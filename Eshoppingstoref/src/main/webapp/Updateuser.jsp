<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User Details</title>
<link rel="stylesheet" href="Css/Delivary.css">
<style>
body {
  background-image: url('Photos/back.jpg');
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}



</style>
</head>
<body>

<div class="a">

<h1>E Shopping Store</h1>

</div>

<hr>



<%
		String id = request.getParameter("user_id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
	%>
	
	
	
	<div>
	<form action="Update" method="post">
	<table>
		<tr>
			<td>User ID</td>
			<td><input type="text" name="user_id" value="<%= id %> required" ></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
		<td>Address</td>
		<td><input type="text" name="address" value="<%= address %>"></td>
	</tr>
	
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>
	</div>
	
<hr>

<div class="a">
<h5>Created by Gihan Kavishka</h5>
</div>

</body>
</html>