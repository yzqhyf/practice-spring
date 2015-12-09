<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
  <head>
    <meta charset="UTF-8">
    <title>Responsive Shopping Cart</title>
    
    
    <link rel="stylesheet" href="css/normalize.css">
    <link href="css/bootstrap.min.css" type="css/text" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="css/text" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/jquery.jscrollpane.css" media="all" />
    <!-- <link rel="stylesheet" type="text/css" href="css/default.css" /> -->
    <link rel="stylesheet" href="css/style.css">
    <script src="js/modernizr.custom.js"></script>
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

      <style>
      
      
      input{
        color:black;
      }
      
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
      #nav-ul li{
        width: 33.33%;
      }
      #nav-ul li.active a{
        background-color: #DDDDFF;
      }
     

      #payment .card-wrapper{
        margin: 20px 0px;
      }
      #payment input{
        width: 350px;
        margin: 5px auto;
      }

      .billing-address, .shipping-address{
        margin-top: 10px;
      }
      .billing-address input, .shipping-address input{
        margin: 5px 10px 5px;
        
      }

      .checkout{
        min-width: 100px;
      }

      input#billing-form-submit{
        width:345px;
        margin:auto;
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

  <!--
    
      <div class="demo-container">
        <div class="card-wrapper"></div>

        <div class="form-container active">
            <form id="credit-card-form">
                <input placeholder="Card number" type="text" name="number">
                <input placeholder="Full name" type="text" name="name">
                <input placeholder="MM/YY" type="text" name="expiry">
                <input placeholder="CVC" type="text" name="cvc">
                <input type="submit" id="credit-card-form-submit" value="Next: Billing">
            </form>
        </div>
    </div>
    

    -->

    <h1 >Billing</h1>

    
      <div class="billing-address">

        
        <form id="billing-form" action="shipping.html" method="post">
          <table class="billing-form-table" align="center">
            <tr>
              <td>First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input name="firstName" placeholder="First name" required></td>
            </tr>
            <tr>
              <td>Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input name="lastName" placeholder="Last name" required></td>
            </tr>
            <tr>
              <td>Address1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input name="address1" placeholder="5 independence way" required></td>
            </tr>
            <tr>
              <td>Address2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input name="address2" placeholder="optional"></td>
            </tr>
            <tr>
              <td>City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input name="city" placeholder="Princeton" required></td>
            </tr>
            <tr>
              <td>State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input name="state" placeholder="NJ" required></td>
            </tr>
            <tr>
              <td>Zip&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input name="zip" placeholder="08540" required></td>
            </tr>
            <tr>
              <td>Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input name="country" value="US" disabled></td>
            </tr>
        </table>
        <div>
        <button type="submit" id="billing-form-submit">Next: Shipping</button>
        </div>
        </form>
      </div>
          
          
      </div> <!-- panel2-left end -->

      <!-- checkout start-->
      <div class="col-sm-4" >
        <div class="order-sum">
        <h2>Order Summary</h2>
        <div class="checkout-content">
          <div class="totals">
            <div class="totals-item">
              <label>Subtotal</label>
              <div class="totals-value" id="cart-subtotal" style="font-size:15px; color:#337ab7;">0</div>
            </div>
            <div class="totals-item">
              <label>Tax (8%)</label>
              <div class="totals-value" id="cart-tax" style="font-size:15px; color:#337ab7;">0</div>
            </div>
            <div class="totals-item">
              <label>Shipping</label>
              <div class="totals-value" id="cart-shipping" style="font-size:15px; color:#337ab7;">0</div>
            </div>
            <div class="totals-item totals-item-total">
              <label>Total</label>
              <div class="totals-value" id="cart-total" style="font-size:16px; color:#337ab7;">0</div>
            </div>
          </div>      
          <button class="checkout" style="display:none;">Checkout</button>
        </div>
      </div><!-- order-sum -->
      </div>
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

  
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>   
  


    <script src="js/card.js"></script>
    <script>
        new Card({
            form: document.querySelector('form'),
            container: '.card-wrapper'
        });
    </script>
    <script type="text/javascript">
    console.log(sessionStorage.loggedIn);
    console.log(sessionStorage.username);
    
    if(sessionStorage.loggedIn==1){
    	var parent=$('.fa-user').parent();
    	$('.fa-user').parent().empty();
    	parent.append("<i class='fa fa-user'></i>"+sessionStorage.username);
    }
    
    
    
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
$('#cart-subtotal').html(sessionStorage.cartSubtotal);
$('#cart-tax').html(sessionStorage.cartTax);
$('#cart-shipping').html(sessionStorage.cartShipping);
$('#cart-total').html(sessionStorage.cartTotal);

</script>
    

    
  </body>
</html>