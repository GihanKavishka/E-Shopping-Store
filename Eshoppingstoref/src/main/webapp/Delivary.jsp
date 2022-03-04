<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String user_id = request.getParameter("user_id");
String product_id = request.getParameter("product_id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "e_shopping_storef";
String userid = "root";
String password = "oopproject";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="Css/Delivary.css">
<style>
body {
  background-image: url('Photos/back.jpg');
}

table, th, td {
  border: 1px solid black;
  background-color:White;
}

table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>
</head>




<body>
<div class="a">

<h1>E Shopping Store</h1>

</div>

<hr>

<div class="a">

<h3>Your Order Reference ID</h3>
<table border="1" class="center">
<tr>
<td>ORDER ID</td>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select order_id from orders where product_id='"+product_id+"' and user_id='"+user_id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("order_id") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>



















<h3>User Details</h3>
<table border="1" class="center">
<tr>
<td>USER ID</td>
<td>Name</td>
<td>Email</td>
<td>Phone</td>
<td>Address</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from user where user_id='"+user_id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("user_id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("address") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<br><br>

<a href="Updateuser.jsp">Update</a>

<br><br><br>






<h3>Your Product Details</h3>

<table border="1" class="center">
<tr>
<td>Product ID</td>
<td>Name</td>
<td>Price</td>

</tr>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from products where product_id='"+product_id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("product_id") %></td>
<td><%=resultSet.getString("p_name") %></td>
<td><%=resultSet.getString("p_price") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>


<br><br>


<a href="DeleteOrder.jsp">Cancel my Order</a>
<br><br>
<a href="Payment.jsp">Make Payments</a>

</div>


<hr>
<div class="a">
<h5>Created by Gihan Kavishka</h5>
</div>




</body>
</html>