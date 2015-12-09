package com.wonderfour.service;

import java.util.ArrayList;
import java.util.List;

import com.wonderfour.beans.Book;
import com.wonderfour.beans.BookInfo;
import com.wonderfour.beans.Category;
import com.wonderfour.dao.IndexPageDao;

public class IndexPageService {
	private IndexPageDao id;

	public IndexPageDao getId() {
		return id;
	}

	public void setId(IndexPageDao id) {
		this.id = id;
	}
	public Book queryBook(String book_name) {
		Book tempBook = id.findByBookName(book_name).get(0);
		return tempBook;
	}
	public List<Book> queryBookList() {
		return id.queryAllBook();
	}
	public BookInfo queryCategory(Category temp) {
		String cateId_1 = temp.getCateid_1();
		String cateId_2 = temp.getCateid_2();
		String cateId_3 = temp.getCateid_3();
		String cateId_4 = temp.getCateid_4();
		String cateId_5 = temp.getCateid_5();
		BookInfo bookinfo = new BookInfo();
		List temp_book = new ArrayList<Book>();
		if(cateId_1!=null) {
			temp_book=id.queryCateBook("4");
		}
		if(cateId_2 != null) {
			temp_book.addAll(id.queryCateBook("5"));
		}
		if(cateId_3 != null) {
			temp_book.addAll(id.queryCateBook("6"));
		}
		if(cateId_4 != null) {
			temp_book.addAll(id.queryCateBook("7"));
		}
		if(cateId_5 != null) {
			temp_book.addAll(id.queryCateBook("8"));
		}
		bookinfo.setBook(temp_book);
		return bookinfo;
	}
}
