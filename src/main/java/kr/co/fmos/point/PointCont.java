package kr.co.fmos.point;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/point")
public class PointCont {
	public PointCont() {
		System.out.println("-----PointCont() 객체 생성됨");
	}

	@Autowired
	PointDAO pointDao;

	@PostMapping("/selectMemberPoint")
	@ResponseBody
	public List<PointDTO> selectMemberPoint(@RequestBody String memberID) {
		return pointDao.selectMemberPoint(memberID);
	}
}
