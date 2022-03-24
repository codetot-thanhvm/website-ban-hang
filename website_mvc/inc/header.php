<?php ob_start(); ?>
<?php
    include 'lib/session.php';
    Session::init();
?>
<?php
	include 'lib/database.php';
	include 'helpers/format.php';
	spl_autoload_register(function($class){
		include_once "classes/".$class.".php";
	});
	$db = new Database();
	$fm = new Format();
	$ct = new cart();
	$us = new user();
	$br = new brand();
	$cat = new category();
	$cs = new customer();
	$product = new product();	      	 	
?>
<?php
  header("Cache-Control: no-cache, must-revalidate");
  header("Pragma: no-cache"); 
  header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); 
  header("Cache-Control: max-age=2592000");
?>
<!DOCTYPE HTML>
<head>
<title>Thanh Minh Shop</title>
<meta http-equiv="charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all"/>
<script src="js/jquerymain.js"></script>
<script src="js/script.js" type="text/javascript"></script>
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script> 
<script type="text/javascript" src="js/nav-hover.js"></script>
<link href='http://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
<link rel="icon" href="http://lic.humg.edu.vn/App_Themes/humg/images/humg-logo.png" type="image/x-icon">
<link rel="stylesheet" href="./css/fontawesome-free-5.15.4-web/css/all.min.css">
    <style>
		/* =====================Tổng quát ==========================*/
			input[type="text"]:hover,input[type="password"]:hover{
				cursor: text;
			}
			img {
				object-fit: cover;
			}

			.main {
				min-height: 700px;
			}	
		/* ============================================================ */
        .header {
            display: flex;
            align-items: center;
            justify-content: space-around;
            height: 75px;
			background-color: #e4e4e466;
        }
		
		.header .header__logo a{
			position:absolute;
			margin-top: -20px;
			font-size: 30px;
			color: #0d40a5;
			font-family: 'Monda', sans-serif;
		}
		.header .header__logo a:hover {
			text-decoration: none;
		}
        .header .header__search .search {
            height: 26px;
            width: 350px;
            cursor:text;
			margin-right: 20px;
			margin-top: 0px;
			padding: 14px 13px;
        }
        .header .header__search button, input {
            overflow: visible;
            width: 80px;
            height: 31px;
            cursor: pointer;
        }
        .fa-shopping-cart,
        .fa-user:before {
            content: "\f007";
            color: #16336e;
            font-size: 25px;
            margin-right: 20px;
        }
        .fa-shopping-cart:hover,
        .fa-user:hover{
            opacity: 0.8;
        }
		/*========================= menu ===========================*/
		.menu {
			position: sticky;
			top: 0;
			background: white;
			opacity: 0.8;
			z-index: 10000;
		}
		.menu .navbar-inverse{
			background: none;
			border: none;
			display: flex;
			justify-content: space-between;
			margin: 0;
			}
		.menu .navbar-inverse li:hover {
			background: #706f6f38;
		}
		.menu .container-fluid a{
			background: none !important;
			color: #459090 !important;
			box-shadow: none !important;
			text-transform: uppercase;
			}
/* ========================= CONTENT ===================================== */
		.main .content {
			width: 1400px ;
			margin: auto;
		}
		.content_bottom,
		.content_top {
			border: none;
		}

		a.xemthem {
			float: right;
			margin-right: 7%;
		}
/* ================================= IMG sản phẩm ============================ */
		.images_1_of_4 {
			position:unset;
			background-color: #ededed;
		}
		.grid_1_of_4.images_1_of_4 {
			margin-right: 52px;
			margin-top: 50px;
		}
		.images_1_of_4  img{
			max-width:145px;
			margin-top: 40px;
			height: 200px;
		}
		.grid_1_of_4 {
			box-shadow: 0px 0px 2px rgb(150 150 150 / 49%);
		}

		.soldout {
			padding-top: 0;
			position: absolute;
			margin-left: 80px;
			margin-top: 0;
		}
/* ============================================================================= */
		table.tblone tr:nth-child(2n) {
			background: #eeeeee;
		}
		/* ========================================================== */
		.end {
			height: 250px;
		}
		.brandtrending {
			font-size: 50px;
			display: flex;
			justify-content: space-evenly;
			color: #0d40a5;
			font-family: 'Monda', sans-serif;
			width: 100%;
			align-items: center;
			height: 200px;
			font-family: "Great Vibes";

		}

		a.namebrand:hover {
			opacity: 0.7;
			text-decoration: none;
		}
		.end .trending h4{
			font-family: Helvetica,Arial,sans-serif;
			line-height: 30px;
			letter-spacing: 1.2px;
			font-weight: 700;
			color: #000;
			text-transform: uppercase;
			display: flex;
			justify-content: center;
			margin-top: 50px;
			font-size: 25px;
			margin-bottom: 0;
		}
    </style>
<!-- Latest compiled and minified JavaScript -->
<script type="text/javascript">
  $(document).ready(function($){
    $('#dc_mega-menu-orange').dcMegaMenu({rowItems:'4',speed:'fast',effect:'fade'});
  });
</script>
</head>
<body>
  	<div class="wrap" style="width:100%; padding:0 0;">
	  <div class="header">
        <div class="header__logo">
			<a href="index.php">H U M G</a>
        </div>
        <div class="header__search">
            <form action="search.php" method="post">
                <input class="search" type="text" placeholder="Tìm kiếm sản phẩm" name="tukhoa">
                <input type="submit" name="search_product" class="" value="Tìm kiếm">
            </form>
        </div>
        <div class="header__left">
			<?php
				$login_check = Session::get('customer_login'); 
				if($login_check==false){
					echo '<a href="login.php"><i class="far fa-user" style="height:20px"></i></a>';
				}else{
					echo '<a href="?customer_id='.Session::get('customer_id').'"><i class="fas fa-user"></i></a>';
				}
				?>
            <a href="cart.php"><i class="fas fa-shopping-cart"></i></a>
        </div>
    </div>
				<?php 
					if(isset($_GET['customer_id'])){
						$customer_id = $_GET['customer_id'];
						$delCart = $ct->del_all_data_cart();
						$delCompare = $ct->del_compare($customer_id);
						Session::destroy();
					}
				?>
		 	<div class="clear"></div>
	 	</div>
	 	<div class="clear"></div>
 	</div>
<div class="menu">
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	   <!--  <div class="navbar-header">
	      <a class="navbar-brand" href="#">WebSiteName</a>
	    </div> -->
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="index.php">Trang chủ</a></li>
	      <li class="dropdown">
	        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	        	Danh mục sản phẩm
	        <span class="caret"></span></a>
	        <ul class="dropdown-menu">
	        	<?php
	        	$cate = $cat->show_category();
	        	if($cate){
	      			while($result_new = $cate->fetch_assoc()){
	      		?>
	          <li>
	          	<a href="productbycat.php?catid=<?php echo $result_new['catId'] ?>"><?php echo $result_new['catName'] ?></a>
	          </li>
	          <?php
	          	}
	          } 
	          ?>
	        </ul>
	      </li>
	       <li class="dropdown">
	        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	        	Thương hiệu
	        <span class="caret"></span></a>
	         <ul class="dropdown-menu">
	        	<?php
	        	$brand = $br->show_brand_home();
	        	if($brand){
	      			while($result_new = $brand->fetch_assoc()){

	      		?>
	          <li>
	          	<a href="topbrands.php?brandid=<?php echo $result_new['brandId'] ?>"><?php echo $result_new['brandName'] ?></a>
	          </li>
	          <?php
	          	}
	          } 
	          ?>
	        </ul>
	    </li>
			<li><a href="cart.php">Giỏ hàng</a></li>			
			<?php
			$login_check = Session::get('customer_login'); 
			if($login_check==false){
				echo '';
			}else{
				echo '<li><a href="profile.php">Tài khoản</a> </li>';
			}
			 ?>
			<?php
				$login_check = Session::get('customer_login'); 
				if($login_check){
					echo '<li><a href="orderdetails.php">Đơn hàng</a> </li>';
				}
			?>
			<?php
				$login_check = Session::get('customer_login'); 
				if($login_check){
					echo '<li><a href="wishlist.php">Yêu thích</a> </li>';
				}
			?>
	    </ul>
	  </div>
	</nav>
</div>
<?php ob_end_flush();?>