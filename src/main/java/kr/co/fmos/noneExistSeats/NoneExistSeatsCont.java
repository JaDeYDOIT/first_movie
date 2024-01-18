package kr.co.fmos.noneExistSeats;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/noneExistSeats")
public class NoneExistSeatsCont {
	public NoneExistSeatsCont() {
		System.out.println("-----NoneExistSeatsCont() 객체 생성됨");
	}

	@Autowired
	private NoneExistSeatsDAO noneExistSeatsDao;

	@PostMapping("/selectNoneExistSeatsByScreenId")
	@ResponseBody
	public List<NoneExistSeatsDTO> selectNoneExistSeatsByScreenId(@RequestBody String screenID) {
		return noneExistSeatsDao.selectNoneExistSeatsByScreenId(screenID);
	}
}
