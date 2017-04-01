package cmd.vo;

public class PurchaseVO {
	
	private String purchase_no;
	private String product_no;
	private String member_no;
	private String quantity;
	private String p_img;
	private String p_name;
	private String p_price;
	
	public String getPurchase_no() {
		return purchase_no;
	}
	public void setPurchase_no(String purchase_no) {
		this.purchase_no = purchase_no;
	}
	public String getProduct_no() {
		return product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}
	public String getMember_no() {
		return member_no;
	}
	public void setMember_no(String member_no) {
		this.member_no = member_no;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
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
	@Override
	public String toString() {
		return "PurchaseVO [purchase_no=" + purchase_no + ", product_no=" + product_no + ", member_no=" + member_no
				+ ", quantity=" + quantity + ", p_img=" + p_img + ", p_name=" + p_name + ", p_price=" + p_price + "]";
	}	
}
