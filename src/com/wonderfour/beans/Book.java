package com.wonderfour.beans;

import java.io.Serializable;
@SuppressWarnings("serial")
public class Book implements Serializable{
	private int book_id;
	private String book_name;
	private String book_author;
	private double book_price;
	private String book_cateid;
	private String book_intro;
	private String book_image_f;
	private String book_image_b;
	private int book_quantity;
	private String book_pubtime;
	
	public Book() {}
	
	public Book(int book_id, String book_name, String book_author,
			double book_price, String book_cateid, String book_intro,
			String book_image_f, String book_image_b, int book_quantity,
			String book_pubtime) {
		this.book_id = book_id;
		this.book_name = book_name;
		this.book_author = book_author;
		this.book_price = book_price;
		this.book_cateid = book_cateid;
		this.book_intro = book_intro;
		this.book_image_f = book_image_f;
		this.book_image_b = book_image_b;
		this.book_quantity = book_quantity;
		this.book_pubtime = book_pubtime;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getBook_author() {
		return book_author;
	}

	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}

	public double getBook_price() {
		return book_price;
	}

	public void setBook_price(double book_price) {
		this.book_price = book_price;
	}

	public String getBook_cateid() {
		return book_cateid;
	}

	public void setBook_cateid(String book_cateid) {
		this.book_cateid = book_cateid;
	}

	public String getBook_intro() {
		return book_intro;
	}

	public void setBook_intro(String book_intro) {
		this.book_intro = book_intro;
	}

	public String getBook_image_f() {
		return book_image_f;
	}

	public void setBook_image_f(String book_image_f) {
		this.book_image_f = book_image_f;
	}

	public String getBook_image_b() {
		return book_image_b;
	}

	public void setBook_image_b(String book_image_b) {
		this.book_image_b = book_image_b;
	}

	public int getBook_quantity() {
		return book_quantity;
	}

	public void setBook_quantity(int book_quantity) {
		this.book_quantity = book_quantity;
	}

	public String getBook_pubtime() {
		return book_pubtime;
	}

	public void setBook_pubtime(String book_pubtime) {
		this.book_pubtime = book_pubtime;
	}

/*	@Override
	public String toString() {
		return "Book [book_id=" + book_id + ", book_name=" + book_name
				+ ", book_author=" + book_author + ", book_price=" + book_price
				+ ", book_cateid=" + book_cateid + ", book_intro=" + book_intro
				+ ", book_image_f=" + book_image_f + ", book_image_b="
				+ book_image_b + ", book_quantity=" + book_quantity
				+ ", book_pubtime=" + book_pubtime + "]";
	}*/
}
