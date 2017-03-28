package cmd.service;

import java.util.List;
import java.util.Map;

import cmd.vo.ProductVO;


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
}


