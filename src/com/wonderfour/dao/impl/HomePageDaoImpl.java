package com.wonderfour.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.wonderfour.beans.Book;
import com.wonderfour.beans.Card;
import com.wonderfour.beans.UserOrder;
import com.wonderfour.beans.Users;
import com.wonderfour.dao.HomePageDao;

public class HomePageDaoImpl implements HomePageDao {
	private HibernateTemplate template;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		template = new HibernateTemplate(sessionFactory);
	}
	
	@Override
	public Users findByName(String name) {
		// TODO Auto-generated method stub
		return (Users)template.load(Users.class, name);
	}
	
	@Override
	public Book findByBookId(int book_id) {
		// TODO Auto-generated method stub
		/*System.out.println((Book)template.get(Book.class, book_id));*/
		return (Book)template.get(Book.class, book_id);
	}
	
	@Override
	public Users findByUserId(int user_id) {
		// TODO Auto-generated method stub
		return (Users)template.get(Users.class, user_id);
	}
	
	@Override
	public List<Users> findByEmail(String email) {
		// TODO Auto-generated method stub
		String hql="from Users where email='"+email+"'";
		return template.find(hql);
	}
	
	@Override
	public void save(Users user) {
		// TODO Auto-generated method stub
		template.save(user);
	}

	@Override
	public void update(Users user) {
		// TODO Auto-generated method stub
		template.update(user);
	}

	@Override
	public void delete(Users user) {
		// TODO Auto-generated method stub
		template.delete(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Users> queryAll() {
		// TODO Auto-generated method stub
		String hql = "from Users";
		return template.find(hql);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<UserOrder> queryOrder(int user_id) {
		String hql = "from UserOrder where user_id='"+user_id+"'";
		return template.find(hql);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> queryBooks() {
		// TODO Auto-generated method stub
		String hql = "from Book";
		return template.find(hql);
	}

	@Override
	public void savecard(Card card) {
		// TODO Auto-generated method stub
		template.save(card);
	}

	@Override
	public List<Card> queryCard(int user_id) {
		// TODO Auto-generated method stub
		String hql = "from Card where user_id='"+user_id+"'";
		return template.find(hql);
	}
	
	@Override
	public List<Book> queryBookByCateId(String cateid) {
		// TODO Auto-generated method stub
		String hql = "from Book where book_cateid='"+cateid+"'";
		return template.find(hql);
	}
}
