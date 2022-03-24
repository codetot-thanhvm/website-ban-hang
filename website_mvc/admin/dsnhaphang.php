<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php 

$filepath = realpath(dirname(__FILE__));
include_once ($filepath.'/../classes/cart.php');
include_once ($filepath.'/../helpers/format.php');

?>
<?php
	$ct = new cart();
	if(isset($_GET['shiftid'])){
     	$id = $_GET['shiftid'];
     	$time = $_GET['time'];
     	$price = $_GET['price'];
     	$shifted = $ct->shifted($id,$time,$price);
    }

    if(isset($_GET['delid'])){
     	$id = $_GET['delid'];
     	$time = $_GET['time'];
     	$price = $_GET['price'];
     	$del_shifted = $ct->del_shifted($id,$time,$price);
    }
?>

        <div class="grid_10">
            <div class="box round first grid">
                <h2>Inbox</h2>
                <div class="block">
                <?php 
                if(isset($shifted)){
                	echo $shifted;
                }
                ?>  
                <?php 
                if(isset($del_shifted)){
                	echo $del_shifted;
                }
                
                ?>        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Thứ tự</th>
							<th>Thời gian đặt hàng</th>
							<th>Sản phẩm</th>
							<th>Chức năng</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$ct = new cart();
						$fm = new Format();
						$get_nhaphang = $ct->get_nhaphang();
						if($get_nhaphang){
							$i = 0;
							while($result = $get_nhaphang->fetch_assoc()){
								$i++;
						 ?>
						
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $fm->formatDate($result['ngay_nhapkho']) ?></td>
							<td><?php echo $result['ten_nhapkho'] ?></td>
							<td><a href="chitietdonhang.php?id_nhaphang=<?php echo $result['id_nhapkho'];?>">Xem chi tiết</a></td>
						</tr>
						<?php
					}}
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
