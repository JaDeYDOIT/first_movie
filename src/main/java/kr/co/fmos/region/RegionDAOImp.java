package kr.co.fmos.region;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RegionDAOImp implements RegionDAO{
	public RegionDAOImp() {
		System.out.println("-----RegionDAO()객체 생성됨");
	}// end

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<RegionDTO> list(){
		return sqlSession.selectList("region.list");
	}//list() end
}
