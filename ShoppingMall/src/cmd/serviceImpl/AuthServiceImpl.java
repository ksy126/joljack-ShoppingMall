package cmd.serviceImpl;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import cmd.service.AuthService;
import cmd.vo.MemberVO;
import helper.dao.CommonDAO;




@Service("authService")
public class AuthServiceImpl implements AuthService
{
	private final static Log logger = LogFactory.getLog(AuthServiceImpl.class);
	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public void memberPost(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.insertData("auth.insertMember", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public Object check_login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		MemberVO memberVo = new MemberVO();
		MemberVO memberVo2 = new MemberVO();
		
		try {
			memberVo = (MemberVO) this.commonDao.getReadData("auth.login_check", map);
			
			if(memberVo == null){
				memberVo2.setCheck("no");
				memberVo = memberVo2;
			} else {				
				memberVo.setCheck("yes");
				
			}
						
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return memberVo;
	}


}//end class

