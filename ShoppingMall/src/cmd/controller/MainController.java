package cmd.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


/**
 * 메인 컨트롤러
 * 
 * @author Administrator
 */
@Controller("main")
@RequestMapping("/main")
public class MainController {
	
	/**
	 * 메인 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/main.do")
    public ModelAndView main( 	HttpServletRequest 					request,
    							HttpServletResponse 				response,
    							@RequestParam Map<String, Object> 	map) throws Exception {
    	
    	ModelAndView mav = new ModelAndView("service/main/main");
    	return mav;
    }
	
	/**
	 * 쇼핑몰 상품 리스트 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/shop/list/{category}.do")
    public ModelAndView shopList( 	HttpServletRequest 					request,
    								HttpServletResponse 				response,
    								@PathVariable String				category,
    								@RequestParam Map<String, Object> 	map) throws Exception {
    	
		
    	ModelAndView mav = new ModelAndView("service/main/shopList");
    	mav.addObject("category", category);
    	return mav;
    }
	/**
	 * 쇼핑몰 상품 상세 페이지 이동
	 * @param request
	 * @param response
	 * @param category
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/details.do")
    public ModelAndView details( 	HttpServletRequest 					request,
    								HttpServletResponse 				response,
//    								@RequestParam(value="product_no") 	int product_no,
    								@RequestParam Map<String, Object> 	map) throws Exception {
    	
		
    	ModelAndView mav = new ModelAndView("service/main/details");
    	return mav;
    }
	
	/**
	 * 쇼핑몰 문의하기 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/qa.do")
    public ModelAndView qa( 	HttpServletRequest 					request,
    							HttpServletResponse 				response,
    							@RequestParam Map<String, Object> 	map) throws Exception {
    	
		
    	ModelAndView mav = new ModelAndView("service/main/qa");
    	return mav;
    }
	
	@RequestMapping(value="/zzim.do")
    public ModelAndView zzim( 	HttpServletRequest 					request,
    							HttpServletResponse 				response,
    							@RequestParam Map<String, Object> 	map) throws Exception {
    	
		
    	ModelAndView mav = new ModelAndView("service/main/zzim");
    	return mav;
    }
	
	@RequestMapping(value="/cart.do")
    public ModelAndView cart( 	HttpServletRequest 					request,
    							HttpServletResponse 				response,
    							@RequestParam Map<String, Object> 	map) throws Exception {
    	
		
    	ModelAndView mav = new ModelAndView("service/main/cart");
    	return mav;
    }
}

