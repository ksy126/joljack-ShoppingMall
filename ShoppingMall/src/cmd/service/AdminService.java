package cmd.service;

import java.util.List;
import java.util.Map;

public interface AdminService {
	
	public List<Object> memberList();
	
	public void memberDelete(Map<String, Object> pMap);
	
	public void productPost(Map<String, Object> pMap);
	
	public void productModify(Map<String, Object> pMap);
	
	public void noticePost(Map<String, Object> pMap);
	
	public List<Object> noticeList();
	
	public void qaAnswer(Map<String, Object> pMap);
	
	public void noticeDelete(Map<String, Object> pMap);
	
	public void noticeModify(Map<String, Object> pMap);
	
	public void productDelete(Map<String, Object> pMap);
}


