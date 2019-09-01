package com;

import Util.cursingUtill;

public class ProblemsDTO {
	private int num;
	private String writer;
	private String id;
	private String number;
	private String email;
	private int category1;
	private int category2;
	private String content;
	private String time;
	private int state;
	private int lv;
	private String ripple;
	private int count;

	public ProblemsDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	// 민원수정
	public ProblemsDTO(String writer, String id, String number, String email, int category1, int category2,
			String content, int lv, int count) {
		super();
		this.writer = writer;
		this.id = id;
		this.number = number;
		this.email = email;
		this.category1 = category1;
		this.category2 = category2;
		this.content = content;
		this.lv = lv;
		this.count = count;
	}

	// 민원신청
	public ProblemsDTO(int num, String writer, String id, String number, String email, int category1, int category2,
			String content, String time, int state, int lv, String ripple, int count) {
		super();
		this.num = num;
		this.writer = writer;
		this.id = id;
		this.number = number;
		this.email = email;
		this.category1 = category1;
		this.category2 = category2;
		this.content = content;
		this.time = time;
		this.state = state;
		this.lv = lv;
		this.ripple = ripple;
		this.count = count;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getCategory1() {
		return category1;
	}

	public void setCategory1(int category1) {
		this.category1 = category1;
	}

	public int getCategory2() {
		return category2;
	}

	public void setCategory2(int category2) {
		this.category2 = category2;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getLv() {
		return lv;
	}

	public void setLv(int lv) {
		this.lv = lv;
	}

	public String getRipple() {
		return ripple;
	}

	public void setRipple(String ripple) {
		this.ripple = ripple;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		String result = "";
		result += "{\"num\" : \"" + num + "\",";
		result += "\"writer\" : \"" + writer + "\",";
		result += "\"id\" : \"" + id + "\",";
		result += "\"number\" : \"" + number + "\",";
		result += "\"email\" : \"" + email + "\",";
		result += "\"category1\" : \"" + category1 + "\",";
		result += "\"category2\" : \"" + category2 + "\",";
		result += "\"content\" : \"" + content + "\",";
		result += "\"time\" : \"" + time + "\",";
		result += "\"state\" : \"" + state + "\",";
		result += "\"lv\" : \"" + lv + "\",";
		result += "\"ripple\" : \"" + ripple + "\",";
		result += "\"c_content\" : \"" + cursingUtill.getChage(content).getChange() + "\",";
		result += "\"count\" : \"" + count + "\"}";
		return result;
	}
}
