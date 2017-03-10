package cmd.serviceImpl;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import cmd.service.CmdService;
import helper.dao.CommonDAO;




@Service("cmdService")
public class CmdServiceImpl implements CmdService
{
	private final static Log logger = LogFactory.getLog(CmdServiceImpl.class);
	
	@Resource(name="commonDao")
	private CommonDAO commonDao;


}//end class

