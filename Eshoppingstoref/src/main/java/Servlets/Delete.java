package Servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String order_id = request.getParameter("order_id");
		boolean isTrue;
		
		isTrue = javafiles.Util.deleteCustomer(order_id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("DeleteSuccess.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
		
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsucsess.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
