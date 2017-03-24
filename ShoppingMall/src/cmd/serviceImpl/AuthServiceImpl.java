package cmd.serviceImpl;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import cmd.service.AuthService;
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


}//end class

