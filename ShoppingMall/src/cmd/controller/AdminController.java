package cmd.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.AdminService;
import cmd.service.MainService;
import cmd.vo.NoticeVO;
import cmd.vo.ProductVO;
import cmd.vo.QaVO;
import helper.util.FileUtil;


/**
 * 메인 컨트롤러
 * 
 * @author Administrator
 */
@Controller("admin")
@RequestMapping("/admin")
public class AdminController {
	
	@Resource(name = "adminService")
	private AdminService adminService;
	@Resource(name = "mainService")
	private MainService mainService;
	
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
    public ModelAndView member( HttpServletRequest 					request,
    							HttpServletResponse 				response,
    							@RequestParam Map<String, Object> 	map) throws Exception {
		
		// 회원 리스트
		List<Object> memberList = null;
		
		memberList = adminService.memberList();
    	ModelAndView mav = new ModelAndView("admin/member");
    	mav.addObject("memberList", memberList);
    	return mav;
    }
	
	/**
	 * 회원 삭제
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/memberDelete.do")
    public ModelAndView memberDelete( HttpServletRequest 					request,
    								  HttpServletResponse 				response,
    								  @RequestParam Map<String, Object> 	map) throws Exception {
		adminService.memberDelete(map);
		
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("jsonView");
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
    public ModelAndView productRegeist( HttpServletRequest 					request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
		ProductVO productInfo = null;
    	ModelAndView mav = new ModelAndView("admin/product_regeist");
    	mav.addObject("productInfo", productInfo);
    	mav.addObject("type", "write");
    	return mav;
    }
	
	
	/**
	 * 상품 수정 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/product/modify.do")
    public ModelAndView productModify( HttpServletRequest 				request,
    								   HttpServletResponse 				response,
    								   @RequestParam Map<String, Object> 	map) throws Exception {
		ProductVO productInfo = null;
		productInfo = mainService.productInfo(map);
		ModelAndView mav = new ModelAndView("admin/product_regeist");
		mav.addObject("productInfo", productInfo);
		mav.addObject("type", "modify");
    	return mav;
    }
	
	/**
	 * 상픔 등록
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/save/product.do")
	public ModelAndView saveProduct(@RequestParam Map<String, Object> 	pMap) {		
		
		adminService.productPost(pMap);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;		
	}
	/**
	 * 상픔 수정
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/save/productModify.do")
	public ModelAndView productModify(@RequestParam Map<String, Object> 	pMap) {		
		
		adminService.productModify(pMap);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
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
    public ModelAndView productList( HttpServletRequest 				request,
    								 HttpServletResponse 				response,
    								 @RequestParam Map<String, Object> 	map) throws Exception {
    	List<Object> allList = null;
    	Map<String, Object> pMap = new HashMap<String, Object>();
    	pMap.put("po", 0);
		pMap.put("ps", 1000);
    	allList = mainService.productList(pMap);
    	
    	ModelAndView mav = new ModelAndView("admin/product_list");
    	mav.addObject("allList", allList);
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
    public ModelAndView question( HttpServletRequest 				request,
    							  HttpServletResponse 				response,
    							  @RequestParam Map<String, Object> map) throws Exception {
    	List<Object> questionList = null;
    	Map<String, Object> pMap = new HashMap<>();
    	pMap.put("po", 0);
    	pMap.put("ps", 1000);
    	questionList = mainService.qaList(pMap);		
		
    	ModelAndView mav = new ModelAndView("admin/question");
    	mav.addObject("questionList", questionList);
    	return mav;
    }
    
	/**
	 * 문의사항 관리 상세 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/questionDetails.do")
    public ModelAndView questionDetails( HttpServletRequest 				request,
    							  		 HttpServletResponse 				response,
    							  		 @RequestParam Map<String, Object> map) throws Exception {
		QaVO qaVo = null;
		qaVo = mainService.qaInfoGET(map);
    	ModelAndView mav = new ModelAndView("admin/questionDetails");
    	mav.addObject("qaVo", qaVo);
    	return mav;
    }
	/**
	 * 문의 답변 등록
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/save/qaAnswer.do")
	public ModelAndView qaAnswer(@RequestParam Map<String, Object> 	pMap) {		
		
		adminService.qaAnswer(pMap);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;		
	}
	
	/**
	 * 공지 등록 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/notice/regeist.do")
    public ModelAndView noticeRegeist( HttpServletRequest 					request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
    	
    	ModelAndView mav = new ModelAndView("admin/notice_regeist");
    	mav.addObject("type", "write");
    	return mav;
    }
	/**
	 * 공지 수정 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/notice/modify.do")
    public ModelAndView noticeModify( HttpServletRequest 					request,
    									HttpServletResponse 				response,
    									@RequestParam Map<String, Object> 	map) throws Exception {
		NoticeVO noticeVo = null;
		noticeVo = mainService.noticeInfoGET(map);
    	ModelAndView mav = new ModelAndView("admin/notice_regeist");
    	mav.addObject("noticeVo", noticeVo);
    	mav.addObject("type", "modify");
    	return mav;
    }
	
	/**
	 * 공지 등록
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/save/notice.do")
	public ModelAndView noticeProduct(@RequestParam Map<String, Object> 	pMap) {		
		
		adminService.noticePost(pMap);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;		
	}
	
	/**
	 * 공지 수정
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/save/modify.do")
	public ModelAndView noticeModify(@RequestParam Map<String, Object> 	pMap) {		
		
		adminService.noticeModify(pMap);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;		
	}
	
	/**
	 * 공지 리스트
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/notice/list.do")
    public ModelAndView noticeList( HttpServletRequest 				request,
    								HttpServletResponse 				response,
    								@RequestParam Map<String, Object> 	map) throws Exception {
    	
		List<Object> noticeList = null;
		
		noticeList = adminService.noticeList();
		
    	ModelAndView mav = new ModelAndView("admin/notice_list");
    	mav.addObject("noticeList", noticeList);
    	return mav;
    }
	
	/**
	 * 공지 상세 페이지 이동
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/notice/details.do")
    public ModelAndView noticeDetails( HttpServletRequest 				request,
    								HttpServletResponse 				response,
    								@RequestParam Map<String, Object> 	map) throws Exception {
    	NoticeVO noticeVo = null;
		noticeVo = mainService.noticeInfoGET(map);
		
    	ModelAndView mav = new ModelAndView("admin/noticeDetails");
    	mav.addObject("noticeVo", noticeVo);
    	return mav;
    }
	
	/**
	 * 공지 삭제
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/noticeDelete.do")
    public ModelAndView noticeDelete( HttpServletRequest 				request,
    								   HttpServletResponse 				response,
    								   @RequestParam Map<String, Object> 	map) throws Exception {
		adminService.noticeDelete(map);
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("jsonView");
    	return mav;
    }
	
	/**
	 * 상품 삭제
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/product/productDelete.do")
    public ModelAndView productDelete( HttpServletRequest 				request,
    								   HttpServletResponse 				response,
    								   @RequestParam Map<String, Object> 	map) throws Exception {
		adminService.productDelete(map);
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("jsonView");
    	return mav;
    }
    
	/**
	 * 업체파일업로드
	 * 
	 * @param req
	 * @param res
	 * @return ModelAndView
	 * @throws BusinessException
	 */
	@RequestMapping("/saveFile.do")
	public ModelAndView saveCompanyFile( HttpServletRequest req, 
										 HttpServletResponse res,
										 @RequestParam Map<String, Object> pMap) throws Exception {

		ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		int result = 0;

		try {

			HttpSession sesson = req.getSession();
			String doc_root = sesson.getServletContext().getRealPath("/upload");

			String fileDestPath = "";
//			String member_no = pMap.get("member_no").toString();
			fileDestPath = doc_root + File.separator + "img" + File.separator;

			String fileUploadPath = (String) pMap.get("fileUploadPath");
			String orgName = (String) pMap.get("fileNewName");
			String destination = (String) pMap.get("destination");

			System.out.println(" * 임시 파일 경로 : " + destination);

			if (!orgName.equals("") && !fileUploadPath.equals("")) {
				String temp_file_ext = orgName.substring(orgName.lastIndexOf(".") + 1);
				String temp_total_path = destination;
				Calendar calendar = Calendar.getInstance();
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddhhmmss");
				String today = dateFormat.format(calendar.getTime());
				String newName = today + "." + temp_file_ext;
				// System.gc();
				FileUtil.moveFile(temp_total_path, fileDestPath, newName);

				System.out.println(" * 새로 저장된 파일 경로 : " + fileDestPath);
				System.out.println(" * 새로 저장된 파일 이름 : " + newName);

				rMap.put("fileUploadPath", fileDestPath);
				rMap.put("fileNewName", newName);
			}
		

		} catch (Exception e) {
			throw new Exception(e.toString());
		}

		rMap.put("resultCode", result);

		output.addAllObjects(rMap);
		output.setViewName("jsonView");

		return output;
	}
}

