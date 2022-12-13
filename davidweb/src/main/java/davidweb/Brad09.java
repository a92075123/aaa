package davidweb;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad09")
public class Brad09 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("brad09.html");
//		RequestDispatcher dispatcher = 
//			request.getRequestDispatcher("Brad10?key3=100&key1=200");
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("Brad10");//輸出Brad10的資料
		request.setAttribute("key3", "200");
		request.setAttribute("key4", "400");
		
		//-------------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("Hello, Brad<br />");
		out.print("<hr />");
		
		dispatcher.include(request, response);//輸入資料

		out.print("<hr />");
		out.print("Copyright...");
		
		response.flushBuffer();
	
	}

}