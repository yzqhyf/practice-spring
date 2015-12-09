package com.wonderfour.dao;

import java.util.List;

import com.wonderfour.beans.Book;

public interface IndexPageDao {
	public Book findByBookId(int book_id);
	public List<Book> findByBookName(String book_name);
	public List<Book> queryAllBook();
	public List<Book> queryCateBook(String cateId);
}
