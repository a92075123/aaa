package davidweb;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad04")
public class Brad04 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		Enumeration<String> names = request.getParameterNames();
//		while (names.hasMoreElements()) {
//			String name = names.nextElement();
//			String value = request.getParameter(name);
//			System.out.printf("%s : %s\n", name, value);
//		}
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		
		int intX = Integer.parseInt(x);
		int intY = Integer.parseInt(y);
		int result = intX + intY;
		
		
		//-----------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.printf("%d + %d = %d", intX, intY, result);
		response.flushBuffer();
		
		
	
	}
}