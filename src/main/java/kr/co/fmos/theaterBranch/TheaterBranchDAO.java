package kr.co.fmos.theaterBranch;

import java.util.List;

public interface TheaterBranchDAO {
	public List<TheaterBranchDTO> list();

	public TheaterBranchDTO selectTheaterBranchById(String branchID);
}
