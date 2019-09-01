package com22;

public class RankDTO {
	private String writer;
	private String phone;
	private int lv;
	private int count;

	public RankDTO(String phone, int lv, int count) {
		super();
		this.phone = phone;
		this.lv = lv;
		this.count = count;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getLv() {
		return lv;
	}

	public void setLv(int lv) {
		this.lv = lv;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "RankDTO [writer=" + writer + ", phone=" + phone + ", lv=" + lv + ", count=" + count + "]";
	}
	
	public String toJson() {
		String result = "";
		result += "{\"writer\" : \"" + writer + "\",";
		result += "\"phone\" : \"" + phone + "\",";
		result += "\"lv\" : \"" + lv + "\",";
		result += "\"count\" : \"" + count + "\"}";
		return result;
	}

}
