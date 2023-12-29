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

@Controller
@RequestMapping("/product")
public class ProductCont {

	public ProductCont() {
		System.out.println("-----ProductCont()객체생성됨");
	}//end
	
	@Autowired
	private ProductDAO productDao;
	
	@RequestMapping("/list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("product/list");
		mav.addObject("list", productDao.list());
		return mav;
	}//list() end
	
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