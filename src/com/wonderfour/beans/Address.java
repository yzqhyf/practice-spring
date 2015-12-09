package com.wonderfour.beans;

public class Address {
	private String street;
	private String apt;
	private String city;
	private String state;
	
	public Address() {}
	public Address(String street, String apt, String city, String state) {
		this.street = street;
		this.apt = apt;
		this.city = city;
		this.state = state;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getApt() {
		return apt;
	}
	public void setApt(String apt) {
		this.apt = apt;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
}
