package kr.co.fmos.screen;

public class ScreenDTO {
	private int screen_id;
	private int branch_id;
	private String screen_location;
	private int screen_row;
	private int screen_line;

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

	public int getScreen_row() {
		return screen_row;
	}

	public void setScreen_row(int screen_row) {
		this.screen_row = screen_row;
	}

	public int getScreen_line() {
		return screen_line;
	}

	public void setScreen_line(int screen_line) {
		this.screen_line = screen_line;
	}

	@Override
	public String toString() {
		return "ScreenDTO [screen_id=" + screen_id + ", branch_id=" + branch_id + ", screen_location=" + screen_location
				+ ", screen_seat_count=" + ", screen_row=" + screen_row + ", screen_line="
				+ screen_line + "]";
	}

}
