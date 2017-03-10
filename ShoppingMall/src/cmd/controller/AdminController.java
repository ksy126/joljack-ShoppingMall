package cmd.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


/**
 * 메인 컨트롤러
 * 
 * @author Administrator
 */
@Controller("admin")
@RequestMapping("/admin")
public class AdminController {
	
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
    	
    	ModelAndView mav = new ModelAndView("admin/main");
    	return mav;
    }
	
	/**
	 * 회원 관리 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/member.do")
    public ModelAndView member( 	HttpServletRequest 					request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
    	
    	ModelAndView mav = new ModelAndView("admin/member");
    	return mav;
    }
	
	/**
	 * 상품 등록 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/product/regeist.do")
    public ModelAndView productRegeist( 	HttpServletRequest 					request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
    	
    	ModelAndView mav = new ModelAndView("admin/product_regeist");
    	return mav;
    }
	
	/**
	 * 상품 리스트 수정/삭제
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/product/list.do")
    public ModelAndView productList( 	HttpServletRequest 					request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
    	
    	ModelAndView mav = new ModelAndView("admin/product_list");
    	return mav;
    }
	
	/**
	 * 문의사항 관리 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/question.do")
    public ModelAndView question( 	HttpServletRequest 					request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
    	
    	ModelAndView mav = new ModelAndView("admin/question");
    	return mav;
    }
}

