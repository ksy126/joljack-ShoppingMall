package cmd.vo;

public class MemberVO {
	
	private String member_no;
	private String user_id;
	private String user_pwd;
	private String name;
	private String phone;
	private String zip_code;
	private String address;
	private String sub_address;
	private String check;	
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMember_no() {
		return member_no;
	}
	public void setMember_no(String member_no) {
		this.member_no = member_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getZip_code() {
		return zip_code;
	}
	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSub_address() {
		return sub_address;
	}
	public void setSub_address(String sub_address) {
		this.sub_address = sub_address;
	}
	
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	@Override
	public String toString() {
		return "MemberVO [member_no=" + member_no + ", user_id=" + user_id + ", user_pwd=" + user_pwd + ", name=" + name
				+ ", zip_code=" + zip_code + ", address=" + address + ", sub_address=" + sub_address + "]";
	}
	
	
}
