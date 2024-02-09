package kr.co.fmos.footer;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/footer")
public class footerCont {

	
	@Autowired
	footerDAO footerDao;
	
	
	public footerCont() {
		System.out.println("-----footerCont()객체생성됨");
	}//end
	
//오시는길 내부정보	
	@GetMapping("location.do")
	public ModelAndView location() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/footer/location");
		return mav;
	}// location() end
	

	@GetMapping("/agreement.do")
	   public String agreement() {
	      return "footer/agreement";
	   }
	
	@GetMapping("/privacy.do")
	public ModelAndView privacy() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/footer/privacy");
		return mav;
	}// location() end
	
	@GetMapping("/alliance.do")
	public ModelAndView alliance() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("regionlist", footerDao.regionlist());
		mav.setViewName("/footer/alliance");
		return mav;
	}// location() end
	
	@PostMapping("/alliance.do")
	@ResponseBody
	public Map<String, Object> branchlist(@RequestParam("ragion_id") String region_id) {
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("alliancelist", footerDao.branchlist(region_id));
	    System.out.println(region_id);
	    return map;
	}

	
	
}// footerCont end()
