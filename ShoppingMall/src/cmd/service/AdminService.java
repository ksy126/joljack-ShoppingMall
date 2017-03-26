package cmd.service;

import java.util.List;
import java.util.Map;

public interface AdminService {
	
	public void productPost(Map<String, Object> pMap);
	
	public void noticePost(Map<String, Object> pMap);
	
	public List<Object> noticeList();
}


