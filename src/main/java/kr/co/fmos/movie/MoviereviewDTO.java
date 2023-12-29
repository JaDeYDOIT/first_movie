package kr.co.fmos.movie;

public class MoviereviewDTO extends MovieDTO{
	private int review_id;		    //INT UNSIGNED AUTO_INCREMENT PRIMARY KEY	NOT NULL,
	private String member_id;		//VARCHAR(30)	NOT NULL	COMMENT '최대15글자',
	private String movie_id;		//VARCHAR(30)	NOT NULL,
	private String movie_review;	//TEXT	NOT NULL,
	private String creation_date;	//DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}
	public String getMovie_review() {
		return movie_review;
	}
	public void setMovie_review(String movie_review) {
		this.movie_review = movie_review;
	}
	public String getCreation_date() {
		return creation_date;
	}
	public void setCreation_date(String creation_date) {
		this.creation_date = creation_date;
	}
	@Override
	public String toString() {
		return "MoviereviewDTO [review_id=" + review_id + ", member_id=" + member_id + ", movie_id=" + movie_id
				+ ", movie_review=" + movie_review + ", creation_date=" + creation_date + "]";
	}
	
	
	
	
	
	
	
}
