package cmd.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.AuthService;


/**
 * 메인 컨트롤러
 * 
 * @author Administrator
 */
@Controller("Auth")
@RequestMapping("/auth")
public class AuthController {
	
	@Resource(name="authService")
	private AuthService authService;
	
	/**
	 * 로그인 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
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
	@RequestMapping(value="/join.do", method = RequestMethod.GET)
    public ModelAndView join( HttpServletRequest 				request,
    						  HttpServletResponse 				response,
    						  @RequestParam Map<String, Object> map) throws Exception {
    	
    	ModelAndView mav = new ModelAndView("service/auth/join");
    	return mav;
    }
	
	/**
	 * 회원 가입
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/joinData.do", method = RequestMethod.POST)
	public ModelAndView saveProduct(@RequestParam Map<String, Object> 	pMap) {		
		
		authService.memberPost(pMap);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;		
	}
	
	
	
}

