package Util;

public class cursingDTO {
	private int num;
	private String content;
	private String change;

	public cursingDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public cursingDTO(int num, String content, String change) {
		super();
		this.num = num;
		this.content = content;
		this.change = change;
	}
	
	public cursingDTO(String content, String change) {
		super();
		this.content = content;
		this.change = change;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getChange() {
		return change;
	}

	public void setChange(String change) {
		this.change = change;
	}

	@Override
	public String toString() {
		return "cursingDTO [num=" + num + ", content=" + content + ", change=" + change + "]";
	}

}
