package davidweb;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.api.Brad14;

@WebServlet("/Brad13")
public class Brad13 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 接收參數
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String op = request.getParameter("op");
		
		// 2. 演算法 Model
		try {
			Brad14 model = new Brad14(x, y, op);
			double result = model.process();
			
			request.setAttribute("result", result); // int -> autoboxing -> Integer
			
		}catch(Exception e) {
			
		}
		
		// 3. 呈現 View
		request.setAttribute("view", "view2");
		try {
			request.setAttribute("op1", op.equals("1")?"selected":"");
			request.setAttribute("op2", op.equals("2")?"selected":"");
			request.setAttribute("op3", op.equals("3")?"selected":"");
			request.setAttribute("op4", op.equals("4")?"selected":"");
		}catch(Exception e) {
			request.setAttribute("op1", "");
			request.setAttribute("op2", "");
			request.setAttribute("op3", "");
			request.setAttribute("op4", "");
		}
		
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("Brad15");
		dispatcher.forward(request, response);
		
		
	}

}