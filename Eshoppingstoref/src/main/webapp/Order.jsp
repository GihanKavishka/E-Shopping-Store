<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E Shopping Store</title>

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

<div>
<form method="post" action="Insert"  >
Enter UserID
<input type="text" name ="user_id" placeholder="Enter your user ID here" required><br>

Enter productID
<input type="text" name ="product_id" placeholder="Enter your Product ID here" required>

<input type="submit" name="submit" value="submit" >


</form>
</div>



<hr>

<div class="a">
<h5>Created by Gihan Kavishka</h5>
</div>


</body>
</html>