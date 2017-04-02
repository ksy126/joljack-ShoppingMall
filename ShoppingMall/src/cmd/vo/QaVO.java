package cmd.vo;

public class QaVO {
	
	private String qa_no;
	private String member_no;
	private String qa_title;
	private String qa_content;
	private String qa_answer;
	private String qa_insertDate;
	private String name;
	
	public String getQa_answer() {
		return qa_answer;
	}
	public void setQa_answer(String qa_answer) {
		this.qa_answer = qa_answer;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getQa_no() {
		return qa_no;
	}
	public void setQa_no(String qa_no) {
		this.qa_no = qa_no;
	}
	public String getMember_no() {
		return member_no;
	}
	public void setMember_no(String member_no) {
		this.member_no = member_no;
	}
	public String getQa_title() {
		return qa_title;
	}
	public void setQa_title(String qa_title) {
		this.qa_title = qa_title;
	}
	public String getQa_content() {
		return qa_content;
	}
	public void setQa_content(String qa_content) {
		this.qa_content = qa_content;
	}
	public String getQa_insertDate() {
		return qa_insertDate;
	}
	public void setQa_insertDate(String qa_insertDate) {
		this.qa_insertDate = qa_insertDate;
	}
	@Override
	public String toString() {
		return "QaVO [qa_no=" + qa_no + ", member_no=" + member_no + ", qa_title=" + qa_title + ", qa_content="
				+ qa_content + ", qa_insertDate=" + qa_insertDate + ", name=" + name + "]";
	}	
}
