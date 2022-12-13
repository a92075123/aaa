package tw.brad.api;

public class Bike {
	private double speed;
	public void upSpeed() {
		speed = speed < 1? 1 :speed*1.5;
	}
	public void downSpeed() {
		speed = speed < 1? 0: speed * 0.6;
	}
	public double getSpeed() {
		return speed;
	}
}
