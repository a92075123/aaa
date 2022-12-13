package tw.brad.api;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class BradUtils {
	public static String loadView(String view) throws Exception {
		
		String viewFile = String.format(
			"C:\\Users\\USER\\git\\repository7\\BradWeb\\src\\main\\webapp\\views\\%s.html", view); 
		File source = new File(viewFile);
		StringBuffer sb = new StringBuffer();
		
		FileReader fin = new FileReader(source);
		BufferedReader reader = new BufferedReader(fin);
		String line = null;
		while ( (line = reader.readLine()) != null) {
			sb.append(line);
		}
		
		return sb.toString();
	}
	
	public static String sayYa() {
		return "Ya";
	}
	public static String sayYa(String name) {
		return String.format("Ya, %s<br />", name);
	}
	public static String calc(String x, String y) {
		try {
			int intX = Integer.parseInt(x);
			int intY = Integer.parseInt(y);
			int r = intX + intY;
			return r + "";
		}catch(Exception e) {
			return "";
		}
	}
	public static String calc(String x, String y, String op) {
		try {
			int intX = Integer.parseInt(x);
			int intY = Integer.parseInt(y);
			int r = 0, m = 0;
			String ret = "";
			switch(op) {
				case "1": r = intX + intY; ret = r + ""; break;
				case "2": r = intX - intY; ret = r + "";  break;
				case "3": r = intX * intY; ret = r + "";  break;
				case "4": r = intX / intY; m = intX % intY; ret = r + "......" + m; break;
			}
			return ret;
		}catch(Exception e) {
			return "";
		}
	}
	
	public static int createScore() {
		return (int)(Math.random()*101);
	}
	
	public static int nextPage(String page, String pages) {
		int intPages = (int)Double.parseDouble(pages);
		int intPage = Integer.parseInt(page);
		return intPage >= intPages ? intPage : intPage + 1; 
	}
	
	public static String encPasswd(String passwd) {
		return BCrypt.hashpw(passwd, BCrypt.gensalt());
	}
	
}