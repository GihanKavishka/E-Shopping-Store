<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cancel Your Order</title>
<link rel="stylesheet" href="Css/Delivary.css">
<style>
body {
  background-image: url('Photos/back.jpg');
}
</style>
</head>
<body>

<div class="a">

<h1>E Shopping Store</h1>

</div>

<hr>


<form method="post" action="./Delete">

Enter Your Order ID
<input type="text" name="order_id" required >
<input type="submit" name="submit" value="Cancel Order">



</form>

<hr>

<div class="a">
<h5>Created by Gihan Kavishka</h5>
</div>


</body>
</html>