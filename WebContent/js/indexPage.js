$(document).ready(function(){
    	$('#book-info1').click(function() {
    		/* alert($('#book-name1').text()); */
    		var book={
    			book_id: 0,
    			book_name: $('#book-name1').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/* alert("get book success!"); */
					$('.bid').html(response.book_id);
                    $('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info2').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name2').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info3').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name3').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info4').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name4').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info5').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name5').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info6').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name6').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info7').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name7').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info8').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name8').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info9').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name9').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info10').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name10').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info11').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name11').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info12').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name12').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info13').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name13').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info14').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name14').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info15').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name15').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info16').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name16').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info17').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name17').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info18').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name18').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info19').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name19').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info20').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name20').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info21').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name21').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info22').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name22').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info23').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name23').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info24').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name24').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info25').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name25').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info26').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name26').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info27').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name27').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info28').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name28').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info29').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name29').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    	$('#book-info30').click(function() {
    		var book={
    			book_id: 0,
    			book_name: $('#book-name30').text(),
    			book_author: null,
    			book_price: 0,
    			book_cateid: null,
    			book_intro: null,
    			book_image_f: null,
    			book_image_b: null,
    			book_quantity: 0,
    			book_pubtime: null 			
    		}
    		$.ajax({
				type:"POST",
				url:"queryBook.html",
				datatype: "json",
				data: book,
				success: function(response){
					/*alert("get book success!");*/
					$('.bid').html(response.book_id);
					$('#book-name').html(response.book_name);
					$('#book-author').html(response.book_author);
					$('#book-publish').html(response.book_pubtime);
					$('#book-image-f').attr('src', response.book_image_f);
					$('#book-image-b').attr('src', response.book_image_b);
					$('#book-intro').html(response.book_intro);
					$('#book-price').html(response.book_price);
				},
				error: function(e){
					alert('Error'+e);
				}
			});
    	});
    })