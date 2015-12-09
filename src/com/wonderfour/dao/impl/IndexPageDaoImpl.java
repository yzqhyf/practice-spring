package com.wonderfour.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.wonderfour.beans.Book;
import com.wonderfour.dao.IndexPageDao;

public class IndexPageDaoImpl implements IndexPageDao {
	private HibernateTemplate template;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		template = new HibernateTemplate(sessionFactory);
	}
	
	@Override
	public Book findByBookId(int book_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Book> findByBookName(String book_name) {
		// TODO Auto-generated method stub
		String hql = "from Book where book_name='"+book_name+"'";
		return template.find(hql);
	}

	@Override
	public List<Book> queryAllBook() {
		// TODO Auto-generated method stub
		String hql = "from Book";
		return template.find(hql);
	}

	@Override
	public List<Book> queryCateBook(String cateId) {
		// TODO Auto-generated method stub
		String hql = "from Book where book_cateid='"+cateId+"'";
		return template.find(hql);
	}
}
