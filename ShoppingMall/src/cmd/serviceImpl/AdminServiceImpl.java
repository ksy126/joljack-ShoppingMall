package cmd.serviceImpl;

import java.util.List;
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

	@Override
	public void noticePost(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.insertData("admin.insertNotice", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Object> noticeList() {
		// TODO Auto-generated method stub
		List<Object> result = null;
		
		try {
			result = this.commonDao.getListData("admin.selectNoticeList");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public List<Object> memberList() {
		// TODO Auto-generated method stub
		List<Object> result = null;
		
		try {
			result = this.commonDao.getListData("admin.selectMemberList");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public void memberDelete(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.deleteData("admin.deleteMember", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void qaAnswer(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.updateData("admin.qaAnswerUpdate", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void noticeDelete(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.deleteData("admin.noticeDelete", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}//end class

