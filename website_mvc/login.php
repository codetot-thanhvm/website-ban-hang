<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>

<?php
   
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        
        $insertCustomers = $cs->insert_customers($_POST);
        
    }
?>
<?php
	if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) {
        
        $login_Customers = $cs->login_customers($_POST);
        
    }



	?>


<style>

	input.grey {
    width: 185px;
}

.login_panel {
	height: 350px;
}

.register_account {
	height: 350px;
	width: 800px;
}
.main .content {
    max-width: 1400px;
    margin-left: 16%;
    margin-top: 50px;
}
</style>



 <div class="main">
    <div class="content">
    	 <div class="login_panel">
        	<h3>Đã có tài khoản</h3>
        	<p>Đăng nhập tại đây.</p>
        	<?php
			if(isset($login_Customers)){
    			echo $login_Customers;
    		}
        	?>
        	<form action="" method="post">
                	<input  type="text" name="email" class="field" placeholder="Enter Email....">
                    <input  type="password" name="password" class="field"  placeholder="Enter Password...." >
                    <div class="buttons"><div><input type="submit" name="login" class="grey" value="Sign In"></div></div>
             </form>
          </div>
         <?php

         ?> 
    	<div class="register_account">
    		<h3>Tạo tài khoản mới</h3>
    		<?php
    		if(isset($insertCustomers)){
    			echo $insertCustomers;
    		}
    		?>
    		<form action="" method="POST">
		   			 <table>
		   				<tbody>
						<tr>
						<td>
							<div>
							<input type="text" name="name" placeholder="Nhập họ tên..." >
							</div>
							
							<div>
							   <input type="text" name="city"  placeholder="Nhập thành phố..."  >
							</div>
							<div>
								<input type="text" name="email"  placeholder="Nhập Email..."  >
							</div>
		    			 </td>
		    			<td>
						<div>
							<input type="text" name="address"  placeholder="Nhập địa chỉ..."  >
						</div>	        
		           <div>
		          <input type="text" name="phone"  placeholder="Nhập số điện thoại..." >
		          </div>
				  
				  <div>
					<input type="text" name="password"  placeholder="Nhập mật khẩu..." >
				</div>
		    	</td>
		    </tr> 
		    </tbody></table> 
		   <div class="search"><div><input type="submit" name="submit" class="grey" value="Create Account"></div></div>
		    <div class="clear"></div>
		    </form>
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>
<?php 
	include 'inc/footer.php';
	
 ?>
