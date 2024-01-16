package kr.co.fmos.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/product")
public class ProductCont {

	public ProductCont() {
		System.out.println("-----ProductCont()객체생성됨");
	}//end
	
	@Autowired
	private ProductDAO productDao;
	
	@RequestMapping("/list.do")
	public ModelAndView list(HttpSession session) {
<<<<<<< HEAD
=======
		String s_id = (String)session.getAttribute("s_id");
		//System.out.println(s_id);
>>>>>>> d3787eea5fc2f7cc98b3ba85f7c534cdf751cb42
		ModelAndView mav = new ModelAndView();
		mav.setViewName("product/list");
		mav.addObject("list", productDao.list());
		return mav;
	}//list() end
	
<<<<<<< HEAD
=======
	/* write 페이지 만들 때 필요 */
	@GetMapping("/write.do") 
	public String write(HttpSession session) { 
	   String s_id = (String)session.getAttribute("s_id");
	   //System.out.println(s_id);
	   return "product/write";
	}//write() end
	 
	
	@PostMapping("/insert.do") 
	public String insert(@RequestParam Map<String, Object> map, 
						 @RequestParam MultipartFile img,
						 HttpServletRequest req) {
		String product_image = "-";
		if(img != null && !img.isEmpty()) {
			product_image = img.getOriginalFilename();
		 try {
			ServletContext application = req.getSession().getServletContext();
			String path = application.getRealPath("/storage");//실제 물리적 경로
			img.transferTo(new File(path + "\\" + product_image)); //파일 저장
		 } catch (Exception e) {
			System.out.println(e);
		 }//try end
		 
		}//if end
		map.put("product_image", product_image);
		
		productDao.insert(map);
		return "redirect:/product/list.do";
	}//insert() end

	
>>>>>>> d3787eea5fc2f7cc98b3ba85f7c534cdf751cb42
	@GetMapping("/category.do")
	//public ModelAndView category(int product_category_id) { //--->이렇게 하면 에러남 Name for argument of type [int] not specified
	public ModelAndView category(HttpServletRequest req) {
		int product_category_id = Integer.parseInt(req.getParameter("product_category_id"));		
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("product/category");
		mav.addObject("product_category_id", product_category_id); //1개
		mav.addObject("category", productDao.category(product_category_id)); //여러개 
		return mav; 
	}//category() end
	
	/*
	 * @PostMapping("/category.do/{product_categoty_id}") 
	 * public ModelAndView category(@PathVariable String product_category_id) { 
	 * ModelAndView mav = new
	 * ModelAndView(); mav.setViewName("product/category");
	 * mav.addObject("category", productDao.category(product_category_id)); return
	 * mav; }//category() end
	*/	 
	
	/*
	 * @GetMapping("/detail.do") public ModelAndView detail() { ModelAndView mav =
	 * new ModelAndView(); mav.setViewName("product/detail"); return mav;
	 * }//detail() end
	 */	
	
	@GetMapping("/detail.do")
	public ModelAndView detail(ProductDTO dto) {
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("product/detail");
		mav.addObject("product_id", dto); //1개
		mav.addObject("detail", productDao.detail(dto.getProduct_id())); //여러개 
		return mav; 
	}//detail() end
}//class end