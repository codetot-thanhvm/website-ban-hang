<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>
<?php
	
	$login_check = Session::get('customer_login'); 
	if($login_check==false){
		header('Location:login.php');
	}
		
?>
<?php

	// if(!isset($_GET['proid']) || $_GET['proid']==NULL){
 //       echo "<script>window.location ='404.php'</script>";
 //    }else{
 //        $id = $_GET['proid']; 
 //    }
 	$id = Session::get('customer_id');
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['save'])) {
       
        $UpdateCustomers = $cs->update_customers($_POST, $id);
        
    }
?>

<style>
	input[type="text"]{
		width: 400px;
	}
</style>
 <div class="main">
    <div class="content">
    	<div class="section group">
    		<div class="content_top">
	    		<div class="heading">
	    		<h3>Update Profile Customers</h3>
	    		</div>
	    		<div class="clear"></div>
    		</div>
			<form action="" method="post">
			<table class="tblone">
				<tr>
					
						<?php
						if(isset($UpdateCustomers)){
							echo '<td colspan="3">'.$UpdateCustomers.'</td>';
						}
						?>
					
				</tr>
				<?php
				$id = Session::get('customer_id');
				$get_customers = $cs->show_customers($id);
				if($get_customers){
					while($result = $get_customers->fetch_assoc()){

				?>
				<tr>
					<td>Mật khẩu cũ</td>
					<td>:</td>
					<td><input type="text" name="old_pass"></td>
				</tr>
                <tr>
					<td>Mật khẩu mới</td>
					<td>:</td>
					<td><input type="text" name="new_pass"></td>
				</tr>
				<tr>
				<tr>
					<td colspan="3"><input type="submit" name="save" value="Save"></td>
					
				</tr>
				
				<?php
					}
				}
				?>
			</table>
			</form>
 		</div>
 	</div>
<?php 
	include 'inc/footer.php';
	
 ?>
