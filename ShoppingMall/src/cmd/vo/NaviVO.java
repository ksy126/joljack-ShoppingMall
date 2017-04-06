package cmd.vo;

public class NaviVO {
	
	private String p_name;
	private String p_img;
	
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	@Override
	public String toString() {
		return "NaviVO [p_name=" + p_name + ", p_img=" + p_img + "]";
	}	
	
	
}
