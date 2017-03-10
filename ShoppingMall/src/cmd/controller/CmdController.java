package cmd.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.CmdService;


@Controller("cmd")
@RequestMapping("/cmd")
public class CmdController
{   
	@Resource(name = "cmdService")
	private CmdService cmdService;
	
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login( HttpServletRequest		request,
						 HttpServletResponse	response,
						 Model					model) throws Exception {
		
		
		
		return "member/login";
	}
	
	/**
	 * String 형
	 * 
	 * @return
	 */
    @RequestMapping(value="/string.do")
    public String string(	HttpServletRequest 					request,
							HttpServletResponse 				response,
							Model 								model) throws Exception {
    	
    	String IsValid = "";
    	
    	model.addAttribute("", IsValid);
    	
    	return "main/main";	
    }
    
    /**
     * ModelAndView 형
     * 
     * @param map
     * @return
     */
    @RequestMapping(value="/modelandview.do")
    public ModelAndView insert_member( 	HttpServletRequest 					request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
    	
    	ModelAndView mav = new ModelAndView("main/main");
    	return mav;
    }
    
	/**
	 * ajax 통신 컨트롤러 기본 Default
	 * 
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/ajax.do")
	public ModelAndView ajax(	HttpServletRequest 					request,
								HttpServletResponse 				response,	
								@RequestParam Map<String, Object> 	map) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;
	}
	
	
}

