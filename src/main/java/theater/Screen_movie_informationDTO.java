package theater;

public class Screen_movie_informationDTO extends ScreenDTO{

	private int    movie_information_id;		//TINYINT UNSIGNED  AUTO_INCREMENT PRIMARY KEY	NOT NULL,
	private int	   screen_id;				//TINYINT UNSIGNED	NOT NULL,
	private String movie_id;				//VARCHAR(30)		NOT NULL,
	private int    branch_id;				//TINYINT UNSIGNEDNOT NULL,
	private String movie_showing_date;		//DATE	NOT NULL
	private String movie_showing_time;		//TIME	NOT NULL

	
	public int getMovie_information_id() {
		return movie_information_id;
	}
	public void setMovie_information_id(int movie_information_id) {
		this.movie_information_id = movie_information_id;
	}
	public int getScreen_id() {
		return screen_id;
	}
	public void setScreen_id(int screen_id) {
		this.screen_id = screen_id;
	}
	public String getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}
	public int getBranch_id() {
		return branch_id;
	}
	public void setBranch_id(int branch_id) {
		this.branch_id = branch_id;
	}

	public String getMovie_showing_date() {
		return movie_showing_date;
	}
	public void setMovie_showing_date(String movie_showing_date) {
		this.movie_showing_date = movie_showing_date;
	}
	public String getMovie_showing_time() {
		return movie_showing_time;
	}
	public void setMovie_showing_time(String movie_showing_time) {
		this.movie_showing_time = movie_showing_time;
	}
	@Override
	public String toString() {
		return "Screen_movie_informationDTO [movie_information_id=" + movie_information_id + ", screen_id=" + screen_id
				+ ", movie_id=" + movie_id + ", branch_id=" + branch_id + ", movie_showing_date=" + movie_showing_date
				+ ", movie_showing_time=" + movie_showing_time + "]";
	}


	
}
