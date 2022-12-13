package davidweb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.crypto.spec.RC2ParameterSpec;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad18")
public class Brad18 extends HttpServlet {
	private Connection conn = null;
	
	public Brad18() {
		Properties prop = new Properties();
		prop.put("user", "root");
		prop.put("password", "root");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("OK");
			conn = DriverManager.getConnection(
				"jdbc:mysql://localhost", prop);
		}catch(Exception e) {
			System.out.println(e.toString());
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (conn == null) return;
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("show databases");
			out.print("<table border='1'>");
			while (rs.next()) {//直到rs裡面的內容被輸出完
				System.out.println(rs.getString(1));
				out.printf("<tr><td>%s</td></tr>", rs.getString(1));//rs.getString第一列數據值
			}//<td>創造格子包起來，<tr>垂直排列
			out.print("</table>");
		}catch(Exception e) {
			System.out.println(e);
		}
		
		response.flushBuffer();
		
		
	}
}