<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>
<?php

	if(!isset($_GET['proid']) || $_GET['proid']==NULL){
       echo "<script>window.location ='404.php'</script>";
    }else{
        $id = $_GET['proid']; 
    }
 	$customer_id = Session::get('customer_id');
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['compare'])) {

        $productid = $_POST['productid'];
        $insertCompare = $product->insertCompare($productid, $customer_id);
        
    }
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['wishlist'])) {
        $productid = $_POST['productid'];
        $insertWishlist = $product->insertWishlist($productid, $customer_id);
        
    }
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {

        $quantity = $_POST['quantity'];
        $insertCart = $ct->add_to_cart($quantity, $id);
        
    }
    if(isset($_POST['binhluan_submit'])){
    	$binhluan_insert = $cs->insert_binhluan();
    }
?>




<style>
.span_1_of_2 {
    width: 60%;
    padding: 1.5%;
	float: left;
}
.span_3_of_2 {
    width: 45.2%;
}

.images_3_of_2 {
    width: 300px;
    float: left;
    /* text-align: center; */
}
.product-desc, .product-tags {
    clear: none;
    padding-top: -43px;
    float: left;
    width: 40%;
}
.add-cart {
    width: 300px;
}

.button_details input[type=submit] {
    float: left;
    margin: 5px;
    width: 130px;
}
.buysubmit {
	background: #378181 ;
	width: 120px;
}

.buysubmit:hover{
	opacity: 0.7;
}
p {
    margin-left: 10px;
}

</style>
 <div class="main">
	 <div class="main__left">
		 
	 </div>
    <div class="content">
    	<div class="section group">
		<?php

		$get_product_details = $product->get_details($id);
		if($get_product_details){
			while($result_details = $get_product_details->fetch_assoc()){
		

		?>
		<div class="cont-desc span_1_of_2">				
					<div class="grid images_3_of_2">
						<img src="admin/update/<?php echo $result_details['image'] ?>" alt="" />
					</div>
				<div class="desc span_3_of_2">
					<h2><?php echo $result_details['productName'] ?></h2>
					<div class="price">
						<p>Price: <span><?php echo $fm->format_currency($result_details['price'])." "."VN??" ?></span></p>
						<p>Lo???i: <span><?php echo $result_details['catName'] ?></span></p>
						<p>Brand:<span><?php echo $result_details['brandName']?></span></p>

					</div>
				<div class="add-cart">
					<form action="" method="post">
						<input type="number" class="buyfield" name="quantity" value="1" min="1"/>
						<?php
					if ($result_details['soluong']==0){
						echo '<h3 class="soldout" style="color: red; margin-left:0;margin-top:20px">Sold Out</h3>';
					}
					else {
						echo '<input type="submit" class="buysubmit" name="submit" value="Th??m v??o r??? h??ng"/>';
					}

					?>
					</form>		
					<?php
						if(isset($insertCart)){
							echo $insertCart;
						}
					?>		
				</div>
				<div class="add-cart">
					<div class="button_details">
					<form action="" method="POST">
					<input type="hidden" name="productid" value="<?php echo $result_details['productId'] ?>"/>
					</form>


					<form action="" method="POST">
					<input type="hidden" name="productid" value="<?php echo $result_details['productId'] ?>"/>

					<?php
	
					$login_check = Session::get('customer_login'); 
						if($login_check){
							
							echo '<input type="submit" class="buysubmit" name="wishlist" style="margin-top: 40px;"  value="Th??m v??o y??u th??ch">';
						}else{
							echo '';
						}							
					?>										
					</form>

					</div>
					<div class="clear"></div>
					<p>
					<?php
					if(isset($insertCompare)){
						echo $insertCompare;
					}
					?>
					<?php
					if(isset($insertWishlist)){
						echo $insertWishlist;
					}
					?>
					
					
				</p>
					
				</div>

				
			</div>
		</div>
			<div class="product-desc">
			<h2>Th??ng tin s???n ph???m</h2>
			<?php echo $result_details['product_desc'] ?>
		</div>
			<?php
			}
		}
		?>
 		</div>

		
 		<div class="binhluan" style="padding-left: 70px;">
		<div class="row">

			<div class="col-md-8">
			<h5>B??nh lu???n s???n ph???m</h5>
			<?php
			if(isset($binhluan_insert)){
				echo $binhluan_insert;
			} 
			?>
			<form action="" method="POST">
				<p><input type="text" name="tenkh" style="width:180px;" placeholder="Nh???p h??? t??n"></p>
				<p><input type="text" name="sdt" style="width:180px;" placeholder="Nh???p s??? ??i???n tho???i"></p>
				<p><h4>????nh gi??</h4><select name="danhgia">
					<option value="0">H??i l??ng</option>
					<option value="1">Kh??ng h??i l??ng</option>
				</select>
			</p>
	 			<p><textarea rows="5" style="resize: none;" placeholder="B??nh lu???n...." class="form-control" name="noidung"></textarea></p>
	 			<p><input type="submit" name="binhluan_submit" class="btn btn-success" style="width: 150px;" value="G???i b??nh lu???n"></p>
 			</form>
 		</div>
 		</div>	
 			</textarea>
 		</div>
 	</div>
 </div>
<?php 
	include 'inc/footer.php';
	
 ?>
