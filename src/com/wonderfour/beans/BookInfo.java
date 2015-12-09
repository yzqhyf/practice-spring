package com.wonderfour.beans;

import java.util.List;

public class BookInfo {
	private List<Book> book;
	public BookInfo() {}
	
	public BookInfo(List<Book> book) {
		this.book = book;
	}

	public List<Book> getBook() {
		return book;
	}

	public void setBook(List<Book> book) {
		this.book = book;
	}

	@Override
	public String toString() {
		return "BookInfo [book=" + book + "]";
	}
}
