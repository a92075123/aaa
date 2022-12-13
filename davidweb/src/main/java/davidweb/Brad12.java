package davidweb;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.api.Bike;

@WebServlet("/Brad12")
public class Brad12 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String key1 = request.getParameter("key1");
		String key2 = request.getParameter("key2");
		
		String key3 = (String)request.getAttribute("key3");
		String key4 = (String)request.getAttribute("key4");
		
		Bike b1 =  (Bike)request.getAttribute("b1");

		//------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("Hello, Brad12<br />");
		out.print("<hr />");
		out.print("I am Brad12<br />");
		
		out.printf("key1 : %s<br />", key1 );
		out.printf("key2 : %s<br />", key2 );
		out.printf("key3 : %s<br />", key3 );
		out.printf("key4 : %s<br />", key4 );
		out.printf("Bike : %f<br />", b1.getSpeed() );
		
		out.print("<hr />");
		out.print("Copyright12...");
		
		response.flushBuffer();

	}
}