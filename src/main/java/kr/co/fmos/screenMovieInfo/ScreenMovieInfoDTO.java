package kr.co.fmos.screenMovieInfo;

import java.time.LocalDate;
import java.time.LocalTime;

public class ScreenMovieInfoDTO {
	private int move_information_id;
	private int screen_id;
	private String movie_id;
	private String movie_type;
	private LocalDate movie_showing_date;
	private LocalTime movie_showing_time;
	private int branch_id;
	
	public int getMove_information_id() {
		return move_information_id;
	}
	public void setMove_information_id(int move_information_id) {
		this.move_information_id = move_information_id;
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
	public String getMovie_type() {
		return movie_type;
	}
	public void setMovie_type(String movie_type) {
		this.movie_type = movie_type;
	}
	public LocalDate getMovie_showing_date() {
		return movie_showing_date;
	}
	public void setMovie_showing_date(LocalDate movie_showing_date) {
		this.movie_showing_date = movie_showing_date;
	}
	public LocalTime getMovie_showing_time() {
		return movie_showing_time;
	}
	public void setMovie_showing_time(LocalTime movie_showing_time) {
		this.movie_showing_time = movie_showing_time;
	}
	public int getBranch_id() {
		return branch_id;
	}
	public void setBranch_id(int branch_id) {
		this.branch_id = branch_id;
	}
}
