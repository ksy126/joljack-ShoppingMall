package cmd.vo;

public class ZzimVO {
	
	private String zzim_no;
	private String member_no;
	private String product_no;
	private String p_name;
	private String p_price;
	private String p_img;
	
	public String getZzim_no() {
		return zzim_no;
	}
	public void setZzim_no(String zzim_no) {
		this.zzim_no = zzim_no;
	}
	public String getMember_no() {
		return member_no;
	}
	public void setMember_no(String member_no) {
		this.member_no = member_no;
	}
	public String getProduct_no() {
		return product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_price() {
		return p_price;
	}
	public void setP_price(String p_price) {
		this.p_price = p_price;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	@Override
	public String toString() {
		return "ZzimVO [zzim_no=" + zzim_no + ", member_no=" + member_no + ", product_no=" + product_no + ", p_name="
				+ p_name + ", p_price=" + p_price + ", p_img=" + p_img + "]";
	}
}
