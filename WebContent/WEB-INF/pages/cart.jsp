<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <meta charset="UTF-8">
    <title>Responsive Shopping Cart</title>
    
    
    <link rel="stylesheet" href="css/normalize.css">
    <link href="css/bootstrap.min.css" type="css/text" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="css/text" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/jquery.jscrollpane.css" media="all" />

    <link rel="stylesheet" href="css/style.css">
    <script src="js/modernizr.custom.js"></script>


    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    
    <style>

      .product{
        height: 290px;
      }
      
      .order-sum{
        width: 330px;
        height:500px;
        text-align: right;
        float:right;
      }
      .checkout-content{
        width: 300px;
        height:300px;
        
      }

    </style>



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
                    <a  href="books_list.html">Advanced Search</a>
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
    
    <!-- checkout content start -->

    <div class="row">

      <div class="col-sm-8">
        <div class="cart_box">
          <h1 style="margin-bottom:40px;">Shopping Cart</h1>
          <div class="shopping_cart">
            <div class="column-labels">
              <label class="product-details" style="font-size:18px;">Product</label>
              <label class="product-price" style="font-size:18px;">Price</label>
              <label class="product-quantity" style="font-size:18px;">Quantity</label> 
              <label class="product-line-price" style="font-size:18px;">Subtotal</label>
              <label class="product-removal" style="font-size:18px;">Remove</label>
            </div>
          </div><!-- shopping-cart -->
        </div> <!-- cart-box -->
      </div><!-- col-sm-8 -->

      <!-- checkout start-->
      <div class="col-sm-4" >
        <div class="order-sum">
          <h2>Order Summary</h2>
        <div class="checkout-content">
          
          <div class="totals">
            <div class="totals-item">
              <label style="font-size:18px;">Subtotal</label>
              <div class="totals-value" id="cart-subtotal" style="font-size:15px; color:#337ab7;">0</div>
            </div>
            <div class="totals-item">
              <label style="font-size:18px;">Tax (8%)</label>
              <div class="totals-value" id="cart-tax" style="font-size:15px;color:#337ab7;">0</div>
            </div>
            <div class="totals-item">
              <label style="font-size:18px;">Shipping</label>
              <div class="totals-value" id="cart-shipping" style="font-size:15px;color:#337ab7;">0</div>
            </div>
            <div class="totals-item totals-item-total">
              <label style="font-size:18px;">Total</label>
              <div class="totals-value" id="cart-total" style="font-size:16px; color:#337ab7;">0</div>
            </div>
          </div>      
          <a href="payment.html"><button class="checkout">Checkout</button></a>
        </div>
      </div><!-- order-sum -->
      </div><!-- col-sm -->
      <!-- check out end -->
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
            <p>Copyright © 1990 - 2015 <span> &nbsp;&nbsp;&nbsp;<a href="" title="">Wonder4BookStore.com</a></span>&nbsp;&nbsp;&nbsp;<span> <a href="" title="">Terms of Use</a></span> | <span> <a href="" title="">Privacy Policy</a></span></p>
          </div>       
        </footer>

</div><!-- container -->

    


     

    <script src="js/card.js"></script>
    <script>
        new Card({
            form: document.querySelector('form'),
            container: '.card-wrapper'
        });
    </script>

    <script type="text/javascript">
    $(function(){ // document ready

      if (!!$('.order-sum').offset()) { // make sure ".sticky" element exists

        var stickyTop = $('.order-sum').offset().top; // returns number 

        $(window).scroll(function(){ // scroll event

          var windowTop = $(window).scrollTop(); // returns number 

          if (stickyTop < windowTop){
            $('.order-sum').css({ position: 'fixed', top: 0 });
          }
          else {
            $('.order-sum').css('position','static');
          }

        });

      }

    });
  </script>
  <script>
  console.log(sessionStorage.loggedIn);
  console.log(sessionStorage.username);
  
  if(sessionStorage.loggedIn==1){
  	var parent=$('.fa-user').parent();
  	$('.fa-user').parent().empty();
  	parent.append("<i class='fa fa-user'></i>"+sessionStorage.username);
  }

                    console.log(sessionStorage.book_ids_array);
                    console.log(sessionStorage.book_price_array);
                    console.log(sessionStorage.book_quantity_array);
                    console.log(sessionStorage.book_img_array);

            var book_ids_array = JSON.parse(sessionStorage.book_ids_array);
            var book_price_array = JSON.parse(sessionStorage.book_price_array);
            var book_quantity_array = JSON.parse(sessionStorage.book_quantity_array);
            var book_img_array = JSON.parse(sessionStorage.book_img_array);



                      var summary_number1=0;
                      var summary_number2=0.08;
                      var summary_number3=15;
                      var summary_number4;


            for(var i=0;i<book_ids_array.length;i++){

              summary_number1=Number(summary_number1)+Number(book_price_array[i])*Number(book_quantity_array[i]);

            $('.shopping_cart').append("<div class='product'><div class='product-details'><div class='main'><div id='bk-list' class='bk-list clearfix'><div class='book_cover'><div id='bk-list' class='bk-list'><div class='ca-item'><div class='bk-li'><div class='bk-book bk-bookdefault'><div class='bk-front'><div class='bk-cover'><img src='"+book_img_array[i]+"'></div></div><div class='bk-left'></div></div></div></div></div></div></div></div></div><div class='bid' style='display:none;'>"+book_ids_array[i]+"</div><div class='product-price'>"+book_price_array[i]+"</div><div class='product-quantity'><input type='number' value='"+book_quantity_array[i]+"' min='1'></div><div class='product-line-price'>"+(book_price_array[i]*book_quantity_array[i])+"</div><div class='product-removal'><button class='remove-product'>X</button></div></div>");
          
           
            }

            summary_number1=Number(summary_number1);
            summary_number2=Number(summary_number2);
            summary_number3=Number(summary_number3);
            summary_number4=Number(summary_number4);
            

            $('#cart-subtotal').html(summary_number1.toFixed(2));
            $('#cart-tax').html((summary_number1*summary_number2).toFixed(2));
            $('#cart-shipping').html(summary_number3.toFixed(2));
            $('#cart-total').html((summary_number1+summary_number1*summary_number2+summary_number3).toFixed(2));
            

             $('.remove-product').click(function(){
              var index=$(this).parents('.product').index('.product');

              book_ids_array.splice(index,1);
              book_price_array.splice(index,1);
              book_quantity_array.splice(index,1);
              book_img_array.splice(index,1);


              sessionStorage.book_ids_array=JSON.stringify(book_ids_array);
              sessionStorage.book_price_array=JSON.stringify(book_price_array);
              sessionStorage.book_quantity_array=JSON.stringify(book_quantity_array);
              sessionStorage.book_img_array=JSON.stringify(book_img_array);

            });
            
            </script>


            <script src="js/index.js"></script>
            <script>
    $('.checkout').click(function(){
        
        sessionStorage.cartSubtotal=$('#cart-subtotal').html();
        sessionStorage.cartTax=$('#cart-tax').html();
        sessionStorage.cartShipping=$('#cart-shipping').html();
        sessionStorage.cartTotal=$('#cart-total').html();

    });
    </script>


    
  </body>
</html>