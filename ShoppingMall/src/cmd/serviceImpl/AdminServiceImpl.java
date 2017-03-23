package cmd.serviceImpl;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import cmd.service.AdminService;
import helper.dao.CommonDAO;




@Service("adminService")
public class AdminServiceImpl implements AdminService
{
	private final static Log logger = LogFactory.getLog(AdminServiceImpl.class);
	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public void productPost(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.insertData("admin.insertProduct", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}//end class

