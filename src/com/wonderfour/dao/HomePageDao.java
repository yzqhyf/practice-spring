package com.wonderfour.dao;

import java.util.List;
import java.util.Set;

import com.wonderfour.beans.Book;
import com.wonderfour.beans.Card;
import com.wonderfour.beans.UserOrder;
import com.wonderfour.beans.Users;

public interface HomePageDao {
	public Users findByName(String name);
	public Book findByBookId(int book_id);
	public Users findByUserId(int user_id);
	public List<Users> findByEmail(String email);
	public void save(Users user);
	public void update(Users user);
	public void delete(Users user);
	public List<Users> queryAll();
	public List<UserOrder> queryOrder(int user_id);
	public List<Book> queryBooks();
	public List<Book> queryBookByCateId(String cateid);
	public void savecard(Card card);
	public List<Card> queryCard(int user_id);
}
