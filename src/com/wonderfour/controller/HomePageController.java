package com.wonderfour.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.wonderfour.beans.Address;
import com.wonderfour.beans.Book;
import com.wonderfour.beans.BookInfo;
import com.wonderfour.beans.Card;
import com.wonderfour.beans.CardInfo;
import com.wonderfour.beans.Password;
import com.wonderfour.beans.UserInfo;
import com.wonderfour.beans.UserOrder;
import com.wonderfour.beans.Users;
import com.wonderfour.service.HomePageService;

@Controller
@SessionAttributes
public class HomePageController {
	private HomePageService hs;
	private String viewPage;
	private int userId;
	
	public HomePageService getHs() {
		return hs;
	}
	public void setHs(HomePageService hs) {
		this.hs = hs;
	}
	public String getViewPage() {
		return viewPage;
	}
	public void setViewPage(String viewPage) {
		this.viewPage = viewPage;
	}
	
	@RequestMapping(value="/homepage", method=RequestMethod.POST)
	public ModelAndView process(@ModelAttribute("user") 
			Users user, BindingResult result) {
		/*System.out.println("In controller");*/
		/*UserInfo userInfo = hs.process(user);*/
		Users usercheck = hs.checkUser(user.getEmail(), user.getPassword());
		/*System.out.println("aaaaa");*/
		Users userinfo = hs.queryUser(usercheck);
		userId=usercheck.getUser_id();
		/*System.out.println("bbbb");*/
		Users userorder = hs.queryList(userinfo);
		BookInfo bookinfo = hs.queryBook(userorder.getOrder());
		Users cardinfo = hs.userCard(userinfo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewPage);
		System.out.println("aaaaaaaaaaaaa");
		BookInfo booklike = new BookInfo();
		if(!(userorder.getOrder().isEmpty())) {
			booklike = hs.queryOrderLike(userinfo);
			System.out.println(booklike);
		}
		else {
			booklike = hs.queryNullOrderLike();
		}
		booklike = hs.queryNullOrderLike();
		System.out.println(cardinfo.getCards());
		mav.addObject("booklike", booklike);
		mav.addObject("bookinfo", bookinfo);
		/*System.out.println(userinfo);*/
		mav.addObject("userinfo", userinfo);
		mav.addObject("cardinfo", cardinfo);
		return mav;
	}
	
	@RequestMapping(value="/changeAddress", method=RequestMethod.POST)
	@ResponseBody
	public String changeAddress(@ModelAttribute("address") Address address, BindingResult result) {
		String tempAddress = address.getStreet()+" "+address.getApt()+" "+address.getCity()+" "+address.getState();
		Users temp = hs.updateAddress(userId, tempAddress);
		return temp.getAddress();
	}
	
	@RequestMapping(value="/changeInfo", method=RequestMethod.POST)
	@ResponseBody
	public UserInfo changeInfo(@ModelAttribute("userInfo") UserInfo userinfo, BindingResult result) {
		Users temp = hs.updateInfo(userId, userinfo);
		UserInfo tempInfo = new UserInfo();
		tempInfo.setFirstname(temp.getFirstname());
		tempInfo.setLastname(temp.getLastname());
		tempInfo.setEmail(temp.getEmail());
		tempInfo.setPhone(temp.getPhone());
		System.out.println(temp.getFirstname()+" "+temp.getLastname());
		return tempInfo;
	}
	
	@RequestMapping(value="/addCard", method=RequestMethod.POST)
	@ResponseBody
	public CardInfo addCard(@ModelAttribute("cardinfo") CardInfo cardinfo, BindingResult result) {
		Card temp = hs.updateCard(userId, cardinfo);
		System.out.println(temp.getNumber());
		return cardinfo;
	}
	
	@RequestMapping(value="/changePassword", method=RequestMethod.POST)
	@ResponseBody
	public String changePassword(@ModelAttribute("password") Password password, BindingResult result) {
		Users temp = hs.updatePassword(userId, password.getPassword());
		return "success!";
	}
	
	@RequestMapping("/main")
	public String mainPage() {		
		return "index";
	}
}
