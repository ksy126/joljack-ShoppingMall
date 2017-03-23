package cmd.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.MainService;
import cmd.vo.ProductVO;


/**
 * 메인 컨트롤러
 * 
 * @author Administrator
 */
@Controller("main")
@RequestMapping("/main")
public class MainController {
	
	@Resource(name = "mainService")
	private MainService mainService;
	
	/**
	 * 메인 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 * type = 검색조건 (best)
	 * 페이징 po = 페이지 번호 / ps = 갯수
	 */
	@RequestMapping(value="/main.do")
    public ModelAndView main( 	HttpServletRequest 					request,
    							HttpServletResponse 				response,
    							@RequestParam Map<String, Object> 	pMap) throws Exception {

		List<Object> newItemList = null;
		List<Object> bestItemList = null;
		
		// New Item 리스트
		pMap.put("po", 0);
		pMap.put("ps", 8);		
		newItemList = mainService.productList(pMap);
		
		// Best Item 리스트
		pMap.put("po", 0);
		pMap.put("ps", 8);
		pMap.put("type", "best");
		bestItemList = mainService.productList(pMap);
		
    	ModelAndView mav = new ModelAndView("service/main/main");
    	mav.addObject("newItemList", newItemList);
    	mav.addObject("bestItemList", bestItemList);
    	return mav;
    }
	
	/**
	 * 쇼핑몰 상품 리스트 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 * type = 검색조건 (best)
	 * 페이징 po = 페이지 번호 / ps = 갯수
	 * category = 카테고리 명
	 */
	@RequestMapping(value="/shop/list/{category}.do")
    public ModelAndView shopList( 	HttpServletRequest 					request,
    								HttpServletResponse 				response,
    								@PathVariable String				category,
    								@RequestParam Map<String, Object> 	pMap) throws Exception {
    	
		List<Object> itemList = null;
		pMap.put("po", 0);
		pMap.put("ps", 12);
		pMap.put("category", category);
		
		itemList = mainService.productList(pMap);
		
    	ModelAndView mav = new ModelAndView("service/main/shopList");
    	mav.addObject("category", category);
    	mav.addObject("itemList", itemList);
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
    								@RequestParam(value="product_no") 	int product_no) throws Exception {
    	ProductVO productInfo = null;
    	Map<String, Object> pMap = new HashMap<>();
    	
    	pMap.put("product_no", product_no);
    	
    	productInfo = mainService.productInfo(pMap);
		
    	ModelAndView mav = new ModelAndView("service/main/details");
    	mav.addObject("productInfo", productInfo);
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

