package kr.co.fmos.movie;

public class MoviegenreDTO{
	private int movie_genre_id;			//TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY	NOT NULL,
	private String movie_genre_name;	//VARCHAR(50)	NOT NULL
	
	
	public int getMovie_genre_id() {
		return movie_genre_id;
	}
	public void setMovie_genre_id(int movie_genre_id) {
		this.movie_genre_id = movie_genre_id;
	}
	public String getMovie_genre_name() {
		return movie_genre_name;
	}
	public void setMovie_genre_name(String movie_genre_name) {
		this.movie_genre_name = movie_genre_name;
	}
	@Override
	public String toString() {
		return "MoviegenreDTO [movie_genre_id=" + movie_genre_id + ", movie_genre_name=" + movie_genre_name + "]";
	}

}
