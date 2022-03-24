<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>
<?php
	if(!isset($_GET['brandid']) || $_GET['brandid']==NULL){
       echo "<script>window.location ='404.php'</script>";
    }else{
        $id = $_GET['brandid']; 
    }
   
?>
 <div class="main">
    <div class="content">
    	<?php
	     	 $name_brand = $br->get_name_by_brand($id);
	      	 if($name_brand){
	      	 	while($result_name = $name_brand->fetch_assoc()){
	      	?>
    	<div class="content_top">
    		
    		<div class="heading">	
    		<h3>Thương hiệu : <?php echo $result_name['brandName'] ?></h3>
    		</div>
    		
    		<div class="clear"></div>

    	</div>
    	<?php
			}}
			?>
	      <div class="section group">
	      	<?php
	      	 $brandpr = $br->get_product_by_brand($id);
	      	 if($brandpr){
	      	 	while($result = $brandpr->fetch_assoc()){
	      	?>
				<div class="grid_1_of_4 images_1_of_4">
					<?php
					if ($result['soluong']==0){
						echo '<h3 class="soldout" style="color: red;">Sold Out</h3>';
					}
					?>
					 <a href="details.php?proid=<?php echo $result['productId'] ?>"><img src="admin/update/<?php echo $result['image'] ?>" width="200px" alt="" /></a>
					 <h2><?php echo $result['productName'] ?></h2>
					 <p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Chi tiết</a></span></div>
				</div>
			<?php
			}

		}else{
			?>
			<div class="text-content">
			<h2>Không tìm thấy sản phẩm</h2>
			</div>
			<div class="khongtimthaysp">
				<img src="scr/loitimkiem.jpg" alt="search">
			</div>
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
			<?php
		}
			?>
			</div>

	
	
    </div>
 </div>
<?php 
	include 'inc/footer.php';
	
 ?>
