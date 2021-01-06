package model;

public class Product {

	private String name, explain, category, condition, img, ext, fee, location, day;
	private int price;

	public Product(String name, String explain, int price, String category, String condition, String img, String ext, String fee, String location, String day) {
		this.name = name;
		this.explain = explain;
		this.condition = condition;
		this.price = price;
		this.category = category;
		this.img = img;
		this.ext = ext;
		this.fee = fee;
		this.location = location;
		this.day = day;
	}

	public Product(String category) {
		this.category = category;
	}

	public String getName() { return name; }
	public String getExplain() { return explain; }
	public int getPrice() { return price; }
	public String getCategory() { return category; }
	public String getCondition() { return condition; }
	public String getImg() { return img; }
	public String getExt() { return ext; }
	public String getFee() { return fee; }
	public String getLocation() { return location; }
	public String getDay() { return day; }

}
