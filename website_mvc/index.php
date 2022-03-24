<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>
<style>
	
</style>
<div class="banner">
	<img src='scr/anh_banner.png' style="width: 100%;" alt="ảnh banner">
</div>
<div class="main">
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>Sản phẩm bán chạy</h3>
    		</div>
    		<div class="clear"></div>
    	</div> 
	      <div class="section group">
	      	<?php
	      		$product_feathered = $product->getproduct_feathered();
	      		if($product_feathered){
	      			while($result = $product_feathered->fetch_assoc()){

	      	?>
				<div class="grid_1_of_4 images_1_of_4">
				<?php
					if ($result['soluong']==0){
						echo '<h3 class="soldout" style="color: red;">Sold Out</h3>';
					}
					?>
					 <a href="details.php?proid=<?php echo $result['productId'] ?>"><img src="admin/update/<?php echo $result['image'] ?>" alt="ảnh sản phẩm" /></a>
					 <h2><?php echo $result['productName'] ?></h2>
					 <p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Chi tiết</a></span></div>
				</div>
				<?php
				}
			}
				?>
			</div> 
			<div id="allsp" class="content_bottom">
    		<div class="heading">
    		<h3>Sản phẩm</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group" >
				<?php
	      		$product_new = $product->getproduct_new();
	      		if($product_new){
	      			while($result_new = $product_new->fetch_assoc()){

	      		?>
				<div class="grid_1_of_4 images_1_of_4">
					<?php
					if ($result_new['soluong']==0){
						echo '<h3  class="soldout" style="color: red;">Sold Out</h3>';
					}
					?>
					 <a href="details.php?proid=<?php echo $result_new['productId'] ?>"><img src="admin/update/<?php echo $result_new['image'] ?>" alt="ảnh sản phẩm" /></a>
					 <h2><?php echo $result_new['productName'] ?></h2>
					 <p><span class="price"><?php echo $fm->format_currency($result_new['price'])." "."VNĐ" ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result_new['productId']?>" class="details">Chi tiết</a></span></div>
				</div>
				
				<?php
				}
			}
				?>
			</div>
			<style type="text/css">
				a.phantrang {
				    border: 1px solid #ddd;
				    padding: 10px;
				    background: #414045;
				    color: #fff;
				    cursor: pointer;
				   
				}
				a.phantrang:hover {
				    opacity: 0.8;
					color: while;
				}
			</style>
			<div class="">
				<?php
				if(isset($_GET['trang'])){
					$trang = $_GET['trang'];
				}else{
					$trang = 1;
				}
				$product_all = $product->get_all_product(); 
				$product_count = mysqli_num_rows($product_all);
				$product_button = ceil($product_count/4);
				$i = 1;
				echo '<p>Trang : </p>';
				for($i=1;$i<=$product_button;$i++){
					?>
					<a class="phantrang" <?php if($i==$trang){ echo 'style="background:orange"';} ?> style="" href="index.php?trang=<?php echo $i ?>#allsp"><?php echo $i ?></a>	
					<?php
					
				}
				?>
			</div>
			<div class="banner">
					<img src="scr/anhbanner.png" style="width: 100%; margin-top:40px;" alt="">
			</div>
    </div>
	<div class="content">
		<div class="content_top">
				<div class="heading">
				<h3>Sản phẩm: quần</h3>
				</div>
				<div class="clear"></div>
			</div> 
			<div class="section group">
				<?php
					$product_feathered = $cat->get_product_by_cat_byquan();
					if($product_feathered){
						while($result = $product_feathered->fetch_assoc()){

				?>
					<div class="grid_1_of_4 images_1_of_4">
					<?php
						if ($result['soluong']==0){
							echo '<h3 class="soldout" style="color: red;">Sold Out</h3>';
						}
						?>
						<a href="details.php?proid=<?php echo $result['productId'] ?>"><img src="admin/update/<?php echo $result['image'] ?>" alt="ảnh sản phẩm" /></a>
						<h2><?php echo $result['productName'] ?></h2>
						<p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></span></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Chi tiết</a></span></div>
					</div>
					<?php
					}
				}
					?>
						<div class="button"><span><a class="xemthem" href="productbycat.php?catid=21" class="details" sty>Xem thêm</a></span></div> 

				</div>
		<div class="content_top">
				<div class="heading">
				<h3>Sản phẩm: áo</h3>
				</div>
				<div class="clear"></div>
			</div> 
			<div class="section group">
				<?php
					$product_feathered = $cat->get_product_by_cat_byao();
					if($product_feathered){
						while($result = $product_feathered->fetch_assoc()){

				?>
					<div class="grid_1_of_4 images_1_of_4">
					<?php
						if ($result['soluong']==0){
							echo '<h3 class="soldout" style="color: red;">Sold Out</h3>';
						}
						?>
						<a href="details.php?proid=<?php echo $result['productId'] ?>"><img src="admin/update/<?php echo $result['image'] ?>" alt="ảnh sản phẩm" /></a>
						<h2><?php echo $result['productName'] ?></h2>
						<p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></span></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Chi tiết</a></span></div>
					</div>
					<?php
					}
				}
					?>
				</div>
				<div class="button"><span><a class="xemthem" href="productbycat.php?catid=20" class="details" sty>Xem thêm</a></span></div> 
		</div>
	<div class="end">
		<div class="trending">
			<h4>Trending Brands</h4>
		</div>
		<div class="brandtrending">
			<a href="topbrands.php?brandid=21" class="namebrand">GUNCI</a>
			<a href="topbrands.php?brandid=20" class="namebrand">LUONVUITUOI</a>
			<a href="topbrands.php?brandid=17" class="namebrand">INF</a>
			<a href="topbrands.php?brandid=19" class="namebrand">POY</a>
			<a href="topbrands.php?brandid=22" class="namebrand">ODVY</a>
		</div>
	</div>
	

 </div>
 
<?php 
	include 'inc/footer.php';
	
 ?>
