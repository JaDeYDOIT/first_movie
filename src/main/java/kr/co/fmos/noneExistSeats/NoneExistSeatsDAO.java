package kr.co.fmos.noneExistSeats;

import java.util.List;

public interface NoneExistSeatsDAO {
	public List<NoneExistSeatsDTO> selectNoneExistSeatsByScreenId(String screenID);
}
