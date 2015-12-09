<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/indexPage.js"></script>
    
    <script src="js/prefixfree.min.js"></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</head>
<body>
	<div class="container">
        
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
                    <a href="#" class="btn" data-toggle="modal" data-target="#myModal"><i class="fa fa-user"></i>&nbsp;Login</a>
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

      <!-- login and sign up pages start -->
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
          
                  <form action="homepage.html" method="post">
          
                  <div class="field-wrap">
                    <label>Email Address<span class="req">*</span></label>
                    <input type="email" required autocomplete="off" name="email"/>
                 
                  </div>
          
                  <div class="field-wrap">
                    <label>Password<span class="req">*</span>
                    </label>
                    <input type="password"required autocomplete="off" name="password"/>
                  </div>
          
                  <p class="forgot"><a href="#">Forgot Password?</a></p>
          
                  <button class="button button-block" type="submit">Log In</button>
          
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

              </div>
              <!-- <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div> -->
            </div>
          </div>
      </div>
      <!-- login and sign up pages end -->

      <!-- ad start -->
      <div class="ad">
          <h1>A book is a dream that you hold in your hand.</h1>
          <img src="img/books/bookswall.jpg">
      </div>
      <!-- ad end -->
        
      <!-- new releases books dispaly  -->
          
      <section id="new_releases" class="books_display">
          <div class="row">
            <div class="col-sm-12">
              <div class="display_top">
                <h1>New Releases</h1>
                <p>Our best-selling new and future releases.</p>
              </div>
              
              <div id="ca-container" class="ca-container">
                <div id="bk-list" class="bk-list ca-wrapper clearfix"> 
                 
                  <div id="book-info1" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a data-toggle="modal" data-target="#myBookModal"><img src="img/books/1.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/1b.jpg" alt="">
                          </div>
                          <div class="bk-left">
                            <p>
                              <span>The School of Greatness</span>
                            </p>
                          </div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name1">The School of Greatness</h4></a>
                          <h5><span>By:&nbsp;</span><span>Lewis Howes</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                  </div>

                  <div id="book-info2" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a data-toggle="modal" data-target="#myBookModal"><img src="img/books/2.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/2b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name2">Imagine Heaven</h4></a>
                          <h5><span>By:&nbsp;</span><span>John Burke</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                  </div>             
                  
                  <div id="book-info3" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/3.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/3b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name3">Rush Revere</h4></a>
                          <h5><span>By:&nbsp;</span><span>Kathry Adams</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 
                  
                  <div id="book-info4" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/4.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/4b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name4">Explorers Guild</h4></a>
                          <h5><span>By:&nbsp;</span><span>Kevin Costner</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 
                  
                  <div id="book-info5" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/5.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/5b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name5">Go set a watchman</h4></a>
                          <h5><span>By:&nbsp;</span><span>Harper Lee</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 

                  <div id="book-info6" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/6.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/6b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name6">The Bazaar of Bad Dreams</h4></a>
                          <h5><span>By:&nbsp;</span><span>Stephen King</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 

                  <div id="book-info7" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/7.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/7b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name7">The Survivor</h4></a>
                          <h5><span>By:&nbsp;</span><span>Vince Flynn</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 

                  <div id="book-info8" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/8.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/8b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name8">The Lake House</h4></a>
                          <h5><span>By:&nbsp;</span><span>Kate Morton</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 
                    
                    
                    <div id="book-info9" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/9.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/9b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name9">The Martian</h4></a>
                          <h5><span>By:&nbsp;</span><span>Andy Weir</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                  </div>
                  
                  <div id="book-info10" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/10.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/10b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name10">Grey</h4></a>
                          <h5><span>By:&nbsp;</span><span>E L James</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                  </div>
                    

                </div>
              </div>
            </div>
          </div> 
        <hr>        
      </section>

      <!-- new releases books display end -->

      <!-- best seller books display -->

      <section id="best_sellers" class="books_display">
          <div class="row">
            <div class="col-sm-12">
              <div class="display_top">
                <h1>Best Seller</h1>
                <p>Our most popular products based on sales. </p>
              </div>
              
              <div id="ca-container" class="ca-container">
                <div id="bk-list" class="bk-list ca-wrapper clearfix"> 
                 
                  <div id="book-info11" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/11.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/11b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name11">Orphan train</h4></a>
                          <h5><span>By:&nbsp;</span><span>Christina Baker Kline</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                  </div>

                  <div id="book-info12" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/12.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/12b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name12">Everything I told</h4></a>
                          <h5><span>By:&nbsp;</span><span>Celate Ng</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                  </div>             
                  
                  <div id="book-info13" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/13.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/13b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name13">Young</h4></a>
                          <h5><span>By:&nbsp;</span><span>Eve</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 

                  <div id="book-info14" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/14.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/14b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name14">Thug Kitchen</h4></a>
                          <h5><span>By:&nbsp;</span><span>Party Grub</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 

                  <div id="book-info15" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/15.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/15b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name15">The German War</h4></a>
                          <h5><span>By:&nbsp;</span><span>Nicholas Stargardt</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 

                  <div id="book-info16" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/16.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/16b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name16">The Mistletoe Inn</h4></a>
                          <h5><span>By:&nbsp;</span><span>Richard Paul</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 

					<div id="book-info17" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/17.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/17b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name17">Disciples</h4></a>
                          <h5><span>By:&nbsp;</span><span>Douglas Waller</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                  </div>

                  <div id="book-info18" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/18.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/18b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name18">Rosemary</h4></a>
                          <h5><span>By:&nbsp;</span><span>Kate Clifford</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                  </div>             
                  
                  <div id="book-info19" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/19.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/19b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name19">Avenue of Mysteries</h4></a>
                          <h5><span>By:&nbsp;</span><span>John Irving</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 
                  
                  <div id="book-info20" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/20.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/20b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name20">Big Magic</h4></a>
                          <h5><span>By:&nbsp;</span><span>Elizabeth Gilbert</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 
				
				
                </div>
              </div>
            </div>
          </div>
         <hr>          
      </section>

      <!-- best seller books display end -->

      <!-- special values books display -->
      <section id="special_values" class="books_display">
          <div class="row">
            <div class="col-sm-12">
              <div class="display_top">
                <h1>Special Values</h1>
                <p>Our best-selling special values books.</p>
              </div>
              
              
              <div id="ca-container" class="ca-container">
                <div id="bk-list" class="bk-list ca-wrapper clearfix"> 
                 
                  
                  
                  <div id="book-info21" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/21.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/21b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name21">All the Light we cannot see</h4></a>
                          <h5><span>By:&nbsp;</span><span>Elizabeth Gilbert</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 

                  <div id="book-info22" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/22.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/22b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name22">The Nightingale</h4></a>
                          <h5><span>By:&nbsp;</span><span>Kristin Hannah</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 

                  <div id="book-info23" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/23.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/23b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name23">The Girl on the Train</h4></a>
                          <h5><span>By:&nbsp;</span><span>Paula Hawkins</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 

                  <div id="book-info24" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/24.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/24b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name24">Those who save us</h4></a>
                          <h5><span>By:&nbsp;</span><span>Jenna Blum</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 
                    
                    <div id="book-info25" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/25.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/25b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name25">Sarahs Key</h4></a>
                          <h5><span>By:&nbsp;</span><span>Tatiana de Rosnay</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div>
                    
                    <div id="book-info26" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/26.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/26b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name26">The Kommandants Girl</h4></a>
                          <h5><span>By:&nbsp;</span><span>Pam Jenoff</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 
                    
                    <div id="book-info27" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/27.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/27b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name27">The Diplomats Wife</h4></a>
                          <h5><span>By:&nbsp;</span><span>Pam Jenoff</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div>
                    
                    <div id="book-info28" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/28.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/28b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name28">Cyber Warfare One</h4></a>
                          <h5><span>By:&nbsp;</span><span>Bobby Akart</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div>
                    
                    <div id="book-info29" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/29.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/29b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name29">Cyber Warfare Two</h4></a>
                          <h5><span>By:&nbsp;</span><span>Bobby Akart</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div> 
                    
                    <div id="book-info30" class="ca-item">
                      <div class="bk-li">                   
                        <div class="bk-book bk-bookdefault">
                          <div class="bk-front">
                            <div class="bk-cover">
                              <a href="#"  data-toggle="modal" data-target="#myBookModal"><img src="img/books/30.jpg" alt=""></a>        
                            </div>
                          </div>
                          <div class="bk-back">
                            <img src="img/books/30b.jpg" alt="">
                          </div>
                          <div class="bk-left"></div>
                        </div>
                        <div class="bk-info">
                          <a href="#"  data-toggle="modal" data-target="#myBookModal">
                          <h4 id="book-name30">Home</h4></a>
                          <h5><span>By:&nbsp;</span><span>A American</span></h5>
                          <button class="bk-bookback">Flip to back</button>                          
                        </div>
                      </div> 
                    </div>              
                     

                </div>
              </div>
            </div>
          </div>
        <hr>         
      </section>
      <!-- special values books display end -->

      <div class="modal fade" id="myBookModal" role="dialog">
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
                      <div id="bk-list" class="bk-list">       
                        <div class="ca-item">  
                          <div class="bk-li"> 
                            <div class="bk-book bk-bookdefault">
                              <div class="bk-front">
                              <div class="bk-cover-back"></div>
                              <div class="bk-cover">
                                <img id="book-image-f" src="img/books/1.jpg" alt="">
                              </div>
                              </div>
                              <div class="bk-page">
                              <div class="bk-content bk-content-current">
                                <p>Red snapper Kafue pike fangtooth humums slipmouth, salmon cutlassfish; swallower European perch mola mola sunfish, threadfin bream. Billfish hog sucker trout-perch lenok orbicular velvetfish. Delta smelt striped bass, medusafish dragon goby starry flounder cuchia 
                                </p>
                              </div>
                              </div>
                              <div class="bk-back">
                                <img id="book-image-b" src="img/books/1b.jpg" alt="">
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
                  <div class="col-sm-7">
                  <div class="book_info">
                    <h3 id="book-name" class="book_title">LEWIS HOWES</h3>
                    <h4 id="book-author" class="book_author">by Someone.</h4>
                    <h4 id="book-publish">Date</h4>
                    <h3 class="book_price">List Price:<span>$</span><span id="book-price">10.00</span></h3>
                  </div>
                  <div class="add_to_cart">
                    <form>
                    <div class="bid" style="display: none"></div>
                      <span>Qty:</span><input type="number" name="points" min="1" max="15" value="1" /><button type="button">Add to Cart</button>
                    </form>
                  </div>
                  <div class="description">
                    <h3>Description</h3>
                    <p id="book-intro" >Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet quod ipsa dolores sit corrupti blanditiis inventore esse nihil dolore, maxime aliquid, tenetur iure impedit minus atque vel pariatur accusamus tempore?</p>
                  </div>
                  </div>
                <!-- book's details end -->
                </div>
              </div>
            </div>
        </div>
      </div>


        
      <!-- footer start -->
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
            <p>Copyright © 1990 - 2015 <span> &nbsp;&nbsp;&nbsp;<a href="" title="">Wonder4BookStore.com</a></span>&nbsp;&nbsp;&nbsp;<span> <a href="" title="">Terms of Use</a></span> | <span> <a href="" title="">Privacy Policy</a></span></p>
          </div>       
      </footer>
    </div>




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

                     
                      
                      if(sessionStorage.book_ids_array=="undefined"){
                      sessionStorage.book_ids_array=JSON.stringify(book_ids_array);
                      sessionStorage.book_price_array=JSON.stringify(book_price_array);
                      sessionStorage.book_quantity_array=JSON.stringify(book_quantity_array);
                      sessionStorage.book_img_array=JSON.stringify(book_img_array);
                      
                    }
                    console.log(sessionStorage.book_ids_array);
                    console.log(sessionStorage.book_price_array);
                    console.log(sessionStorage.book_quantity_array);
                    console.log(sessionStorage.book_img_array);

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
</body>
</html>