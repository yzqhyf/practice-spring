<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" ng-app="booksApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	<script src="js/angular.min.js"></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
	
	<script type="text/javascript">
		var booksApp = angular.module("booksApp", []);
		booksApp.controller("BooksListCtrl", ['$scope', '$http', function($scope, $http) {
			$scope.books = [];
			$http({method:'GET', url:'getBooks.html'})
			.success(function(data, status, headers, config){
				$scoope.books=data;
			})
			.error(function(data, status, headers, config){
				alert("failure");
			});
		}]);
	</script>
</head>
<body ng-controller="BooksListCtrl">
	<div class="books_list">
        <div class="row">
          <!-- books categories -->
          <div class="col-sm-4">           
          </div>
          <!-- books categories end-->
          <div class="col-sm-8" >
            <!-- books detail start -->
            
				<div ng-repeat="book in books | filter:query | orderBy:orderProp" class="row" style="margin-top:56px;">
	              <div class="col-sm-4 col-sm-offset-1">
	                <div class="book_cover">
	                  <div id="bk-list" class="bk-list">
	                    <div class="ca-item">  
	                      <div class="bk-li"> 
	                        <div class="bk-book bk-bookdefault">
	                          <div class="bk-front">
	                            <div class="bk-cover-back">  
	                            </div>
	                            <div class="bk-cover"><a href="" data-toggle="modal" data-target="#${Book.book_id}"><img ng-src="{{book.book_image_f}}" alt=""></a></div>
	                          </div>
	                          <div class="bk-back"><img ng-src="{{book.book_image_b}}" alt=""></div>
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
	                  <h3 class="book_title">{{book.book_name}}</h3>
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

</body>
</html>