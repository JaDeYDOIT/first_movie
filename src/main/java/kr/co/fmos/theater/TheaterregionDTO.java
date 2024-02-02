package kr.co.fmos.theater;

public class TheaterregionDTO {

	private String region_id; // VARCHAR(30) PRIMARY KEY NOT NULL,
	private String region; // VARCHAR(50) NOT NULL

	public String getRegion_id() {
		return region_id;
	}

	public void setRegion_id(String region_id) {
		this.region_id = region_id;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	@Override
	public String toString() {
		return "TheaterregionDTO [region_id=" + region_id + ", region=" + region + "]";
	}
}// class end