package cmd.vo;

public class ProductVO {
	
	private String product_no;
	private String p_name;
	private String p_category;
	private String p_img;
	private String p_info;
	private String p_price;
	private String p_amount;
	private String p_buy_amount;
	private String p_insert_date;
	
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
	public String getP_category() {
		return p_category;
	}
	public void setP_category(String p_category) {
		this.p_category = p_category;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public String getP_info() {
		return p_info;
	}
	public void setP_info(String p_info) {
		this.p_info = p_info;
	}
	public String getP_price() {
		return p_price;
	}
	public void setP_price(String p_price) {
		this.p_price = p_price;
	}
	public String getP_amount() {
		return p_amount;
	}
	public void setP_amount(String p_amount) {
		this.p_amount = p_amount;
	}
	public String getP_buy_amount() {
		return p_buy_amount;
	}
	public void setP_buy_amount(String p_buy_amount) {
		this.p_buy_amount = p_buy_amount;
	}
	public String getP_insert_date() {
		return p_insert_date;
	}
	public void setP_insert_date(String p_insert_date) {
		this.p_insert_date = p_insert_date;
	}
	@Override
	public String toString() {
		return "ProductVO [product_no=" + product_no + ", p_name=" + p_name + ", p_category=" + p_category + ", p_img="
				+ p_img + ", p_info=" + p_info + ", p_price=" + p_price + ", p_amount=" + p_amount + ", p_buy_amount="
				+ p_buy_amount + ", p_insert_date=" + p_insert_date + "]";
	}
}
