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
<meta charset="ISO-8859-1">
<title>Delivary Admin</title>

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
<h1>ORDERS TO DELIVER</h1>
<table border="1" class="center">
<tr>
<td>ORDER ID</td>
<td>PRODUCT ID</td>
<td>USER ID</td>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from orders ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("order_id") %></td>
<td><%=resultSet.getInt("product_id") %></td>

<td><%=resultSet.getInt("user_id") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>


<a href="AllUsers.jsp">CHECK USERS</a>
<br><br>
<a href="AllProducts.jsp">CHECK PRODUCTS</a>


</div>
<hr>

<div class="a">
<h5>Created by Gihan Kavishka</h5>
</div>

</body>
</html>