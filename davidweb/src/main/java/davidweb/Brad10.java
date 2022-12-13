package davidweb;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad10")
public class Brad10 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String key1 = request.getParameter("key1");
		String key2 = request.getParameter("key2");
//		String key3 = request.getParameter("key3");
		
		String key3 = (String)request.getAttribute("key3");
		String key4 = (String)request.getAttribute("key4");
		
		
		//-------------
		PrintWriter out = response.getWriter();
		out.print("I am Brad10<br />");
		out.printf("key1 : %s<br />", key1 );
		out.printf("key2 : %s<br />", key2 );
		out.printf("key3 : %s<br />", key3 );
		out.printf("key4 : %s<br />", key4 );
		response.flushBuffer();
	}

}