package javafiles;

import java.sql.Connection;

import java.sql.Statement;





public class Util {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	
	
	
	
public static boolean insertcustomer(String user_id, String product_id) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = connection.DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into orders values (0,'"+user_id+"','"+product_id+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }






public static boolean updatecustomer(String user_id, String name, String email, String phone, String address) {
	
	
	try {
		
		con = connection.DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update user set name='"+name+"',email='"+email+"',phone='"+phone+"',address='"+address+"'"
				+ "where user_id='"+user_id+"'";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}








public static boolean deleteCustomer(String order_id) {
	
	int convId = Integer.parseInt(order_id);
	
	try {
		
		con = connection.DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from orders where order_id='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}











}
