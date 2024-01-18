package kr.co.fmos.customer;

public class RentalDTO {

	private long rental_inquiry_id;
	private String rental_inquiry_area;
	private String rental_inquiry_place;
	private String rental_inquiry_theater;
	private String rental_inquiry_date;
	private String rental_inquiry_start;
	private String rental_inquiry_end;
	private String rental_inquiry_movie;
	private String rental_inquiry_people_count;
	private String rental_inquiry_title;
	private String rental_inquiry_content;
	private String rental_inquiry_name;
	private String rental_inquiry_phone;
	private String rental_inquiry_pw;
	private String rental_inquiry_review;
	private String rental_inquiry_datetime;
	
	public RentalDTO() {}

	
	public long getRental_inquiry_id() {
		return rental_inquiry_id;
	}


	public void setRental_inquiry_id(long rental_inquiry_id) {
		this.rental_inquiry_id = rental_inquiry_id;
	}

	public void setRental_inquiry_id(int rental_inquiry_id) {
		this.rental_inquiry_id = rental_inquiry_id;
	}

	public String getRental_inquiry_area() {
		return rental_inquiry_area;
	}

	public void setRental_inquiry_area(String rental_inquiry_area) {
		this.rental_inquiry_area = rental_inquiry_area;
	}

	public String getRental_inquiry_place() {
		return rental_inquiry_place;
	}

	public void setRental_inquiry_place(String rental_inquiry_place) {
		this.rental_inquiry_place = rental_inquiry_place;
	}

	public String getRental_inquiry_theater() {
		return rental_inquiry_theater;
	}

	public void setRental_inquiry_theater(String rental_inquiry_theater) {
		this.rental_inquiry_theater = rental_inquiry_theater;
	}

	public String getRental_inquiry_date() {
		return rental_inquiry_date;
	}

	public void setRental_inquiry_date(String rental_inquiry_date) {
		this.rental_inquiry_date = rental_inquiry_date;
	}

	public String getRental_inquiry_start() {
		return rental_inquiry_start;
	}

	public void setRental_inquiry_start(String rental_inquiry_start) {
		this.rental_inquiry_start = rental_inquiry_start;
	}

	public String getRental_inquiry_end() {
		return rental_inquiry_end;
	}

	public void setRental_inquiry_end(String rental_inquiry_end) {
		this.rental_inquiry_end = rental_inquiry_end;
	}

	public String getRental_inquiry_movie() {
		return rental_inquiry_movie;
	}

	public void setRental_inquiry_movie(String rental_inquiry_movie) {
		this.rental_inquiry_movie = rental_inquiry_movie;
	}

	public String getRental_inquiry_people_count() {
		return rental_inquiry_people_count;
	}

	public void setRental_inquiry_people_count(String rental_inquiry_people_count) {
		this.rental_inquiry_people_count = rental_inquiry_people_count;
	}
	
	public String getRental_inquiry_title() {
		return rental_inquiry_title;
	}

	public void setRental_inquiry_title(String rental_inquiry_title) {
		this.rental_inquiry_title = rental_inquiry_title;
	}

	public String getRental_inquiry_content() {
		return rental_inquiry_content;
	}

	public void setRental_inquiry_content(String rental_inquiry_content) {
		this.rental_inquiry_content = rental_inquiry_content;
	}

	public String getRental_inquiry_name() {
		return rental_inquiry_name;
	}

	public void setRental_inquiry_name(String rental_inquiry_name) {
		this.rental_inquiry_name = rental_inquiry_name;
	}

	public String getRental_inquiry_phone() {
		return rental_inquiry_phone;
	}

	public void setRental_inquiry_phone(String rental_inquiry_phone) {
		this.rental_inquiry_phone = rental_inquiry_phone;
	}

	public String getRental_inquiry_pw() {
		return rental_inquiry_pw;
	}

	public void setRental_inquiry_pw(String rental_inquiry_pw) {
		this.rental_inquiry_pw = rental_inquiry_pw;
	}

	public String getRental_inquiry_review() {
		return rental_inquiry_review;
	}

	public void setRental_inquiry_review(String rental_inquiry_review) {
		this.rental_inquiry_review = rental_inquiry_review;
	}

	public String getRental_inquiry_datetime() {
		return rental_inquiry_datetime;
	}

	public void setRental_inquiry_datetime(String rental_inquiry_datetime) {
		this.rental_inquiry_datetime = rental_inquiry_datetime;
	}

	@Override
	public String toString() {
		return "RentalDTO [rental_inquiry_id=" + rental_inquiry_id + ", rental_inquiry_area=" + rental_inquiry_area
				+ ", rental_inquiry_place=" + rental_inquiry_place + ", rental_inquiry_theater="
				+ rental_inquiry_theater + ", rental_inquiry_date=" + rental_inquiry_date + ", rental_inquiry_start="
				+ rental_inquiry_start + ", rental_inquiry_end=" + rental_inquiry_end + ", rental_inquiry_movie="
				+ rental_inquiry_movie + ", rental_inquiry_people_count=" + rental_inquiry_people_count
				+ ", rental_inquiry_title=" + rental_inquiry_title + ", rental_inquiry_content="
				+ rental_inquiry_content + ", rental_inquiry_name=" + rental_inquiry_name + ", rental_inquiry_phone="
				+ rental_inquiry_phone + ", rental_inquiry_pw=" + rental_inquiry_pw + ", rental_inquiry_review="
				+ rental_inquiry_review + ", rental_inquiry_datetime=" + rental_inquiry_datetime + "]";
	}
	
}
