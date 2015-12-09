package com.wonderfour.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.wonderfour.beans.Book;
import com.wonderfour.beans.BookInfo;
import com.wonderfour.beans.Category;
import com.wonderfour.beans.UserInfo;
import com.wonderfour.beans.Users;
import com.wonderfour.service.IndexPageService;

@Controller
@SessionAttributes
public class IndexPageController {
	private IndexPageService is;
	private String indexPage;
	
	public IndexPageService getIs() {
		return is;
	}

	public void setIs(IndexPageService is) {
		this.is = is;
	}

	public String getIndexPage() {
		return indexPage;
	}

	public void setIndexPage(String indexPage) {
		this.indexPage = indexPage;
	}

	/*@RequestMapping(value="/books_list", method=RequestMethod.GET)
	public ModelAndView process(@ModelAttribute("book") Book book, BindingResult result) {
		BookInfo bookinfo = new BookInfo();
		List temp = new ArrayList<Book>();
		temp=is.queryBookList();
		bookinfo.setBook(temp);
		System.out.println(bookinfo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(indexPage);
		mav.addObject("bookinfo", bookinfo);
		return mav;
	}
	@RequestMapping(value="/books_list", params={"cateid"}, method=RequestMethod.POST)
	public ModelAndView process(@ModelAttribute("Category") Category category, BindingResult result) {
		BookInfo bookinfo = new BookInfo();
		System.out.println(category);
		bookinfo = is.queryCategory(category);
		System.out.println(bookinfo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(indexPage);
		mav.addObject("bookinfo", bookinfo);
		return mav;
	}*/
	
	@RequestMapping(value="/books_list", method=RequestMethod.GET)
	public String bookList() {
		System.out.println("aaaaaa");
		return "books_list";
	}
	
	@RequestMapping(value="/queryBook", method=RequestMethod.POST)
	@ResponseBody
	public Book getBookInfo(@ModelAttribute("book") Book book, BindingResult result) {
		Book temp = is.queryBook(book.getBook_name());
		System.out.println(temp);
		return temp;
	}
	
	@RequestMapping(value="/getBooks", method=RequestMethod.GET)
	@ResponseBody
	public List<Book> getBooks(ModelMap model) {
		List<Book> temp_list = new ArrayList<Book>();
		List<Book> list = new ArrayList<Book>();
		temp_list=is.queryBookList();
		System.out.println("This is in the books list");
		Random temp_num = new Random();
		int temp_id = 0;
		int i = 1;
		while(i!=40) {
			int random_id = temp_num.nextInt(79)+1;
			if(temp_id != random_id) {
				list.add(temp_list.get(random_id));
				i++;
			}
			else {
				continue;
			}
			temp_id = random_id;
		}
		/* JSON data type array[{},{},{}]
		 * List<book> ?
		 * */
		return list;
	}
	
	@RequestMapping("/index")
	public String indexPage() {
		return "index";
	}
}
