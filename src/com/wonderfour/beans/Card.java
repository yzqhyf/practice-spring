package com.wonderfour.beans;

public class Card {
	private int card_id;
	private String number;
	private String name;
	private String date;
	private int cvv;
	private int user_id;
	
	public Card() {}
	
	public Card(int card_id, String number, String name, String date, int cvv,
			int user_id) {
		this.card_id = card_id;
		this.number = number;
		this.name = name;
		this.date = date;
		this.cvv = cvv;
		this.user_id = user_id;
	}
	public int getCard_id() {
		return card_id;
	}

	public void setCard_id(int card_id) {
		this.card_id = card_id;
	}

	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getCvv() {
		return cvv;
	}
	public void setCvv(int cvv) {
		this.cvv = cvv;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
}
