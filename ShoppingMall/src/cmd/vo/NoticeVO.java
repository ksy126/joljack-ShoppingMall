package cmd.vo;

public class NoticeVO {

	private String notice_no;
	private String notice_title;
	private String notice_content;
	private String notice_insertDate;
	
	public String getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(String notice_no) {
		this.notice_no = notice_no;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_insertDate() {
		return notice_insertDate;
	}
	public void setNotice_insertDate(String notice_insertDate) {
		this.notice_insertDate = notice_insertDate;
	}
	@Override
	public String toString() {
		return "NoticeVO [notice_no=" + notice_no + ", notice_title=" + notice_title + ", notice_content="
				+ notice_content + ", notice_insertDate=" + notice_insertDate + "]";
	}
}
