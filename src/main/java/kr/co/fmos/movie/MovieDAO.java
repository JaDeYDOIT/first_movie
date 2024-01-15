package kr.co.fmos.movie;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.checkerframework.checker.units.qual.m;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import kr.co.fmos.member.MemberDTO;
import kr.co.fmos.payment.PaymentDTO;

@Repository
@Controller
public interface MovieDAO {
	
	// 영화 리스트
	public List<Map<String, Object>> movieList(); // movieList() end

	// 영화 추가
	public int movieinsert(MovieDTO movieDto); // commentInsert() end

	// 영화 상세
	public MovieDTO movieDetail(String movie_id); // movieList() end

	// 댓글 리스트
	public List<MoviereviewDTO> moviereviewList(String movie_id); // movieList() end
	
	public int reviewInsert(MoviereviewDTO dto); //insert() end
	
	public MovieDTO selectMovieInfoById(String movieID);
	
// TheaterCont에서 호출하는 메서드 시작
	public MovieDTO moviecheck(int movie_id); // movieList() end
// TheaterCont에서 호출하는 메서드 끝
	
}// class end
	