package com.itbank.model;

public class ImageDTO {
	private String filesource;
	private String menuname;
	private int price;
	private int kcal;
	public String getFilesource() {
		return filesource;
	}
	public void setFilesource(String filesource) {
		this.filesource = filesource;
	}
	public String getMenuname() {
		return menuname;
	}
	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getKcal() {
		return kcal;
	}
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
}
