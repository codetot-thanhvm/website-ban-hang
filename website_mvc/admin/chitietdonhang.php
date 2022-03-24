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
		$pd->del_all_data_spnhapkho();
		$delpro = "<span class='error'>Đã thêm đơn nhập</span>";
		}

        if(!isset($_GET['id_nhaphang']) || $_GET['id_nhaphang']==NULL){
            echo "<script>window.location ='dsnhaphang.php'</script>";
         }else{
              $id = $_GET['id_nhaphang']; 
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
					<th>Hình ảnh</th>
					<th>Số lượng nhập</th>
				</tr>
			</thead>
			<tbody>
				<?php
			
				$pdlist = $pd->dschitiet($id);
				if($pdlist){
					$i = 0;
					while($result = $pdlist->fetch_assoc()){
						$i++;
				?>
				<tr class="odd gradeX">
					<td><?php echo $i ?></td>
					<td><?php echo $result['ten_sp'] ?></td>
					<td><img src="update/<?php echo $result['img_sp'] ?>" width="80"></td>
					<td><?php echo $result['sl_nvl'] ?></td>

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
