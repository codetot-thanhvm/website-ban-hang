<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/customer.php';?>
<?php include '../classes/product.php';?>

        <div class="grid_10">
            <div class="box round first grid">
                <h2> Dashbord</h2>
                <div class="block">               
                  Welcome admin panel
                  <?php
                  $cs = new customer();
                  $cm = $cs->tieucuc_cm();
                  $i = 0;
				          if($cm){
					        while($result = $cm->fetch_assoc()){
					        	$i++;
                  }
                }
                  if($i > 0){
                  echo '<h3 style="padding: 30px; color:red;" >Có '.$i.' đánh giá xấu chưa xem xin vui lòng xem các bình luận</h3>
                  <a href="commentlist.php">Xem ngay</a>';
                  }
                  ?>

                  <?php
                  $pd = new product();
                  $hethang = $pd->hethang();
                  $a = 0;
				          if($hethang){
					        while($hethang->fetch_assoc()){
					        	$a++;
                  }
                }
                  if($a > 0){
                  echo '<h3 style="padding: 30px; color:red;" >Có '.$a.' sản phẩm hết hàng</h3>
                  <a href="productlist.php">Xem ngay</a>';
                  }
                  ?>

                  <?php
                  $pd = new product();
                  $donchuaship = $pd->donchuaxuly();
                  $b = 0;
				          if($donchuaship){
					        while($donchuaship->fetch_assoc()){
					        	$b++;
                  }
                }
                  if($b > 0){
                  echo '<h3 style="padding: 30px; color:red;" >Có '.$b.' đơn chưa được ship</h3>
                  <a href="inbox.php">Xem ngay</a>';
                  }
                  ?>
                </div>
                
            </div>
        </div>
<?php include 'inc/footer.php';?>