package cmd.service;

import java.util.Map;

public interface AuthService {
	
	public void memberPost(Map<String, Object> pMap);
	
	public Object check_login(Map<String, Object> map);
	
	public Boolean idCheck(Map<String, Object> map);
	
	public Boolean phoneCheck(Map<String, Object> map);
}


