package kr.co.fmos.noneExistSeats;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import kr.co.fmos.member.MemberDTO;

@Repository
public class NoneExistSeatsDAOImp implements NoneExistSeatsDAO {

	public NoneExistSeatsDAOImp() {
		System.out.println("-----NoneExistSeatsDAOImp() 객체 생성됨");
	}

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<NoneExistSeatsDTO> selectNoneExistSeatsByScreenId(String screenID) {
		return sqlSession.selectList("noneExistSeats.selectNoneExistSeatsByScreenId", screenID);
	}// selectNoneExistSeatsByScreenId() end
}