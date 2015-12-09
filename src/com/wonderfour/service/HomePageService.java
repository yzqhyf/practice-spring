package com.wonderfour.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.wonderfour.beans.Book;
import com.wonderfour.beans.BookInfo;
import com.wonderfour.beans.Card;
import com.wonderfour.beans.CardInfo;
import com.wonderfour.beans.UserInfo;
import com.wonderfour.beans.UserOrder;
import com.wonderfour.beans.Users;
import com.wonderfour.dao.HomePageDao;

public class HomePageService {
	private HomePageDao hd;
		
	public HomePageDao getHd() {
		return hd;
	}
	public void setHd(HomePageDao hd) {
		this.hd = hd;
	}

/*	public UserInfo process(User user) {
		hd.save(user);
		UserInfo userInfo = new UserInfo();
		userInfo.setUsers(hd.queryAll());
		return userInfo;
	}*/
	public Users queryUser(Users user) {
		return hd.findByUserId(user.getUser_id());
	}
	public Users queryList(Users user) {
		Users userInfo = new Users();
		/*System.out.println("In querylist");*/
		userInfo.setOrder(hd.queryOrder(user.getUser_id()));
		return userInfo;
	}
	public BookInfo queryOrderLike(Users user) {
		Users tempUser = new Users();
		tempUser.setOrder(hd.queryOrder(user.getUser_id()));
		int temp_book_id = tempUser.getOrder().get(tempUser.getOrder().size()-1).getBook_id();
		Book tempBook = hd.findByBookId(temp_book_id);
		BookInfo userLike = new BookInfo();
		userLike.setBook(hd.queryBookByCateId(tempBook.getBook_cateid()));
		return userLike;
	}
	public BookInfo queryNullOrderLike() {
		List templist = new ArrayList<Book>();
		BookInfo bookinfo = new BookInfo();
		Random temp = new Random();
		for(int i = 0; i<10; i++) {
			int temp_id = temp.nextInt(80)+1;
			templist.add(hd.findByBookId(temp_id));
		}
		bookinfo.setBook(templist);
		return bookinfo;
	}
	public BookInfo queryBook(List<UserOrder> order) {
		BookInfo bookInfo = new BookInfo();
		List temp = new ArrayList<UserOrder> ();
		
		for(int i=order.size()-1; i>0; i--) {
			temp.add(hd.findByBookId(order.get(i).getBook_id()));
		}
		bookInfo.setBook(temp);
		return bookInfo;
	}
	public Users userCard(Users user) {
		Users userCard = new Users();
		userCard.setCards(hd.queryCard(user.getUser_id()));
		return userCard;
	}
	public Users checkUser(String useremail, String password) {
		Users temp = hd.findByEmail(useremail).get(0);
/*		System.out.println(temp.getEmail());
		System.out.println(temp.getPassword());
		System.out.println(temp.getUser_id());
		System.out.println(temp.getAddress());*/
		if(temp!=null && temp.getPassword().equals(password)) {
			return temp;
		}
		else {
			return null;
		}
	}
	public Users updateAddress(int userId, String address) {
		Users temp = hd.findByUserId(userId);
		temp.setAddress(address);
		hd.update(temp);
		return temp;
	}
	
	public Users updatePassword(int userId, String password) {
		Users temp = hd.findByUserId(userId);
		temp.setPassword(password);
		hd.update(temp);
		return temp;
	}
	
	public Users updateInfo(int userId, UserInfo userinfo) {
		Users temp = hd.findByUserId(userId);
		temp.setFirstname(userinfo.getFirstname());
		temp.setEmail(userinfo.getEmail());
		temp.setLastname(userinfo.getLastname());
		temp.setPhone(userinfo.getPhone());
		hd.update(temp);
		return temp;
	}
	
	public Card updateCard(int userId, CardInfo cardinfo) {
		Card temp = new Card();
		temp.setNumber(cardinfo.getNumber());
		temp.setName(cardinfo.getName());
		temp.setDate(cardinfo.getDate());
		temp.setCvv(cardinfo.getCvv());
		temp.setUser_id(userId);
		hd.savecard(temp);
		return temp;
	}
}
