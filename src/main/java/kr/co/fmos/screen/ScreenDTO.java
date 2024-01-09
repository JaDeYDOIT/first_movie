package kr.co.fmos.screen;

public class ScreenDTO {
	private int screen_id;
	private int branch_id;
	private String screen_location;
	private int screen_seat_count;
	private int screen_row;
	private int screen_low;

	public int getScreen_id() {
		return screen_id;
	}

	public void setScreen_id(int screen_id) {
		this.screen_id = screen_id;
	}

	public int getBranch_id() {
		return branch_id;
	}

	public void setBranch_id(int branch_id) {
		this.branch_id = branch_id;
	}

	public String getScreen_location() {
		return screen_location;
	}

	public void setScreen_location(String screen_location) {
		this.screen_location = screen_location;
	}

	public int getScreen_seat_count() {
		return screen_seat_count;
	}

	public void setScreen_seat_count(int screen_seat_count) {
		this.screen_seat_count = screen_seat_count;
	}

	public int getScreen_row() {
		return screen_row;
	}

	public void setScreen_row(int screen_row) {
		this.screen_row = screen_row;
	}

	public int getScreen_low() {
		return screen_low;
	}

	public void setScreen_low(int screen_low) {
		this.screen_low = screen_low;
	}
}
