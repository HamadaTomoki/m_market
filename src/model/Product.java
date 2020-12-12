package model;

public class Product {

	private String name, category, img, ext;
	private int price;

	public Product(String name, int price, String category, String img, String ext) {
		this.name = name;
		this.price = price;
		this.category = category;
		this.img = img;
		this.ext = ext;
	}

	public Product(String category) {
		this.category = category;
	}

	public String getName() { return name; }
	public int getPrice() { return price; }
	public String getCategory() { return category; }
	public String getImg() { return img; }
	public String getExt() { return ext; }

}
