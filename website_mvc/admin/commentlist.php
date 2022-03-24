<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/brand.php';?>
<?php include '../classes/category.php';?>
<?php include '../classes/product.php';?>
<?php include '../classes/customer.php';?>
<?php include_once '../helpers/format.php';?>
<?php
	$cs = new customer();
	$fm = new Format();
	if(isset($_GET['binhluanid'])){
        $id = $_GET['binhluanid']; 
        $delcomment = $cs->del_comment($id);
    }

	if(isset($_GET['cmid'])){
		$id = $_GET['cmid'];
		$delcomment = $cs->daxem_cm($id);
   }

?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Bình luận</h2>
        <div class="block"> 
        <?php
        if(isset($delcomment)){
        	echo $delcomment;
        }
        ?> 
        	
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>ID</th>
					<th>Tên khách hàng</th>
					<th>Số điện thoại</th>
					<th>Bình luận</th>
					<th>Đánh giá</th>
					<th>Trạng thái</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<?php
			
				$cmlist = $cs->show_comment();
				if($cmlist){
					$i = 0;
					while($result = $cmlist->fetch_assoc()){
						$i++;
				?>
				<tr class="odd gradeX">
					<td><?php echo $i ?></td>
					<td><?php echo $result['ten_kh'] ?></td>
					<td><?php echo $result['sdt_kh'] ?></td>
					<td><?php echo $result['noidung'] ?></td>
					<td>
					<?php 
						if ($result['danhgia'] == 0){
							echo 'Hài lòng';
						}
						else{
							echo 'Không hài lòng';
						}
						?>
					</td>
					<td>
							<?php 
							if($result['trangthai']==0){
							?>

								<a href="?cmid=<?php echo $result['id_binhluan'] ?>?>">chưa xem</a>

								<?php
							}else{
								?>
								Đã xem
							<?php
								}
							
							?>
							</td>
					<td><a href="?binhluanid=<?php echo $result['id_binhluan'] ?>">Xóa</a></td>
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
