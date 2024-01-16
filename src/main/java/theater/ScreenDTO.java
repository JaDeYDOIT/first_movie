package theater;

public class ScreenDTO extends TheaterbranchDTO {

	private int screen_id;			//TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY	NOT NULL,
	private int branch_id;			//TINYINT UNSIGNED	NOT NULL,
	private String region_id;		//VARCHAR(30)	NOT NULL,
	private String screen_location;	//VARCHAR(20)	NOT NULL	COMMENT 'ex) 1관, 2관, 3관',
	private int screen_seat_count;	//TINYINT UNSIGNED	NOT NULL,
	private int screen_row;			//TINYINT UNSIGNED	NOT NULL,
	private String screen_line;		//TINYINT UNSIGNED	NOT NULL	COMMENT 'A,B,C'
	
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
	public String getRegion_id() {
		return region_id;
	}
	public void setRegion_id(String region_id) {
		this.region_id = region_id;
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
	public String getScreen_line() {
		return screen_line;
	}
	public void setScreen_line(String screen_line) {
		this.screen_line = screen_line;
	}
	@Override
	public String toString() {
		return "ScreenDTO [screen_id=" + screen_id + ", branch_id=" + branch_id + ", region_id=" + region_id
				+ ", screen_location=" + screen_location + ", screen_seat_count=" + screen_seat_count + ", screen_row="
				+ screen_row + ", screen_line=" + screen_line + "]";
	}
	
	
}
