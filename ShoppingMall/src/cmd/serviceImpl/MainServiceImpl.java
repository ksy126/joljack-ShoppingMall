package cmd.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cmd.service.MainService;
import cmd.vo.NoticeVO;
import cmd.vo.ProductVO;
import cmd.vo.QaVO;
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

	@Override
	public void qaInfoPost(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.insertData("main.insertQaInfo", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Object> qaList(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		List<Object> result = null;
		
		try {
			result = this.commonDao.getListData("main.selectQaList", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public QaVO qaInfoGET(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		QaVO qaVo = null;
		
		try {
			qaVo = (QaVO) this.commonDao.getReadData("main.selectQaNo", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return qaVo;
	}

	@Override
	public List<Object> noticeList(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		List<Object> result = null;
		
		try {
			result = this.commonDao.getListData("main.selectNoticeList", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public NoticeVO noticeInfoGET(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		NoticeVO noticeVo = null;
		
		try {
			noticeVo = (NoticeVO) this.commonDao.getReadData("main.selectNoticeNo", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return noticeVo;
	}

	@Override
	public List<Object> myZzimList(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		List<Object> result = null;
		
		try {
			result = this.commonDao.getListData("main.selectZzimList", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	@Override
	public void zzimSave(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		
		try {
			this.commonDao.insertData("main.zzimSave", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void zzimDelete(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.deleteData("main.zzimDelete", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public void parchase(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		
		try {
			// 상품 테이블 구매 수량 업데이트
			this.commonDao.updateData("main.productUpdate", pMap);
			// 구매 목록 테이블 업데이트
			this.commonDao.insertData("main.purchaseInsert", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Object> parchaseList(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		List<Object> result = null;
		
		try {
			result = this.commonDao.getListData("main.purchaseSelect", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public void purchaseDelete(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		try {
			
			// 기존 상품 구매 수량 복원
			ProductVO productVo = null;
			
			productVo = (ProductVO) this.commonDao.getReadData("main.selectProductInfo", pMap);
			
			int p_buy_amount = Integer.parseInt(productVo.getP_buy_amount());
			
			p_buy_amount = p_buy_amount - Integer.parseInt(pMap.get("quantity").toString());
			
			pMap.put("p_buy_amount", p_buy_amount);
			
			// 상품 테이블 구매 수량 업데이트
			this.commonDao.updateData("main.productUpdate", pMap);
			// 구매 목록에서 삭제
			this.commonDao.deleteData("main.purchaseDelete", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void qaInfoPUT(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.updateData("main.updateQaInfo", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void qaDelete(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.deleteData("main.qaDelete", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void addNaviInfo(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		String currentDate = new SimpleDateFormat("yy-MM-dd HH:mm:ss").format(new java.util.Date());
		System.out.println("@@@@@@@@@"+currentDate);
		pMap.put("insertDate", currentDate);
		
		try {
			this.commonDao.insertData("main.naviInfoInsert", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Object> naviInfoList(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		List<Object> result = null;
		
		try {
			result = this.commonDao.getListData("main.naviInfoList", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

}//end class

