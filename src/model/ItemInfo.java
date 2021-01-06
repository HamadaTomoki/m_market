package model;

import java.io.Serializable;

public class ItemInfo implements Serializable{

	private String name, explain, category, condition, img, ext, fee, location, day;
	private int price;

	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	public String getExplain() { return explain; }
	public void setExplain(String explain) { this.explain= explain; }
	public int getPrice() { return price; }
	public void setPrice(int price) { this.price= price; }
	public String getCategory() { return category; }
	public void setCategory(String category) { this.category = category; }
	public String getCondition() { return condition; }
	public void setCondition(String condition) { this.condition = condition; }
	public String getImg() { return img; }
	public void setImg(String img) { this.img = img; }
	public String getExt() { return ext; }
	public void setExt(String ext) { this.ext = ext; }
	public String getFee() { return fee; }
	public void setFee(String fee) { this.fee = fee; }
	public String getLocation() { return location; }
	public void setLocation(String location) { this.location = location; }
	public String getDay() { return day; }
	public void setDay(String day) { this.day = day; }
}
