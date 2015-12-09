package com.wonderfour.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


import com.wonderfour.beans.BillingAddress;
import com.wonderfour.beans.CreditCard;
import com.wonderfour.beans.ShippingAddress;

@Controller
@SessionAttributes
public class CartController {
	private String cartPage;
	private String paymentPage;
	private String billingPage;
	private String shippingPage;
	private CreditCard creditCard;
	private BillingAddress billingAddress;
	private ShippingAddress shippingAddress;

	public String getCartPage() {
		return cartPage;
	}

	public void setCartPage(String cartPage) {
		this.cartPage = cartPage;
	}
	
	
	public String getPaymentPage() {
		return paymentPage;
	}

	public void setPaymentPage(String paymentPage) {
		this.paymentPage = paymentPage;
	}
	

	public String getBillingPage() {
		return billingPage;
	}

	public void setBillingPage(String billingPage) {
		this.billingPage = billingPage;
	}

	public String getShippingPage() {
		return shippingPage;
	}

	public void setShippingPage(String shippingPage) {
		this.shippingPage = shippingPage;
	}
	
	
	
	
	

	public CreditCard getCreditCard() {
		return creditCard;
	}

	public void setCreditCard(CreditCard creditCard) {
		this.creditCard = creditCard;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	@RequestMapping(value="/cart", method=RequestMethod.GET)
	public ModelAndView processCart() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName(cartPage);
		
		return mav;
	}
	@RequestMapping(value="/payment", method=RequestMethod.GET)
	public ModelAndView processPayment() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName(paymentPage);
		
		return mav;
	}
	
	@RequestMapping(value="/billing", method=RequestMethod.POST)
	public ModelAndView processBilling(@ModelAttribute("creditCard") 
	CreditCard creditCard, BindingResult result) {
		this.creditCard.setCardNumber(creditCard.getCardNumber());
		ModelAndView mav = new ModelAndView();
		mav.setViewName(billingPage);
		
		return mav;
	}
	
	@RequestMapping(value="/shipping", method=RequestMethod.POST)
	public ModelAndView processShipping(@ModelAttribute("billingAddress") 
	BillingAddress billingAddress, BindingResult result) {
		this.billingAddress=billingAddress;
		ModelAndView mav = new ModelAndView();
		mav.setViewName(shippingPage);
		
		return mav;
	}
	
	
	
}