package Util;

import com.google.gson.JsonObject;

public class UtillDTO {
	private String original;
	private String change;
	private int count;

	public UtillDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UtillDTO(String original, String change, int count) {
		super();
		this.original = original;
		this.change = change;
		this.count = count;
	}

	public String getOriginal() {
		return original;
	}

	public void setOriginal(String original) {
		this.original = original;
	}

	public String getChange() {
		return change;
	}

	public void setChange(String change) {
		this.change = change;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public JsonObject toJson() {
		JsonObject jsonObject = new JsonObject();
		jsonObject.addProperty("original", original);
		jsonObject.addProperty("change", change);
		jsonObject.addProperty("count", count);

		return jsonObject;
	}

	@Override
	public String toString() {
		return "UtillDTO [original=" + original + ", change=" + change + ", count=" + count + "]";
	}

}
