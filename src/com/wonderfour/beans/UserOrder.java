package com.wonderfour.beans;

import java.util.List;

public class UserOrder {
	private int order_id;
	private int user_id;
	private int book_id;
	
	public UserOrder() {}
	
	public UserOrder(int order_id, int user_id, int book_id) {
		this.order_id = order_id;
		this.user_id = user_id;
		this.book_id = book_id;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
}
