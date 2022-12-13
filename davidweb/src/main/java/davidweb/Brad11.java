package davidweb;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.api.Bike;

@WebServlet("/Brad11")
public class Brad11 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("Brad12");
		
		request.setAttribute("key3", "200");
		request.setAttribute("key4", "400");
		
		Bike b1 = new Bike();
		b1.upSpeed(); b1.upSpeed();b1.upSpeed();b1.upSpeed();
		System.out.println(b1.getSpeed());
		
		request.setAttribute("b1", b1);
		
		b1.downSpeed();
		System.out.println(b1.getSpeed());
		
		
		
		//------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("Hello, Brad<br />");
		out.print("<hr />");
		out.print("I am Brad11");
		
		dispatcher.forward(request, response);
		
		out.print("<hr />");
		out.print("Copyright...");
		
		response.flushBuffer();
	
	
	}

}

