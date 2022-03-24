</div>


<style>
		.footer {
				height: 160px;
				background: #19110b !important;
			}

			.footer .wrapper .footer__logo {
				height: 80px;
				border-bottom: 1px solid #392d23;
				display: flex;
				align-items: center;
			}
					
			.footer .wrapper .footer__logo a{
					position:absolute;
					font-size: 22px;
					color: white;
					font-family: 'Monda', sans-serif;
			}

			.footer .wrapper .footer__logo a:hover {
				text-decoration: none;
			}


			/* ========================================= */
			.khongtimthaysp {
				text-align: center;
			}
			.text-content {
				text-align: center;
			}
			.text-content h2{
				font-size: 30px;
			}
			.social p {
				float: right;
				margin-top: 15px;
				color: #fff;
				margin-top: 55px;
				font-size: 10px;
			}
			.social i{
				color: #dedede;
				font-size: 20px;
				margin: 30px 20px 0;
			}
			.social a:first-child{
				margin-left: 35%;
			}
	</style>

   <div class="footer">
   	  <div class="wrapper">	
	    <div class="footer__logo">
			<a href="index.php">H U M G</a>
		</div>
		<div class="social">
		<a href="https://www.facebook.com/vutm1211/"><i class="fab fa-facebook-square"></i></a>
		<a href="https://www.youtube.com/"><i class="fab fa-youtube"></i></a>
		<a href="https://www.instagram.com/minn.thahh/"><i class="fab fa-instagram"></i></a>
		<a href="https://www.google.com/search?q=%C4%91%E1%BA%A1i+h%E1%BB%8Dc+m%E1%BB%8F+%C4%91%E1%BB%8Ba+ch%E1%BA%A5t"><i class="fab fa-google"></i></a>
		<a href="https://www.google.com/maps/dir/21.1657714,105.7703291/%C4%91%E1%BA%A1i+h%E1%BB%8Dc+m%E1%BB%8F+%C4%91%E1%BB%8Ba+ch%E1%BA%A5t/"><i class="fas fa-map-marked-alt"></i></a>
		<p >© 2021 THANH MINH VU</p>
		</div>
	</div>

    </div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 
    <script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
	  			containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
	 		};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
    <link href="css/flexslider.css" rel='stylesheet' type='text/css' />
	  <script defer src="js/jquery.flexslider.js"></script>
	  <script type="text/javascript">
		$(function(){
		  SyntaxHighlighter.all();
		});
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	  </script>
</body>
</html>
