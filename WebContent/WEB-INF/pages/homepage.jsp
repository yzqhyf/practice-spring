<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
	< <!-- Bootstrap -->
    <link rel="stylesheet" type="css/text" href="css/normalize.css">
    <link href="css/bootstrap.min.css" type="css/text" rel="stylesheet">
    <!-- font-awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- google font -->
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="css/text" href="css/main.css">
   
    <link rel="stylesheet" type="text/css" href="css/jquery.jscrollpane.css" media="all" />    
	<link rel="stylesheet" type="text/css" href="css/card.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/yzq.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 	<script src="js/modernizr.custom.js"></script>
 	<script type="text/javascript" src="js/classie.js"></script>
	<script type="text/javascript" src="js/interact-1.2.4.min.js"></script>
	<script type="text/javascript" src="js/yzq_main.js"></script>
	<script type="text/javascript" src="js/yzq_main2.js"></script>
	<script type="text/javascript" src="js/card.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
	        $('.active form').card({
	            container: $('.card-wrapper')
	        });
	        $('#change-address').click(function() {
       			if(!$('#street-input').val()) {
					$('#street-input').attr('placeholder', 'STREET REQUIRED').css('background-color', '#fcf8e3');
				}
				if(!$('#apt-input').val()) {
					$('#apt-input').attr('placeholder', 'APT REQUIRED').css('background-color', '#fcf8e3');
				}
				if(!$('#city-input').val()) {
					$('#city-input').attr('placeholder', 'CITY REQUIRED').css('background-color', '#fcf8e3');
				}
				if(!$('#state-input').val()) {
					$('#state-input').attr('placeholder', 'STATE REQUIRED').css('background-color', '#fcf8e3');
				}
				else 
				{
					var Address = {
							street: $('#street-input').val(),
							apt: $('#apt-input').val(),
							city: $('#city-input').val(),
							state: $('#state-input').val()
						};
						$.ajax({
							type:"POST",
							url:"changeAddress.html",
							datatype: "json",
							data: Address,
							success: function(response){
								/* alert("change address success!"); */
								$('#street-input').val('');
								$('#apt-input').val('');
								$('#city-input').val('');
								$('#state-input').val('');
								$('#address-p').html(response);
							},
							error: function(e){
								alert('Error'+e);
							}
						});
				}
	        });
	        $('#submit-info').click(function() {
	        	if(!$('#firstname-input').val()) {
					$('#firstname-input').attr('placeholder', 'FIRSTNAME REQUIRED').css('background-color', '#fcf8e3');
				}
				if(!$('#lastname-input').val()) {
					$('#lastname-input').attr('placeholder', 'LASTNAME REQUIRED').css('background-color', '#fcf8e3');
				}
				if(!$('#email-input').val()) {
					$('#email-input').attr('placeholder', 'EMAIL REQUIRED').css('background-color', '#fcf8e3');
				}
				if(!$('#phone-input').val()) {
					$('#phone-input').attr('placeholder', 'PHONE REQUIRED').css('background-color', '#fcf8e3');
				}
				else {
					var userInfo = {
						firstname: $('#firstname-input').val(),
						lastname: $('#lastname-input').val(),
						email: $('#email-input').val(),
						phone: $('#phone-input').val()
					};
					$.ajax({
						type:"POST",
						url:"changeInfo.html",
						dataType: 'json',
						data: userInfo,
						success: function(response){
							alert("change Info success!");
							$('#firstname-input').val('');
							$('#lastname-input').val('');
							$('#email-input').val('');
							$('#phone-input').val('');
							$('#info-firstname').html(response.firstname);
							$('#info-lastname').html(response.lastname);
							$('#info-email').html(response.email);
							$('#info-phone').html(response.phone);
						},
						error: function(e){
							alert('Error'+e);
						}
					});
				}
	        });
	       /* $("#change-info").click(function() {
	        	$("#")
	        })*/
	       	$("#add-card").click(function() {
	       		if(!$('#card-number').val()) {
					$('#card-number').attr('placeholder', 'CARDNUMBER REQUIRED').css('background-color', '#fcf8e3');
				}
				if(!$('#card-name').val()) {
					$('#card-name').attr('placeholder', 'HOLDNAME REQUIRED').css('background-color', '#fcf8e3');
				}
				if(!$('#card-date').val()) {
					$('#card-date').attr('placeholder', 'EXPIRATION REQUIRED').css('background-color', '#fcf8e3');
				}
				if(!$('#card-cvv').val()) {
					$('#card-cvv').attr('placeholder', 'CVV REQUIRED').css('background-color', '#fcf8e3');
				}
				else {
					var tr=$("<tr class='info'></tr>");
					$("#card-input-form input:text").each(function(index, domElement) {
						/*alert($(domElement).val());*/
						var td=$("<td>");
						td.append($(domElement).val());
						td.append($("</td>"));
						td.appendTo(tr);
					});
					var td=$("<td><button id='delete-card' class='paint-area btn btn-info btn-xs'>Delete</button></td>");
					td.appendTo(tr);
					$("#targetTable").append(tr);
					
					var cardinfo = {
							number: $('#card-number').val(),
							name: $('#card-name').val(),
							date: $('#card-date').val(),
							cvv: $('#card-cvv').val()
					};
					$.ajax({
						type:"POST",
						url:"addCard.html",
						dataType: 'json',
						data: cardinfo,
						success: function(response){
							alert("add Card success!");
							$('#card-number').val('');
							$('#card-name').val('');
							$('#card-date').val('');
							$('#card-cvv').val('');
						},
						error: function(e){
							alert('Error'+e);
						}
					});
				}
			});
	       	$('#change-password').click(function() {
	       		if(!$('#input-password').val()) {
					$('#input-password').attr('placeholder', 'PASSWORD REQUIRED').css('background-color', '#fcf8e3');
				}
				if(!$('#confirm-password').val()) {
					$('#confirm-password').attr('placeholder', 'NEED CONFIRM REQUIRED').css('background-color', '#fcf8e3');
				}
				else if(!($('#input-password').val() == $('#confirm-password').val())) {
					$('#input-password').attr('placeholder', 'PASSWORD NEED SAME').css('background-color', '#fcf8e3');
					$('#confirm-password').attr('placeholder', 'PASSWORD NEED SAME').css('background-color', '#fcf8e3');
				}
				else {
					var passWord = {
						password: $('#input-password').val()
					};
					$.ajax({
						type:"POST",
						url:"changePassword.html",
						datatype: "json",
						data: passWord,
						success: function(response){
							alert(response);
						},
						error: function(e){
							alert('Error'+e);
						}
					});
				}
	       	})
			$('#targetTable').on('click', '#delete-card', function(events){
				$(this).parent().parent().remove();
			});
	});
	</script>
</head>
<body>
	<div class="container">

		 <header>
          <div class="row">
            <div class="col-sm-3 col-sm-offset-1">
              <div class="header_img img-responsive"><img src="img/bookheader08.gif"></div>
            </div>
            <div class="col-sm-8 "><h1 class="header_text">Wonder4&nbsp;&nbsp;BookStore</h1></div>          
          </div>
          <nav class="navbar navbar-inverse ">
            <div class="row">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"><i class="fa fa-bars"></i></button>
                <a class="navbar-brand" href="index.html">Wonder4 Books</a>
              </div>
              <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                  <li class=" dropdown">
                    <a href="books_list.html">Advanced Search</a>
                  </li>
                  <li><a href="#new_releases">New Releases</a></li>
                  <li><a href="#best_sellers">Best Sellers</a></li>
                  <li><a href="#special_values">Special Values</a></li>
                  <li>
                    <div class="right-inner-addon">
                      <i class="fa fa-search"></i>
                        <input type="search" class="form-control" placeholder="Search" />
                    </div>
                  </li> 
                </ul>
                <ul class="nav navbar-nav navbar-right">
                  <li>
                    <a href="#" class="btn" data-toggle="modal" data-target="#myModal"><i class="fa fa-user"></i>&nbsp;${userinfo.firstname}</a>
                  </li>
                  <li class="nav_right">
                     <a href="cart.html"><i class="fa fa-shopping-cart"></i>&nbsp;Cart</a>
                  </li>          
                </ul>
              </div>
            </div>
          </nav>         
        </header>
		<div id="HM_content col-sm-12">
			<div class="HM_navigator">
				<ul class="nav nav-tabs paint-area">
					<li class="active">
						<a data-toggle="tab" href="#order-history" class="btn btn-color" role="button">Order Status</a>
					</li>
					<li>
						<a data-toggle="tab" href="#payment-option" class="btn btn-color" role="button">Payment Option</a>
					</li>
					<li>
						<a data-toggle="tab" href="#person-setting" class="btn btn-color" role="button">Personal Setting</a>
					</li>
<!-- 					<li>
						<a data-toggle="tab" href="#book-comments" class="btn btn-lg mockup-button" role="button">Book Comment</a>
					</li> -->
				</ul>

				<div class="tab-content">
					<div id="order-history" class="tab-pane fade in active">
						<section class="mockup-section paint-area">
							<div class="mockup-content mockup-grid">
								<div class="mockup-grid__item">
									<h1 class="mockup-heading mockup-heading--large paint-area paint-area--text" style="font-size:33px;">Order History 
										<span class="mockup-heading__subline">This is your Recent history</span>	
									</h1>
									<button id="discover" class="mockup-button paint-area btn btn-info">
										<span>Discover more</span>
										<i class="fa fa-chevron-right"></i> 
									</button>
								</div>
							</div>

							<section class="mockup-section paint-area">
								<div class="mockup-section" style="width: 95%; margin:0 auto;">
									<div id="bk-list" class="bk-list ca-wrapper clearfix">
						
									<c:forEach var="Book" begin="0" end="4" items="${bookinfo.book}" varStatus="status">
										<div class="ca-item mockup-width--fifth" style="height:420px;">
											<div class="bk-li">                   
												<div class="bk-book bk-bookdefault">
													<div class="bk-front">
														<div class="bk-cover-back"></div>
															<div class="bk-cover">
																<img src="${Book.book_image_f}" alt="">
															</div>
													</div>
													<div class="bk-back">
					                                	<img id="book-image-b" src="${Book.book_image_b}" alt="">
					                              	</div>
						                              <div class="bk-right"></div>
						                              <div class="bk-left"></div>
						                              <div class="bk-top"></div>
						                              <div class="bk-bottom"></div>
													<div style="width: 100%">
														<h3 class="mockup-heading mockup-heading--large paint-area paint-area--text" style="float: left; margin-top: 250px; font-size:1.0em;">${Book.book_name} 
															<span class="mockup-heading__subline">${Book.book_intro}</span>	
														</h3>
													</div>
												</div>
											</div> 
										</div>              
									</c:forEach>         
				
								</div>
							</section>	
						</section>
					</div>
					<div id="person-setting" class="tab-pane fade row">
						<section class="mockup-section paint-area">
							
							<div class="mockup-grid__item mockup-width--double">
								<h2 class="mockup-heading paint-area paint-area--text" style="font-size: 35px; margin:10px 0; margin-left:5%">Account Info</h1>
								<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#987cb9 SIZE=3>
								
								<div class="paint-area paint-area--text" style="margin-left: 6%">
								<div style="margin-top: 20px;">
									<div style="float: left; display: inline-block">
										<h2 class="mockup-heading mockup-fontsize paint-area paint-area--text" style="color:#AEAEAE;">First Name: <span id="info-firstname" style="color: #000">${userinfo.firstname}</span></h2>
									</div>
									<div style="float: clear; display: inline-block; ">
										<h2 class="mockup-heading mockup-fontsize paint-area paint-area--text" style="margin-left: 180%; color:#AEAEAE;">Last Name: <span id="info-lastname" style="color: #000">${userinfo.lastname}</span></h2>
									</div>
									
									<h2 class="mockup-heading mockup-fontsize paint-area--text" style="margin-top: 10px; color:#AEAEAE;">Email: <span id="info-email" style="color: #000">${userinfo.email}</span></h2>
									<h2 class="mockup-heading mockup-fontsize paint-area paint-area--text" style="margin-top: 10px; color:#AEAEAE;">Phone: <span id="info-phone" style="color: #000">${userinfo.phone}</span></h2>
									<h2 class="mockup-heading mockup-fontsize paint-area paint-area--text" style="margin-top: 10px; color:#AEAEAE;">Address: <span id="info-address" style="color: #000">${userinfo.address}</span></h2>
									</div>
									<div style="margin-left:5%">
										<button class="mockup-button paint-area btn btn-info" type="submit" value="Submit" data-toggle="modal" data-target="#passwordModal">
											<span>Change Password</span> 
										</button>
										<button id="change-info" class="mockup-button paint-area btn btn-info" type="submit" value="Submit" data-toggle="modal" data-target="#InfoModal">
											<span>Change Info</span> 
										</button>
									</div>
								</div>
							</div>
						</section>
						<div id="passwordModal" class="modal fade" role="dialog" aria-hidden="true" style="display:none;">
							<div class="modal-dialog">

								<div class="modal-content paint-area">
									<div class="modal-body">								
										<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#987cb9 SIZE=3>
							           	<form action="">
							                <input id="input-password" class="card-input" required placeholder="password" type="text" name="password">
							                <input id="confirm-password" class="card-input" required placeholder="confirm password" type="text" name="confirmpassword">
							           	</form>
									</div>
									<div class="modal-footer">
										<button id="change-password" type="submit" class="btn btn-info">Submit</button>
										<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
						<div id="InfoModal" class="modal fade" role="dialog" aria-hidden="true" style="display:none;">
							<div class="modal-dialog">

								<div class="modal-content paint-area">
									<div class="modal-body">								
										<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#987cb9 SIZE=3>
							           	<form action="">
							                <input id="firstname-input" required class="card-input" placeholder="First Name" type="text" name="firstname">
							                <input id="lastname-input" required class="card-input" placeholder="Last Name" type="text" name="lastname">
							                <input id="email-input" required class="card-input" placeholder="Email" type="text" name="email">
							                <input id="phone-input" required class="card-input" placeholder="Phone" type="text" name="phone">
							           	</form>
									</div>
									<div class="modal-footer">
										<button id="submit-info" type="submit" class="btn btn-info">Submit</button>
										<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="payment-option" class="tab-pane fade">
						<section class="mockup-section mockup-section--white paint-area">
							<div class="mockup-content mockup-grid">
								<h1 class="mockup-heading mockup-heading--large paint-area paint-area--text" style="font-size:35px;">Shipping Address</h1>
								<p id="address-p" class="paint-area" style=" margin:15px 0px 5px 10px; font-size:20px;">${userinfo.address}</p>
							</div>

							<div class="mockup-content mockup-grid">
								<div class="mockup-content mockup-grid" style="width: 100%; display:inline-block; margin:0 auto;">
									<span>
										<input id="street-input" class="input input__field" type="text" placeholder="XXX Street Name" required/>
									</span>
									<span>
										<input id="apt-input" class="input input__field" type="text" placeholder="Apartment No.XXX" required/>
									</span>
									<span>
										<input id="city-input" class="input input__field" type="text" placeholder="City" required/>
									</span>
									<span>
										<input id="state-input" class="input input__field" type="text" placeholder="State XXXXX" required/>
									</span>
									<button id="change-address" class="mockup-button mockup-button--left paint-area btn btn-info" type="submit" value="Submit">
										<span>Change Address</span> 
									</button>
								</div>
							</div>
							<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#987cb9 SIZE=3>
							<div class="mockup-content mockup-grid">
								<h1 class="mockup-heading mockup-heading--large paint-area paint-area--text" style="font-size:35px;">Card Information</h1>
								<div class="card-table" style="margin-top: 50px;">
									<table id="targetTable" class="table table-hover">
										<thead>
											<tr class="card-table--grey">
												<th>Card Number</th>
												<th>Name On Card</th>
												<th>Expired Date</th>
												<th>CVV</th>
												<th>Option</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="card" items="${cardinfo.cards}" varStatus="status">
												<tr class='info'>
													<td>${card.number}</td>
													<td>${card.name}</td>
													<td>${card.date}</td>
													<td>${card.cvv}</td>
													<td><button id='delete-card' class='paint-area btn btn-info btn-xs'>Delete</button></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div style="dispaly: inline-block; margin-left:79%;">
									<button type="submit" class="mockup-button btn btn-info paint-area" data-toggle="modal" data-target="#cardModal">
										<span>Add New Card</span>
									</button>
								</div>	
							</div>
						</section>
						
						
						<div id="cardModal" class="modal fade" role="dialog" aria-hidden="true" style="display:none;">
							<div class="modal-dialog">

								<div class="modal-content paint-area">
									<div class="modal-header modal-header--color">
										<!-- <button type="button" class="close" data-dismiss="modal">×</button> -->
										<h4 class="modal-title" style="color:#fff;" >Card Info</h4>
									</div>
									<div class="modal-body">
										<div class="main clearfix">									
									        <div class="card-wrapper">
									        </div>
									        <HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#987cb9 SIZE=3>
									        <div class="active">
									            <form id="card-input-form" class="active-form" action="">
									                <input id="card-number" class="card-input" placeholder="CARD NUMBER" type="text" name="number" required/>
									                <input id="card-name" class="card-input" placeholder="FULL NAME" type="text" name="name" required/>
									                <input id="card-date" class="card-input" placeholder="MM/YY" type="text" name="expiry" required/>
									                <input id="card-cvv" class="card-input" placeholder="CVC" type="text" name="cvc" required/>
									            </form>
									        </div>
										</div>
									</div>
									<div class="modal-footer">
										<button id="add-card" type="submit" class="btn btn-info">Submit</button>
										<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#987cb9 SIZE=3>
<!-- 					<div id="book-comments" class="tab-pane fade">

					</div> -->
				<section class="mockup-section paint-area col-sm-12">
					<section class="books_display paint-area">
						<div class="row" style="margin-left: 5%;">
			                <h1 class="mockup-heading mockup-heading--large paint-area--text" style="margin: 2% auto; font-size:35px; font-weight:blod;">Guess You Like</h1>
			                <p class="mockup-heading--large paint-area--text" style="font-size: 1.5em;">Our best-selling new and future releases.</p>
			            </div>
			              
			              <div id="ca-container" class="ca-container paint-area paint-area--text">
			                <div id="bk-list" class="bk-list ca-wrapper clearfix"> 
			                 	<c:forEach var="Book" items="${booklike.book}">
									<div id="book-info1" class="ca-item">
					                      <div class="bk-li">                   
					                        <div class="bk-book bk-bookdefault">
					                          <div class="bk-front">
					                            <div class="bk-cover">
					                              <a data-toggle="modal" data-target="#${Book.book_id}"><img src="${Book.book_image_f}" alt=""></a>        
					                            </div>
					                          </div>
					                          <div class="bk-back">
					                            <img src="${Book.book_image_b}" alt="">
					                          </div>
					                          <div class="bk-left"></div>
					                        </div>
					                        <div class="bk-info paint-area paint-area--text">
					                          <a data-toggle="modal" data-target="#${Book.book_id}">
					                          <h4 id="book-name1" class="paint-area paint-area--text">${Book.book_name}</h4></a>
					                          <p class="paint-area paint-area--text"><span>By:&nbsp;</span><span>${Book.book_author}</span></p>
					                          <button class="bk-bookback">Flip to back</button>                          
					                        </div>
					                      </div> 
				                  	</div>
								</c:forEach>
			                </div>
			              </div>
			              </section>
			              </section>
			            </div>
			            <!-- ************************************************************************* -->
			        <c:forEach var="Book" items="${booklike.book}">    
			            <div class="modal fade" id="${Book.book_id}" role="dialog">
			          <div class="modal-dialog modal-lg">
			            <div class="modal-content">
			              <div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal">&times;</button>
			                <h4 class="modal-title">Book's Details</h4>
			              </div>
			              <div class="modal-body">
			                <!-- book's details -->
			                <div class="row" style="">
			                  <div class="col-sm-4 col-sm-offset-1">
			                    <div class="book_cover">
			                      <div id="bk-list" class="bk-list">       
			                        <div class="ca-item">  
			                          <div class="bk-li"> 
			                            <div class="bk-book bk-bookdefault">
			                              <div class="bk-front">
			                              <div class="bk-cover-back"></div>
			                              <div class="bk-cover">
			                                <img src="${Book.book_image_f}" alt="">
			                              </div>
			                              </div>
			                              <div class="bk-page">
			                              <div class="bk-content bk-content-current">
			                                <p>Red snapper Kafue pike fangtooth humums slipmouth, salmon cutlassfish; swallower European perch mola mola sunfish, threadfin bream. Billfish hog sucker trout-perch lenok orbicular velvetfish. Delta smelt striped bass, medusafish dragon goby starry flounder cuchia 
			                                </p>
			                              </div>
			                              </div>
			                              <div class="bk-back">
			                                <img src="${Book.book_image_b}" alt="">
			                              </div>
			                              <div class="bk-right"></div>
			                              <div class="bk-left"></div>
			                              <div class="bk-top"></div>
			                              <div class="bk-bottom"></div>
			                            </div>
			                            <div class="bk-info">
			                              <button class="bk-bookback">Flip</button>
			                              <button class="bk-bookview">View inside</button>
			                            </div>
			                          </div> 
			                        </div>
			                      </div>
			                    </div>
			                  </div>
			                  <div class="col-sm-7">
			                  <div class="book_info">
			                    <h3 class="book_title">${Book.book_name}</h3>
			                    <h4 class="book_author">${Book.book_author}</h4>
			                    <h4 class="book_author">${Book.book_pubtime}</h4>
			                  </div>
			                  <div class="overview">
			                    <h3>Overview</h3>
			                    <p>${Book.book_intro}</p>
			                    <br>
			                  </div>
			                  </div>
			                <!-- book's details end -->
			                </div>
			              </div>
			            </div>
			        </div>
			      </div>
			      </c:forEach>
			      <!-- ************************************************************************* -->
			          </div> 
			        <hr>        
				</div>
			</div>
		</div>
			
		<footer >
          <div class="footer_top row">
            
            <ul>
              <li>
                <a href=" ">
                  
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-square-o fa-stack-2x"></i>
                    <i class="fa fa-facebook fa-stack-1x"></i>
                  </span>
                
                </a>
              </li>
              <li>
                <a href=" ">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-square-o fa-stack-2x"></i>
                    <i class="fa fa-google-plus fa-stack-1x"></i>
                  </span>
                </a>
              </li>
              <li>
                <a href=" ">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-square-o fa-stack-2x"></i>
                    <i class="fa fa-instagram fa-stack-1x"></i>
                  </span>
                </a>
              </li>
              <li>
                <a href=" ">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-square-o fa-stack-2x"></i>
                    <i class="fa fa-pinterest-p fa-stack-1x"></i>
                  </span>
                </a>
              </li>
              <li>
                <a href=" ">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-square-o fa-stack-2x"></i>
                    <i class="fa fa-tumblr fa-stack-1x"></i>
                  </span>
                </a>
              </li>
              <li>
                <a href=" ">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-square-o fa-stack-2x"></i>
                    <i class="fa fa-twitter fa-stack-1x"></i>
                  </span>
                </a>
              </li>

            </ul>
          </div>
          <div class="footer_bottom row">
            <p>Copyright © 1990 - 2015 <span> &nbsp;&nbsp;&nbsp;<a href="" title="">Wonder4BookStore.com</a></span>&nbsp;&nbsp;&nbsp;<span> <a href="" title="">Terms of Use</a></span> | <span> <a href="" title="">Privacy Policy</a></span></p>
          </div>       
        </footer>

		<div class="customerize">
			<ul class="color-tool">
				<li class="color-1">
					<div class="drag-element" data-color="#d9534f">
						<div class="drop color-1"></div>
					</div>
				</li>
				<li class="color-2">
					<div class="drag-element" data-color="#5bc0de">
						<div class="drop color-2"></div>
					</div>
				</li>
				<li class="color-3">
					<div class="drag-element" data-color="#c0c3d5">
						<div class="drop color-3"></div>
					</div>
				</li>
				<li class="color-4">
					<div class="drag-element" data-color="#d9edf7">
						<div class="drop color-4"></div>
					</div>
				</li>
				<li class="color-5">
					<div class="drag-element" data-color="#c1d5c0">
						<div class="drop color-5"></div>
					</div>
				</li>
				<li class="color-6">
					<div class="drag-element" data-color="#dff0d8">
						<div class="drop color-6"></div>
					</div>
				</li>
				<li class="color-7">
					<div class="drag-element" data-color="#fcf8e3">
						<div class="drop color-7"></div>
					</div>
				</li>
				<li class="color-8">
					<div class="drag-element" data-color="#f2dede">
						<div class="drop color-8"></div>
					</div>
				</li>
				<li>
					<button class="reset-button" title="reset color">Reset color</button>
				</li>
			</ul>
		</div>

		<div>

		</div>

		<div>

		</div>
	</div>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!-- silder -->
    
    <script type="text/javascript" src="js/jquery.mousewheel.js"></script>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script type="text/javascript">
      	var J162 = $.noConflict(true);
   	</script> 
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>

      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"> </script>
      <script type="text/javascript">
        var J183 = jQuery.noConflict(true);
      </script>
  
    <script src="js/books1.js" type="text/javascript"></script>
    <script>
      J183(function() {

        Books.init();

      });
    </script>

    <script type="text/javascript" src="js/jquery.contentcarousel.js"></script> 
    <script type="text/javascript">
      J162('.ca-container').contentcarousel();
    </script>
    <script>
    sessionStorage.loggedIn=1;
    sessionStorage.username=$('.fa-user').parent().text();
	console.log(sessionStorage.username);
    </script>
</body>
</html>