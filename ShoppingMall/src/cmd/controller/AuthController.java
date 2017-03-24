package cmd.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.AuthService;
import cmd.vo.MemberVO;


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
	
	/**
	 * 로그인 처리
	 * @param req
	 * @param res
	 * @param map
	 * @return
	 */
    @RequestMapping("/userLogin.do")
    public ModelAndView user_login( HttpServletRequest req, 
						    		HttpServletResponse res,
						    		@RequestParam Map<String, Object> map){
    	MemberVO memberVo = null;
    	memberVo = (MemberVO) authService.check_login(map);
    	Map<String, Object> rMap = new HashMap<String, Object>();
		ModelAndView mav = new ModelAndView();
    	
    	if(memberVo.getCheck() != "no"){
    		HttpSession session = req.getSession(true);    		
    		
    		rMap.put("memberInfo", memberVo);
    		session.setAttribute("sessionData", rMap);
    		session.setAttribute("member_no", memberVo.getMember_no());
    		mav.addObject("member_no", memberVo.getMember_no());
    	}
    	
    	
		mav.setViewName("jsonView");
		mav.addObject("check", memberVo.getCheck());
    	
    	return mav;
    }
	
	
	
}

