<?php
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
	include_once ($filepath.'/../helpers/format.php');
?>
<?php
	/**
	 * 
	 */
	class customer
	{
		private $db;
		private $fm;
		
		public function __construct()
		{
			$this->db = new Database();
			$this->fm = new Format();
		}
		public function insert_binhluan(){
			$tenkh = $_POST['tenkh'];
			$sdt = $_POST['sdt'];
			$noidung = $_POST['noidung'];
			$danhgia = $_POST['danhgia'];
			if($noidung==''|| $danhgia=='' || $tenkh =='' ||$sdt == ''){
				$alert = "<span class='error'>Không để trống các trường</span>";
				return $alert;
			}else{
				$query = "INSERT INTO tbl_binhluan(ten_kh,sdt_kh,noidung,danhgia) VALUES('$tenkh','$sdt','$noidung','$danhgia')";
					$result = $this->db->insert($query);
					if($result){
						$alert = "<span class='success'>Bình luận đã gửi</span>";
						return $alert;
					}else{
						$alert = "<span class='error'>Bình luận không thành công</span>";
						return $alert;
				}
			}
		}
		public function del_comment($id){
			$query = "DELETE FROM tbl_binhluan where id_binhluan = '$id'";
			$result = $this->db->delete($query);
			if($result){
				$alert = "<span class='success'>Xóa bình luận thành công</span>";
				return $alert;
			}else{
				$alert = "<span class='error'>Xóa bình luận không thành công</span>";
				return $alert;
			}
		}

		public function daxem_cm($id){
			$query = "UPDATE tbl_binhluan SET trangthai = '1' WHERE id_binhluan = '$id'";
			$result = $this->db->delete($query);
			if($result){
				$alert = "<span class='success'>Đã xem thành công</span>";
				return $alert;
			}else{
				$alert = "<span class='error'>Đã xem không thành công</span>";
				return $alert;
			}
		}
		public function show_comment(){
			$query = "SELECT * FROM tbl_binhluan order by id_binhluan desc";
			$result = $this->db->select($query);
			return $result;
		}

		public function tieucuc_cm(){
			$query = "SELECT * FROM tbl_binhluan WHERE danhgia = 1 AND trangthai = 0";
			$result = $this->db->select($query);
			return $result;
		}

		public function insert_customers($data){
			$name = mysqli_real_escape_string($this->db->link, $data['name']);
			$city = mysqli_real_escape_string($this->db->link, $data['city']);
			$email = mysqli_real_escape_string($this->db->link, $data['email']);
			$address = mysqli_real_escape_string($this->db->link, $data['address']);
			$phone = mysqli_real_escape_string($this->db->link, $data['phone']);
			$password = mysqli_real_escape_string($this->db->link, md5($data['password']));
			if($name=="" || $city=="" || $email=="" || $address=="" || $phone =="" || $password ==""){
				$alert = "<span class='error'>Fields must be not empty</span>";
				return $alert;
			}else{
				$check_email = "SELECT * FROM tbl_customer WHERE email='$email' LIMIT 1";
				$result_check = $this->db->select($check_email);
				if($result_check){
					$alert = "<span class='error'>Email Already Existed ! Please Enter Another Email</span>";
					return $alert;
				}else{
					$query = "INSERT INTO tbl_customer(name,city,email,address,phone,password) VALUES('$name','$city','$email','$address','$phone','$password')";
					$result = $this->db->insert($query);
					if($result){
						$alert = "<span class='success'>Customer Created Successfully</span>";
						return $alert;
					}else{
						$alert = "<span class='error'>Customer Created Not Successfully</span>";
						return $alert;
					}
				}
			}
		}
		public function login_customers($data){
			$email = mysqli_real_escape_string($this->db->link, $data['email']);
			$password = mysqli_real_escape_string($this->db->link, md5($data['password']));
			if($email=='' || $password==''){
				$alert = "<span class='error'>Password and Email must be not empty</span>";
				return $alert;
			}else{
				$check_login = "SELECT * FROM tbl_customer WHERE email='$email' AND password='$password'";
				$result_check = $this->db->select($check_login);
				if($result_check){

					$value = $result_check->fetch_assoc();
					Session::set('customer_login',true);
					Session::set('customer_id',$value['id']);
					Session::set('customer_name',$value['name']);
					$alert = "<span class='success'>Đăng nhập thành công <a href='payment.php'>Đến trang thanh toán</a></span>";
						return $alert;
				}else{
					$alert = "<span class='error'>Email or Password doesn't match</span>";
					return $alert;
				}
			}
		}
		public function show_customers($id){
			$query = "SELECT * FROM tbl_customer WHERE id='$id'";
			$result = $this->db->select($query);
			return $result;

		}
		public function update_customers($data, $id){
			$name = mysqli_real_escape_string($this->db->link, $data['name']);
			$email = mysqli_real_escape_string($this->db->link, $data['email']);
			$address = mysqli_real_escape_string($this->db->link, $data['address']);
			$phone = mysqli_real_escape_string($this->db->link, $data['phone']);
			
			if($name=="" || $email=="" || $address=="" || $phone ==""){
				$alert = "<span class='error'>Fields must be not empty</span>";
				return $alert;
			}else{
				$query = "UPDATE tbl_customer SET name='$name',email='$email',address='$address',phone='$phone' WHERE id ='$id'";
				$result = $this->db->insert($query);
				if($result){
						$alert = "<span class='success'>Customer Updated Successfully</span>";
						return $alert;
				}else{
						$alert = "<span class='error'>Customer Updated Not Successfully</span>";
						return $alert;
				}
				
			}
		}
				
	}
?>