<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Wonder4 Book Store</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="css/text" href="css/normalize.css">
    <link href="css/bootstrap.min.css" type="css/text" rel="stylesheet">
    <!-- font-awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- google font -->
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="css/text" href="css/main.css">
   
    <link rel="stylesheet" type="text/css" href="css/jquery.jscrollpane.css" media="all" />    

    <script src="js/modernizr.custom.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/prefixfree.min.js"></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
    <script src="js/angular-route.js"></script>
	
	<script type="text/javascript">
		var booksApp = angular.module("booksApp", ['ngRoute','booksController']);
		var booksController = angular.module("booksController", []);
		booksController.controller("BooksListCtrl", ["$scope", "$http", function($scope, $http) {
			console.log("this is in booksApp controller");
			$scope.books = [];
			$http({method:"GET", url:"getBooks.html"})
			.success(function(data, status, headers, config){
				console.log(data);
				$scope.books=data;
			})
			.error(function(data, status, headers, config){
				console.log(data);
			});
			$scope.Categories ={
				Art: false,
				Bussiness: false,
				Computer: false,
				Education: false,
				History: false
			};
		}]);
		
		booksController.controller("BooksListController", ["$scope", "$routeParams", function($scope, $routeParams) {
			$scope.bookId=$routeParams.bookId;
		}]);
		
		booksApp.config(["$routeProvider", function($routeProvider) {
			$routeProvider.
			when('/books', {
				templateUrl: 'books_list.jsp',
				controller: 'booksController'
			}).
			when('/books/:bookId', {
				templateUrl: 'books_detail.jsp',
				controller: 'BooksListController'
			}).
			otherwise( {
				redirectTo: '/books'
			});
		}]);
		
		booksApp.filter("BooksListFilter", function() {
			return function(data, Categories) {
				console.log(Categories);
				var filtered = [];
				console.log(data[1]);
				for(var i=0; i<data.length; i++) {
					var value=data[i];
					
					if(Categories.Art == true && data[i].book_cateid == "4") {
						filtered.push(value);
					}
					else if(Categories.Bussiness == true && data[i].book_cateid == "5") {
						filtered.push(value);
					}
					else if(Categories.Computer == true && data[i].book_cateid == "6") {
						filtered.push(value);
					}
					else if(Categories.Education == true && data[i].book_cateid == "7") {
						filtered.push(value);
					}
					else if(Categories.History == true && data[i].book_cateid == "8") {
						filtered.push(value);
					}
					else if(Categories.Art == false && Categories.Bussiness == false && Categories.Computer == false &&
							Categories.Education == false && Categories.History == false){
						filtered.push(value);
					}
				}
				console.log(filtered.length);
				return filtered;
			};
		});
		
	</script>
   
  </head>
  <body ng-app="booksApp">
  	
  	<!-- header start -->
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
                    <li>
                     <a href="books_list.html">Advanced Search</a>    
                  </li>
                  <li><a href="index.html">New Releases</a></li>
                  <li><a href="index.html">Best Sellers</a></li>
                  <li><a href="index.html">Special Values</a></li>
                  <li>
                    <div class="right-inner-addon">
                      <i class="fa fa-search"></i>
                        <input ng-model="query" type="search" class="form-control" placeholder="Search" />
                    </div>
                  </li> 
                </ul>
                <ul class="nav navbar-nav navbar-right">
                  <li>
                    <a href="#" type="button" class="btn" data-toggle="modal" data-target="#myModal"><i class="fa fa-user"></i>&nbsp;Login</a>
                  </li>
                  <li class="nav_right">
                    <a href="cart.html"><i class="fa fa-shopping-cart"></i>&nbsp;Cart</a>
                  </li>          
                </ul>
              </div>
            </div>
          </nav>         
        </header>
      <!-- header end -->
      
      <a href="cart.html"><div id="float_cart" class="fa fa-shopping-cart"></div></a>

        
      <!-- modal start   -->
      <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-lg" style="background: rgb(26, 37, 45); width:500px;">
          <div class="modal-content"  style=" background: rgb(26,37,45); width:500px; height:600px;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">LOGIN or SIGNUP</h4>
            </div>
            <div class="modal-body">    
              <div class="form">
                <ul class="tab-group">
                  <li class="tab active"><a href="#login">Log In</a></li>
                  <li class="tab"><a href="#signup">Sign Up</a></li>
                </ul>
                <div class="tab-content">
                  <div id="login">   
                    <h1>Welcome Back!</h1>
                    <form action="/" method="post">
                      <div class="field-wrap">
                          <label>Email Address<span class="req">*</span></label>
                          <input type="email"required autocomplete="off"/>
                      </div>
                      <div class="field-wrap">
                          <label>Password<span class="req">*</span>
                          </label>
                          <input type="password"required autocomplete="off"/>
                      </div>
                      <p class="forgot"><a href="#">Forgot Password?</a></p>
                      <button class="button button-block">Log In</button>
                    </form>
                  </div>
                
                  <div id="signup">   
                    <h1>Sign Up for Free</h1>
                    <form action="/" method="post">
                      <div class="top-row">
                        <div class="field-wrap">
                          <label>First Name<span class="req">*</span></label>
                          <input type="text" required autocomplete="off" />
                        </div>        
                        <div class="field-wrap">
                          <label>Last Name<span class="req">*</span></label>
                          <input type="text"required autocomplete="off"/>
                        </div>
                      </div>
                      <div class="field-wrap">
                        <label>Email Address<span class="req">*</span></label>
                        <input type="email"required autocomplete="off"/>
                      </div>
                      <div class="field-wrap">
                        <label>Set A Password<span class="req">*</span>
                        </label>
                        <input type="password"required autocomplete="off"/>
                      </div>
                      <button type="submit" class="button button-block"/>Get Started</button>
                    </form>
                  </div>

                </div><!-- tab-content -->
              </div> <!-- /form -->
            </div><!-- modal-body end -->
          </div>
        </div>
      </div>
      <!-- modal start end -->
  
  	<div class="books_list" ng-controller="BooksListCtrl">
        <div class="row">
          <!-- books categories -->
          <div class="col-sm-4">
            <div class="refine_search">
              <h1 style="text-align:center; margin-bottom:20px;">Refine Search</h1>
              <div class="search_part">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h2 class="panel-title">Categories</h2>
                  </div>
                  <div class="panel-body">
                  <div class="checkbox">
                    <label>
                      <input id="art-photo" type="checkbox" ng-model="Categories.Art">Art & Photography
                    </label>
                  </div>
                  <div class="checkbox">
                    <label>
                      <input id="bus-invest" type="checkbox" ng-model="Categories.Bussiness">Business & Investing
                    </label>
                  </div>
                  <div class="checkbox">
                    <label>
                      <input id="com-tech" type="checkbox" ng-model="Categories.Computer">Computers & Technology
                    </label>
                  </div>
                  <div class="checkbox">
                    <label>
                      <input id="edu-teach" type="checkbox" ng-model="Categories.Education">Education & Teaching
                    </label>
                  </div>
                  <div class="checkbox">
                    <label>
                      <input id="history" type="checkbox" ng-model="Categories.History">History
                    </label>
                  </div>
                 <!--  <button type="submit" style="margin-top:30px; margin-left:130px;">Search</button> -->
                  </div>
                </div>
              </div>
            </div>
            <div style="margin-left:40px;">
            	<span>Sort By</span>
            	<select ng-model="orderProp">
            		<option value="price">Price Low to High</option>
            		<option value="date">Date New to Old</option>
            	</select>
            </div>            
          </div>
          <!-- books categories end-->
          <div class="col-sm-8" >
            <!-- books detail start -->
            
				<div ng-repeat="book in books | BooksListFilter: Categories | filter:query | orderBy:orderProp" class="row" style="margin-top:56px;">
	              <div class="col-sm-4 col-sm-offset-1">
	                <div class="book_cover">
	                  <div id="bk-list" class="bk-list">
	                    <div class="ca-item">  
	                      <div class="bk-li"> 
	                        <div class="bk-book bk-bookdefault">
	                          <div class="bk-front">
	                            <div class="bk-cover-back">  
	                            </div>
	                            <div class="bk-cover"><a href="#/books/{{book.book_id}}"><img ng-src="{{book.book_image_f}}" alt="{{book.book_name}}"></a></div>
	                          </div>
	                          <div class="bk-back"><a href="#/books/{{book.book_id}}"><img ng-src="{{book.book_image_b}}" alt=""></a></div>
	                          <div class="bk-right"></div>
	                          <div class="bk-left"></div>
	                          <div class="bk-top"></div>
	                          <div class="bk-bottom"></div>
	                        </div>
	                        <div class="bk-info"></div>
	                      </div> 
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <div class="col-sm-7">
	                <div class="book_info">
	                  <h3 class="book_title"><a href="#/books/{{book.book_id}}">{{book.book_name}}</a></h3>
	                  <h4 class="book_author"><span>By:&nbsp;&nbsp;</span><span style="font-size:20px; font-weight:blod; color:#337ab7;">{{book.book_author}}</span></h4>
	                  <h4 class="book_price">The price is <span style="font-size:30px; font-weight:blod:">$</span><span style="font-size:30px;">{{book.book_price}}</span></h4>
	                </div>
	                <div class="add_to_cart">
	                    <form>
	                    <div class="bid" style="visibility:hidden">{{book.book_id}}</div>
	                      Qty: <input type="number" name="points" value="1" min="1" max="15" />
	                      <button type="button">Add to Cart</button> 
	                    </form>
                  	</div>    
	              </div>
	            </div>
            
          </div>
        </div>
      </div>
      
      <footer>
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
          <p>
              Copyright © 1990 - 2015 <span> &nbsp;&nbsp;&nbsp;<a href="" title="">Wonder4BookStore.com</a></span>&nbsp;&nbsp;&nbsp;<span> <a href="" title="">Terms of Use</a></span> | <span> <a href="" title="">Privacy Policy</a></span>
          </p>
        </div>       
      </footer>
     </div>
    <%-- <div class="container">
        
      <!-- header start -->
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
                    <li>
                     <a href="books_list.html">Advanced Search</a>    
                  </li>
                  <li><a href="index.html">New Releases</a></li>
                  <li><a href="index.html">Best Sellers</a></li>
                  <li><a href="index.html">Special Values</a></li>
                  <li>
                    <div class="right-inner-addon">
                      <i class="fa fa-search"></i>
                        <input type="search" class="form-control" placeholder="Search" />
                    </div>
                  </li> 
                </ul>
                <ul class="nav navbar-nav navbar-right">
                  <li>
                    <a href="#" type="button" class="btn" data-toggle="modal" data-target="#myModal"><i class="fa fa-user"></i>&nbsp;Login</a>
                  </li>
                  <li class="nav_right">
                    <a href="cart.html"><i class="fa fa-shopping-cart"></i>&nbsp;Cart</a>
                  </li>          
                </ul>
              </div>
            </div>
          </nav>         
        </header>
      <!-- header end -->
      
      <a href="cart.html"><div id="float_cart" class="fa fa-shopping-cart"></div></a>

        
      <!-- modal start   -->
      <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-lg" style="background: rgb(26, 37, 45); width:500px;">
          <div class="modal-content"  style=" background: rgb(26,37,45); width:500px; height:600px;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">LOGIN or SIGNUP</h4>
            </div>
            <div class="modal-body">    
              <div class="form">
                <ul class="tab-group">
                  <li class="tab active"><a href="#login">Log In</a></li>
                  <li class="tab"><a href="#signup">Sign Up</a></li>
                </ul>
                <div class="tab-content">
                  <div id="login">   
                    <h1>Welcome Back!</h1>
                    <form action="/" method="post">
                      <div class="field-wrap">
                          <label>Email Address<span class="req">*</span></label>
                          <input type="email"required autocomplete="off"/>
                      </div>
                      <div class="field-wrap">
                          <label>Password<span class="req">*</span>
                          </label>
                          <input type="password"required autocomplete="off"/>
                      </div>
                      <p class="forgot"><a href="#">Forgot Password?</a></p>
                      <button class="button button-block">Log In</button>
                    </form>
                  </div>
                
                  <div id="signup">   
                    <h1>Sign Up for Free</h1>
                    <form action="/" method="post">
                      <div class="top-row">
                        <div class="field-wrap">
                          <label>First Name<span class="req">*</span></label>
                          <input type="text" required autocomplete="off" />
                        </div>        
                        <div class="field-wrap">
                          <label>Last Name<span class="req">*</span></label>
                          <input type="text"required autocomplete="off"/>
                        </div>
                      </div>
                      <div class="field-wrap">
                        <label>Email Address<span class="req">*</span></label>
                        <input type="email"required autocomplete="off"/>
                      </div>
                      <div class="field-wrap">
                        <label>Set A Password<span class="req">*</span>
                        </label>
                        <input type="password"required autocomplete="off"/>
                      </div>
                      <button type="submit" class="button button-block"/>Get Started</button>
                    </form>
                  </div>

                </div><!-- tab-content -->
              </div> <!-- /form -->
            </div><!-- modal-body end -->
          </div>
        </div>
      </div>
      <!-- modal start end -->

      <div class="books_list">
        <div class="row">
          <!-- books categories -->
          <div class="col-sm-4">
            <div class="refine_search">
              <h1 style="text-align:center; margin-bottom:20px;">Refine Search</h1>
              <div class="search_part">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h2 class="panel-title">Categories</h2>
                  </div>
                   <form action="books_list.html?cateid" method="post">
                  <div class="panel-body">
                  <div class="checkbox">
                    <label>
                      <input id="art-photo" type="checkbox" name="cateid_1">Art & Photography
                    </label>
                  </div>
                  <div class="checkbox">
                    <label>
                      <input id="bus-invest" type="checkbox" name="cateid_2">Business & Investing
                    </label>
                  </div>
                  <div class="checkbox">
                    <label>
                      <input id="com-tech" type="checkbox" name="cateid_3">Computers & Technology
                    </label>
                  </div>
                  <div class="checkbox">
                    <label>
                      <input id="edu-teach" type="checkbox" name="cateid_4">Education & Teaching
                    </label>
                  </div>
                  <div class="checkbox">
                    <label>
                      <input id="history" type="checkbox" name="cateid_5" >History
                    </label>
                  </div>
                  <button type="submit" style="margin-top:30px; margin-left:130px;">Search</button>
                  </div>
                  	
                  </form>
                </div>
              </div>
            </div>            
          </div>
          <!-- books categories end-->
          <div class="col-sm-8" >
            <!-- books detail start -->
            
			<c:forEach var="Book" begin="0" end="39" items="${bookinfo.book}" >
				<div class="row" style="margin-top:56px;">
	              <div class="col-sm-4 col-sm-offset-1">
	                <div class="book_cover">
	                  <div id="bk-list" class="bk-list">
	                    <div class="ca-item">  
	                      <div class="bk-li"> 
	                        <div class="bk-book bk-bookdefault">
	                          <div class="bk-front">
	                            <div class="bk-cover-back">  
	                            </div>
	                            <div class="bk-cover"><a href="" data-toggle="modal" data-target="#${Book.book_id}"><img src="${Book.book_image_f}" alt=""></a></div>
	                          </div>
	                          <div class="bk-back"><img src="${Book.book_image_b}" alt=""></div>
	                          <div class="bk-right"></div>
	                          <div class="bk-left"></div>
	                          <div class="bk-top"></div>
	                          <div class="bk-bottom"></div>
	                        </div>
	                        <div class="bk-info"></div>
	                      </div> 
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <div class="col-sm-7">
	                <div class="book_info">
	                  <h3 class="book_title">${Book.book_name}</h3>
	                  <h4 class="book_author"><span>By:&nbsp;&nbsp;</span><span style="font-size:20px; font-weight:blod; color:#337ab7;">${Book.book_author}</span></h4>
	                  <h4 class="book_price">The price is <span style="font-size:30px; font-weight:blod:">$</span><span style="font-size:30px;">${Book.book_price}</span></h4>
	                </div>
	                <div class="add_to_cart">
	                    <form>
	                    <div class="bid" style="visibility:hidden">${Book.book_id}</div>
	                      Qty: <input type="number" name="points" value="1" min="1" max="15" />
	                      <button type="button">Add to Cart</button> 
	                    </form>
                  	</div>    
	              </div>
	            </div>
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
			                    <h3 class="book_price">The price is $:<span>${Book.book_price}</span></h3>
			                  </div>
			                  <div class="add_to_cart">
			                    <form>
			                    <div class="bid" style="visibility:hidden">${Book.book_id}</div>
			                      Qty: <input type="number" name="points" value="1" min="1" max="15" />
			                      <button type="button">Add to Cart</button> 
			                    </form>
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
            
          </div>
        </div>
      </div>
      
      
        
      <footer>
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
          <p>
              Copyright © 1990 - 2015 <span> &nbsp;&nbsp;&nbsp;<a href="" title="">Wonder4BookStore.com</a></span>&nbsp;&nbsp;&nbsp;<span> <a href="" title="">Terms of Use</a></span> | <span> <a href="" title="">Privacy Policy</a></span>
          </p>
        </div>       
      </footer>
    </div> --%>
      <!-- modal end -->
      

    


   <!-- JavaScript -->
   
    <!-- bootstrap -->
    <script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
    <script src="js/add-to-cart.js"></script>

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
    console.log(sessionStorage.loggedIn);
    console.log(sessionStorage.username);
    if(sessionStorage.loggedIn==1){
    	var parent=$('.fa-user').parent();
    	$('.fa-user').parent().empty();
    	parent.append("<i class='fa fa-user'></i>"+sessionStorage.username);
    }
    if(sessionStorage.cartHasItem==1){
    	$('#float_cart').css("color","#CC0000");
    	$('#float_cart').attr("class","fa fa-cart-arrow-down");
    }
    
    
    // sticky
    $(function(){ // document ready

        if (!!$('#float_cart').offset()) { // make sure ".sticky" element exists

          var stickyTop = $('#float_cart').offset().top; // returns number 

          $(window).scroll(function(){ // scroll event

            var windowTop = $(window).scrollTop(); // returns number 

            if (stickyTop < windowTop){
              $('#float_cart').css({ position: 'fixed', right: 0 });
            }
            else {
              $('#float_cart').css('position','fixed');
            }

          });

        }

      });
    // sticky end

                      var book_ids_array = new Array();
                      var book_price_array = new Array();
                      var book_quantity_array = new Array();
                      var book_img_array=new Array();

                     
                      
                      console.log(sessionStorage.book_ids_array);
                      console.log(sessionStorage.book_price_array);
                      console.log(sessionStorage.book_quantity_array);
                      console.log(sessionStorage.book_img_array);

              var book_ids_array = JSON.parse(sessionStorage.book_ids_array);
              var book_price_array = JSON.parse(sessionStorage.book_price_array);
              var book_quantity_array = JSON.parse(sessionStorage.book_quantity_array);
              var book_img_array = JSON.parse(sessionStorage.book_img_array);
                        $('.add_to_cart').find('button').click(function(){

                          
                        	sessionStorage.cartHasItem=1;

                          book_ids_array.push($('.bid').html());
                          book_price_array.push($(this).parents('.add_to_cart').prev().find('span').last().html());
                          
                          book_quantity_array.push($(this).prev().val());

                          book_img_array.push($(this).parents('.row').eq(0).find('img').attr('src'));

                          
                        sessionStorage.book_ids_array=JSON.stringify(book_ids_array);
                        sessionStorage.book_price_array=JSON.stringify(book_price_array);
                        sessionStorage.book_quantity_array=JSON.stringify(book_quantity_array);
                        sessionStorage.book_img_array=JSON.stringify(book_img_array);

                        console.log(sessionStorage.book_ids_array);
                    console.log(sessionStorage.book_price_array);
                    console.log(sessionStorage.book_quantity_array);
                    console.log(sessionStorage.book_img_array);                       
                        });                   
      </script>
  </body>
</html>