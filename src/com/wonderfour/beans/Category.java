package com.wonderfour.beans;

public class Category {
	private String cateid_1;
	private String cateid_2;
	private String cateid_3;
	private String cateid_4;
	private String cateid_5;
	
	public Category(){}
	public Category(String cateid_1, String cateid_2, String cateid_3,
			String cateid_4, String cateid_5) {
		this.cateid_1 = cateid_1;
		this.cateid_2 = cateid_2;
		this.cateid_3 = cateid_3;
		this.cateid_4 = cateid_4;
		this.cateid_5 = cateid_5;
	}
	public String getCateid_1() {
		return cateid_1;
	}
	public void setCateid_1(String cateid_1) {
		this.cateid_1 = cateid_1;
	}
	public String getCateid_2() {
		return cateid_2;
	}
	public void setCateid_2(String cateid_2) {
		this.cateid_2 = cateid_2;
	}
	public String getCateid_3() {
		return cateid_3;
	}
	public void setCateid_3(String cateid_3) {
		this.cateid_3 = cateid_3;
	}
	public String getCateid_4() {
		return cateid_4;
	}
	public void setCateid_4(String cateid_4) {
		this.cateid_4 = cateid_4;
	}
	public String getCateid_5() {
		return cateid_5;
	}
	public void setCateid_5(String cateid_5) {
		this.cateid_5 = cateid_5;
	}
	@Override
	public String toString() {
		return "Category [cateid_1=" + cateid_1 + ", cateid_2=" + cateid_2
				+ ", cateid_3=" + cateid_3 + ", cateid_4=" + cateid_4
				+ ", cateid_5=" + cateid_5 + "]";
	}
}
