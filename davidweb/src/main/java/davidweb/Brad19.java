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

@WebServlet("/Brad19")
public class Brad19 extends HttpServlet {
	private Connection conn = null;
	
	public Brad19() {
		Properties prop = new Properties();
		prop.put("user", "root");
		prop.put("password", "root");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("OK");
			conn = DriverManager.getConnection(
				"jdbc:mysql://localhost/eeit53", prop);
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
			ResultSet rs = stmt.executeQuery("SELECT id, name,city,town FROM food ORDER BY id");//ORDER BY id id做排序。
			out.print("<table border='1'>");
			while (rs.next()) {
//				System.out.println(rs.getString(1));
				out.print("<tr>");
				out.printf("<td>%s</td>", rs.getString("id"));
				out.printf("<td>%s</td>", rs.getString("name"));
				out.printf("<td>%s</td>", rs.getString("city"));
				out.printf("<td>%s</td>", rs.getString("town"));
				out.print("</tr>");
			}
			out.print("</table>");
		}catch(Exception e) {
			System.out.println(e);
		}
		
		response.flushBuffer();
		
		
	}
}