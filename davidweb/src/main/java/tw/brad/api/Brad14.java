package tw.brad.api;

public class Brad14 {
	private int x, y, op;
	
	public Brad14(String x, String y, String op) throws Exception {
		this.x = Integer.parseInt(x);
		this.y = Integer.parseInt(y);
		this.op = Integer.parseInt(op);
	}
	public Brad14(String x, String y) throws Exception {
		this(x, y, "1");
	}
	
	public double process() {
		double ret = 0;
		switch (op) {
			case 1: ret = x + y; break;
			case 2: ret = x - y; break;
			case 3: ret = x * y; break;
			case 4: ret = x*1.0 / y; break;
		}
		return ret;
	}
	
}