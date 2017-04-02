package cmd.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.MainService;
import cmd.vo.NoticeVO;
import cmd.vo.ProductVO;
import cmd.vo.QaVO;


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
		List<Object> noticeList = null;
		List<Object> qaList = null;
		
		pMap.put("search", "");
		
		// New Item 리스트
		pMap.put("po", 0);
		pMap.put("ps", 8);		
		newItemList = mainService.productList(pMap);
		
		// Best Item 리스트
		pMap.put("po", 0);
		pMap.put("ps", 8);
		pMap.put("type", "best");
		bestItemList = mainService.productList(pMap);
		
		// 공지사항 리스트
		pMap.put("po", 0);
		pMap.put("ps", 4);
		noticeList = mainService.noticeList(pMap);
		
		// 문의사항 리스트
		pMap.put("po", 0);
		pMap.put("ps", 4);
		qaList = mainService.qaList(pMap);
		
    	ModelAndView mav = new ModelAndView("service/main/main");
    	mav.addObject("newItemList", newItemList);
    	mav.addObject("bestItemList", bestItemList);
    	mav.addObject("noticeList", noticeList);
    	mav.addObject("qaList", qaList);
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
    								@RequestParam(value="po", 			required=false, defaultValue="0") int po,
    								@RequestParam(value="type", 		required=false, defaultValue="new") String type,
    								@RequestParam(value="search", 		required=false, defaultValue="") String search,
    								@RequestParam Map<String, Object> 	pMap) throws Exception {
    	// 기본 페이지 리스트 갯수.
		int DefaultPs = 12;
		
		int poSet = po * DefaultPs;
		
		List<Object> itemList = null;
		pMap.put("po", poSet);
		pMap.put("ps", DefaultPs);
		pMap.put("category", category);
		pMap.put("search", search);
		
		itemList = mainService.productList(pMap);
		
    	ModelAndView mav = new ModelAndView("service/main/shopList");
    	mav.addObject("category", category);
    	mav.addObject("po", po);
    	mav.addObject("type", type);
    	mav.addObject("search", search);
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
	 * 쇼핑몰 공지 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/notice.do")
    public ModelAndView notice( 	HttpServletRequest 					request,
    							HttpServletResponse 				response,
    							@RequestParam(value="po", 			required=false, defaultValue="0") int po,
    							@RequestParam Map<String, Object> 	pMap) throws Exception {
    	// 기본 페이지 리스트 갯수
		int DefaultPs = 12;
		int poSet = po * DefaultPs;
		
		List<Object> noticeList = null;
		pMap.put("po", poSet);
    	pMap.put("ps", DefaultPs);
    	
    	noticeList = mainService.noticeList(pMap);
		
    	ModelAndView mav = new ModelAndView("service/main/notice");
    	mav.addObject("noticeList", noticeList);
    	mav.addObject("po", po);
    	return mav;
    }
	
	/**
	 * 쇼핑몰 공지사항 상세페이지 이동
	 */
	@RequestMapping(value="/notice/detail.do")
    public ModelAndView noticeDetais( HttpServletRequest 			request,
    							 HttpServletResponse 				response,
    							 @RequestParam Map<String, Object> 	map) throws Exception {    	
		
		NoticeVO noticeVo = null;
		
		noticeVo = mainService.noticeInfoGET(map);
		
    	ModelAndView mav = new ModelAndView("service/main/noticeDetail");
    	mav.addObject("noticeVo", noticeVo);
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
    							@RequestParam(value="po", 			required=false, defaultValue="0") int po,
    							@RequestParam Map<String, Object> 	pMap) throws Exception {
    	// 기본 페이지 리스트 갯수
		int DefaultPs = 12;
		int poSet = po * DefaultPs;
		
		List<Object> qaList = null;
		pMap.put("po", poSet);
    	pMap.put("ps", DefaultPs);
    	
    	qaList = mainService.qaList(pMap);
		
    	ModelAndView mav = new ModelAndView("service/main/qa");
    	mav.addObject("qaList", qaList);
    	mav.addObject("po", po);
    	return mav;
    }
	
	/**
	 * 쇼핑몰 문의등록 페이지 이동
	 */
	@RequestMapping(value="/qa/write.do")
    public ModelAndView qaWrite( HttpServletRequest 				request,
    							 HttpServletResponse 				response,
    							 @RequestParam Map<String, Object> 	map) throws Exception {    	
		
    	ModelAndView mav = new ModelAndView("service/main/qaWrite");
    	return mav;
    }
	
	/**
	 * 쇼핑몰 문의상세 페이지 이동
	 */
	@RequestMapping(value="/qa/detail.do")
    public ModelAndView qaDetais( HttpServletRequest 				request,
    							 HttpServletResponse 				response,
    							 @RequestParam Map<String, Object> 	map) throws Exception {    	
		
		QaVO qaVo = null;
		
		qaVo = mainService.qaInfoGET(map);
		
    	ModelAndView mav = new ModelAndView("service/main/qaDetail");
    	mav.addObject("qaVo", qaVo);
    	return mav;
    }
	
	/**
	 * 쇼핑몰 문의 DB 등록
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/qa/saveQa.do")
    public ModelAndView qaSave( HttpServletRequest 					request,
    							 HttpServletResponse 				response,
    							 @RequestParam Map<String, Object> 	map) throws Exception {    	
		
		mainService.qaInfoPost(map);
		
    	ModelAndView mav = new ModelAndView("redirect:/main/qa.do");
    	return mav;
    }
	
	/**
	 * 쇼핑몰 찜하기 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/zzim.do")
    public ModelAndView zzim( 	HttpServletRequest 					request,
    							HttpServletResponse 				response,
    							@RequestParam Map<String, Object> 	map) throws Exception {
		List<Object> zzimList = null;
    	ModelAndView mav = new ModelAndView("service/main/zzim");
		HttpSession session = request.getSession();		
		String member_no = (String) session.getAttribute("member_no");
		
		if(member_no == null){
			
		} else {
			map.put("member_no", member_no);
			zzimList = mainService.myZzimList(map);
			mav.addObject("zzimList", zzimList);
		}
		
    	return mav;
    }
	
	/**
	 * 쇼핑몰 찜하기 DB 등록
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/productZzimSave.do")
    public ModelAndView productZzimSave( HttpServletRequest 				request,
    									 HttpServletResponse 				response,
    									 @RequestParam Map<String, Object> 	map) throws Exception {
    	
		mainService.zzimSave(map);
		
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("jsonView");
    	return mav;
    }
	
	/**
	 * 쇼핑몰 찜하기 삭제
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/zzimDelete.do")
    public ModelAndView zzimDelete( HttpServletRequest 				request,
    									 HttpServletResponse 				response,
    									 @RequestParam Map<String, Object> 	map) throws Exception {
    	
		mainService.zzimDelete(map);
		
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("jsonView");
    	return mav;
    }
	
	/**
	 * 쇼핑몰 구매하기 DB 등록
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/parchase.do")
    public ModelAndView parchase( HttpServletRequest 				request,
    									 HttpServletResponse 				response,
    									 @RequestParam Map<String, Object> 	map) throws Exception {
    	
		mainService.parchase(map);
		
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("jsonView");
    	return mav;
    }
	
	/**
	 * 쇼핑몰 장바구니 삭제
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/purchaseDelete.do")
    public ModelAndView purchaseDelete( HttpServletRequest 				request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
    	
		mainService.purchaseDelete(map);
		
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("jsonView");
    	return mav;
    }
	
	/**
	 * 장바구니 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/cart.do")
    public ModelAndView cart( 	HttpServletRequest 					request,
    							HttpServletResponse 				response,
    							@RequestParam Map<String, Object> 	map) throws Exception {
    			
    	ModelAndView mav = new ModelAndView("service/main/cart");
    	List<Object> parchaseList = null;
		HttpSession session = request.getSession();		
		String member_no = (String) session.getAttribute("member_no");
		
		if(member_no == null){
			
		} else {
			map.put("member_no", member_no);
			parchaseList = mainService.parchaseList(map);
			mav.addObject("parchaseList", parchaseList);
		}
    	return mav;
    }
	
	/**
	 * 팝업 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/popup.do")
    public ModelAndView popup( 	HttpServletRequest 	request,
    							HttpServletResponse response ) throws Exception {    	
		
    	ModelAndView mav = new ModelAndView("service/main/popup");
    	return mav;
    }
	
}

