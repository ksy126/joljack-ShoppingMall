package cmd.service;

import java.util.List;
import java.util.Map;

import cmd.vo.NoticeVO;
import cmd.vo.ProductVO;
import cmd.vo.QaVO;


public interface MainService {
	
	/**
	 * 모든 리스트 정보 가져오기
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Object> productList(Map<String, Object> pMap);
	
	/**
	 * 상품 상세정보 가져오기
	 * 
	 * @param pMap ( product_no )
	 * @return
	 */
	public ProductVO productInfo(Map<String, Object> pMap);
	
	/**
	 * 문의 등록 
	 * @param pMap ( member_no / qa_title / qa_content )
	 */
	public void qaInfoPost(Map<String, Object> pMap);
	
	/**
	 * 문의 리스트
	 * @param pMap ( po / ps )
	 * @return
	 */
	public List<Object> qaList(Map<String, Object> pMap);
	
	/**
	 * 문의 상세 정보
	 * @param pMap ( qa_no )
	 * @return
	 */
	public QaVO qaInfoGET(Map<String, Object> pMap);
	
	/**
	 * 공지 리스트
	 * @return  pMap ( po / ps )
	 */
	public List<Object> noticeList(Map<String, Object> pMap);
	
	/**
	 * 공지 상세 정보
	 * @param pMap ( notice_no )
	 * @return
	 */
	public NoticeVO noticeInfoGET(Map<String, Object> pMap);
	
	public List<Object> myZzimList(Map<String, Object> pMap);
	/**
	 * 찜하기
	 * @param pMap
	 */
	public void zzimSave(Map<String, Object> pMap);
	
	/**
	 * 찜하기 삭제
	 * @param pMap
	 */
	public void zzimDelete(Map<String, Object> pMap);
	
	/**
	 * 구매 하기
	 * @param pMap
	 */
	public void parchase(Map<String, Object> pMap);
	
	/**
	 * 구매 리스트
	 * @param pMap
	 */
	public List<Object> parchaseList(Map<String, Object> pMap);
	
	/**
	 * 장바구니 삭제
	 * @param pMap
	 */
	public void purchaseDelete(Map<String, Object> pMap);
}


