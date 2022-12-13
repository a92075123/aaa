package davidweb;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ImageIcon;

@WebServlet("/Brad16")
public class Brad16 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int w = 400, h = 20;
		double rate = 0;	// 50%
		
		try {
			String r = request.getParameter("rate");
			rate = Double.parseDouble(r);
		}catch(Exception e) {}
		
		//------------
		response.setContentType("image/jpeg");
		BufferedImage bimg = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		Graphics2D g2d = bimg.createGraphics();
		
		g2d.setColor(Color.YELLOW);
		g2d.fillRect(0, 0, w, h);
		g2d.setColor(Color.RED);
		g2d.fillRect(0, 0, (int)(w*rate/100.0), h);
		
		
		OutputStream out = response.getOutputStream();
		ImageIO.write(bimg, "jpeg", out);
		
		response.flushBuffer();
	}

}