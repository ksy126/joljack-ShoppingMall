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
@Controller("Auth")
@RequestMapping("/auth")
public class AuthController {
	
	/**
	 * 로그인 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/login.do")
    public ModelAndView login( 	HttpServletRequest 					request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
    	
    	ModelAndView mav = new ModelAndView("service/auth/login");
    	return mav;
    }
	
	/**
	 * 회원가입 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/join.do")
    public ModelAndView join( 	HttpServletRequest 					request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
    	
    	ModelAndView mav = new ModelAndView("service/auth/join");
    	return mav;
    }
	
	
	
}

