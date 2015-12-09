package com.wonderfour.beans;

import java.io.Serializable;
import java.util.List;
import java.util.Set;
@SuppressWarnings("serial")
public class Users implements Serializable{
	private int user_id;
	private String firstname;
	private String lastname;
	private String address;
	private String email;
	private String password;
	private String phone;
	private int enabled;
	/*private UserRoles userRoles;*/
	private List<UserOrder> order;
	private List<Card> cards;
	
	public Users() {}
	
	public Users(int user_id, String firstname, String lastname, String address,
			String email, String password, String phone, int enabled,
			List<UserOrder> order, List<Card> cards) {
		this.user_id = user_id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.address = address;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.enabled = enabled;
		this.order = order;
		this.cards = cards;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public List<UserOrder> getOrder() {
		return order;
	}

	public void setOrder(List<UserOrder> order) {
		this.order = order;
	}

	public List<Card> getCards() {
		return cards;
	}

	public void setCards(List<Card> cards) {
		this.cards = cards;
	}
	
}
