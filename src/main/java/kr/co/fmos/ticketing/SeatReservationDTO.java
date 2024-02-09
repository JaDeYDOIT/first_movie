package kr.co.fmos.ticketing;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

public class SeatReservationDTO {

    private List<String> selectedSeats;
    private Map<String, Integer> peopleCounts;
    private int totalPrice;
	 
	 public SeatReservationDTO() {}

	public List<String> getSelectedSeats() {
		return selectedSeats;
	}

	public void setSelectedSeats(List<String> selectedSeats) {
		this.selectedSeats = selectedSeats;
	}

	public Map<String, Integer> getPeopleCounts() {
		return peopleCounts;
	}

	public void setPeopleCounts(Map<String, Integer> peopleCounts) {
		this.peopleCounts = peopleCounts;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "SeatReservationDTO [selectedSeats=" + selectedSeats + ", peopleCounts=" + peopleCounts + ", totalPrice="
				+ totalPrice + "]";
	}

}
