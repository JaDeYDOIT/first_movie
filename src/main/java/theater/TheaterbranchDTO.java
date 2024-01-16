package theater;

public class TheaterbranchDTO {

	private int    branch_id;		//TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY	NOT NULL
	private String region_id;		//VARCHAR(30)	NOT NULL,
	private String branch_name;		//VARCHAR(50)	NOT NULL,
	private String branch_address;	//VARCHAR(255)	NOT NULL,
	private int branch_number;		//TINYINT UNSIGNED	NOT NULL	COMMENT '전체 관수'
	private int branch_seats;		//TINYINT UNSIGNED	NOT NULL	COMMENT '전체 좌석수'
	private String branch_img;		//VARCHAR(255)	 	NULL		COMMENT '지점 사진'
	
	
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
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	public String getBranch_address() {
		return branch_address;
	}
	public void setBranch_address(String branch_address) {
		this.branch_address = branch_address;
	}
	public int getBranch_number() {
		return branch_number;
	}
	public void setBranch_number(int branch_number) {
		this.branch_number = branch_number;
	}
	public int getBranch_seats() {
		return branch_seats;
	}
	public void setBranch_seats(int branch_seats) {
		this.branch_seats = branch_seats;
	}
	public String getBranch_img() {
		return branch_img;
	}
	public void setBranch_img(String branch_img) {
		this.branch_img = branch_img;
	}
	@Override
	public String toString() {
		return "TheaterbranchDTO [branch_id=" + branch_id + ", region_id=" + region_id + ", branch_name=" + branch_name
				+ ", branch_address=" + branch_address + ", branch_number=" + branch_number + ", branch_seats="
				+ branch_seats + ", branch_img=" + branch_img + "]";
	}
	
	
}// class end