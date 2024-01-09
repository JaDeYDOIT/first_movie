package kr.co.fmos.point;

import java.util.List;

public interface PointDAO {
	public List<PointDTO> selectMemberPoint(String memberID);
}
