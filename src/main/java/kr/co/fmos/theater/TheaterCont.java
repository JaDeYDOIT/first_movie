package kr.co.fmos.theater;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/theater")
public class TheaterCont {
	
	@Autowired
	TheaterDAO theaterdao;
	
	public TheaterCont() {
		System.out.println("-----TheaterCont()객체 생성됨");
	}//TheaterCont() end
	
//	@RequestMapping("/list.do")
//	public ModelAndView list(@RequestParam(value = "region_id", defaultValue = "region_001") String region_id) {
//		//System.out.println(region_id);
//		
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("region_id", region_id);
//		mav.addObject("list", theaterdao.regionlist(region_id));
//		System.out.println(region_id);
//		mav.setViewName("theater/list");
//		return mav;
//	}//list() end
//	

//	@RequestMapping("/list.do")
//	public ModelAndView list(String region_id) {//region_id=region_001, branch_id=19
//		//System.out.println(region_id);
//		
//		//System.out.println(theaterdao.screenlist(branch_id));
//		
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("theaterlist", theaterdao.regionlist(region_id));
//		mav.addObject("branchlist", theaterdao.branchlist(region_id));
//
//		mav.setViewName("theater/list");
//		return mav;
//	}//list() end
	
	//지역
	@RequestMapping("/list.do")
	public ModelAndView list(String region_id) {//region_id=region_001, branch_id=19
		//System.out.println(region_id);
		//System.out.println(theaterdao.screenlist(branch_id));
		ModelAndView mav = new ModelAndView();
		mav.addObject("theaterlist", theaterdao.regionlist(region_id));
		mav.addObject("branchlist", theaterdao.branchlist(region_id));
		mav.setViewName("theater/list");
		return mav;
	}//list() end
	
	//지점
	@RequestMapping("/branchlist.do")
	public ModelAndView list(String region_id, int branch_id) {//region_id=region_001, branch_id=19
		//System.out.println(region_id);
		//System.out.println(theaterdao.screenlist(branch_id));
		ModelAndView mav = new ModelAndView();
		mav.addObject("theaterlist", theaterdao.regionlist(region_id));
		mav.addObject("branchlist", theaterdao.branchlist(region_id));
		mav.addObject("screenlist", theaterdao.screenlist(branch_id));
		mav.addObject("branchimg", theaterdao.branchimg(branch_id));
		mav.setViewName("theater/list");
		return mav;
	}//list() end
	
}//class end