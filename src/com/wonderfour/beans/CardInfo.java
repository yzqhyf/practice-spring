package com.wonderfour.beans;

public class CardInfo {
	private String number;
	private String name;
	private String date;
	private int cvv;
	
	public CardInfo() {}

	public CardInfo(String number, String name, String date, int cvv) {
		this.number = number;
		this.name = name;
		this.date = date;
		this.cvv = cvv;
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
}
