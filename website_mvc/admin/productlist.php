<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/brand.php';?>
<?php include '../classes/category.php';?>
<?php include '../classes/product.php';?>
<?php include_once '../helpers/format.php';?>
<?php
	$pd = new product();
	$fm = new Format();
	if(isset($_GET['productid'])){
        $id = $_GET['productid']; 
        $delpro = $pd->del_product($id);
    }

	if(isset($_POST['nhapthem'])){
        $id = $_POST['nhapthem'];
		$delpro = $pd->nhapthem($id);

    }

?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Product List</h2>
        <div class="block"> 
        <?php
        if(isset($delpro)){
        	echo $delpro;
        }
        ?> 
        	
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>ID</th>
					<th>Tên Sản Phẩm</th>
					<th>Số lượng</th>
					<th>Giá tiền</th>
					<th>Hình ảnh</th>
					<th>Danh mục</th>
					<th>Thương hiệU</th>
					<th>Trạng thái</th>
					<th>Chức năng</th>
					<th>Nhập hàng</th>
				</tr>
			</thead>
			<tbody>
				<?php
			
				$pdlist = $pd->show_product();
				if($pdlist){
					$i = 0;
					while($result = $pdlist->fetch_assoc()){
						$i++;
				?>
				<tr class="odd gradeX">
					<td><?php echo $i ?></td>
					<td><?php echo $result['productName'] ?></td>
					<td><?php echo $result['soluong'] ?></td>
					<td><?php echo $result['price'] ?></td>
					<td><img src="update/<?php echo $result['image'] ?>" width="80"></td>
					<td><?php echo $result['catName'] ?></td>
					<td><?php echo $result['brandName'] ?></td>
					<td><?php 
						if($result['type']==0){
							echo 'Feathered';
						}else{
							echo 'Non-Feathered';
						}

					?></td>
					
					<td><a href="productedit.php?productid=<?php echo $result['productId'] ?>">Edit</a> || <a href="?productid=<?php echo $result['productId'] ?>">Delete</a></td>
					<form action="" method="post">
					<td><button type="submit" name="nhapthem" value="<?php echo $result['productId']; ?>">Nhập thêm</button></td>
					</form>
				</tr>
				<?php
					}
				}
				?>
			</tbody>
		</table>

       </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();
        $('.datatable').dataTable();
		setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php';?>
