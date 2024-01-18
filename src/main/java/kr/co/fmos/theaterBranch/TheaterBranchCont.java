package kr.co.fmos.theaterBranch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/theaterBranch")
public class TheaterBranchCont {
	public TheaterBranchCont() {
		System.out.println("-----TheaterBranchCont() 객체 생성됨");
	}

	@Autowired
	TheaterBranchDAO theaterBranchDao;

	@PostMapping("/selectTheaterBranchById")
	@ResponseBody
	public TheaterBranchDTO selectTheaterBranchById(@RequestBody String branchID) {
		return theaterBranchDao.selectTheaterBranchById(branchID);
	}
}
