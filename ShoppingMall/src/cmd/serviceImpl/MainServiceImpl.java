package cmd.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cmd.service.MainService;
import cmd.vo.ProductVO;
import helper.dao.CommonDAO;




@Service("mainService")
public class MainServiceImpl implements MainService
{	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public List<Object> productList(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		List<Object> resultList = null;
		try {
			resultList = this.commonDao.getListData("main.selectProductList", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultList;
	}

	@Override
	public ProductVO productInfo(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		ProductVO resultInfo = null;
		
		try {
			resultInfo = (ProductVO) this.commonDao.getReadData("main.selectProductInfo", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return resultInfo;
	}


}//end class

