<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/brand.php';?>
<?php include '../classes/category.php';?>
<?php include '../classes/product.php';?>
<?php include_once '../helpers/format.php';?>
<?php
	$pd = new product();
	$fm = new Format();
	if(isset($_GET['nhaphangid'])){
        $id = $_GET['nhaphangid']; 
        $delpro = $pd->del_nhaphang($id);
    }

	if(isset($_POST['nhaphang'])){
        $ten_nhaphang = $_POST['ten_nhaphang'];
		$nhap_kho = $pd->insert_nhapkho($ten_nhaphang);
		$nhap_chitiet = $pd->insert_Chitietnhapkho();
		$themsl = $pd->them_sl();
		$pd->del_all_data_spnhapkho();
		$delpro = "<span class='error'>Đã thêm đơn nhập</span>";
		}

	if(isset($_POST['update_sl'])){
		$sl = $_POST['sl_sp'];
		$id = $_POST['id_sp'];
		$delpro = $pd->update_sl($id,$sl);
	}
	

?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Product List</h2>
		<form action="" method="post">
        <input type="text" name="ten_nhaphang" id="" placeholder="Nhập tên đơn hàng">
        <input type="submit" name="nhaphang" value="Nhập hàng">
		</form>
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
					<th>Hình ảnh</th>
					<th>Số lượng nhập</th>
					<th>Chức năng</th>
				</tr>
			</thead>
			<tbody>
				<?php
			
				$pdlist = $pd->dsnhapthem();
				if($pdlist){
					$i = 0;
					while($result = $pdlist->fetch_assoc()){
						$i++;
				?>
				<tr class="odd gradeX">
					<td><?php echo $i ?></td>
					<td><?php echo $result['ten_sp'] ?></td>
					<td><img src="update/<?php echo $result['img_sp'] ?>" width="80"></td>
					<td>
						<form action="" method="post">
							<input type="hidden" name="id_sp" value="<?php echo $result['id_sp'] ?>"/>
							<input type="number" name="sl_sp" min="1"  value="<?php echo $result['sl_sp'] ?>"/> 
							<input type="submit" name="update_sl" value="Cập nhập"/>
						</form>
					</td>              
					<td><a href="?nhaphangid=<?php echo $result['id_sp'] ?>">Delete</a></td>

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
