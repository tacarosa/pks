<?php
	include 'koneksi.php';

	function antiInjection($str) {
    $r = stripslashes(strip_tags(htmlspecialchars($str, ENT_QUOTES)));
    return $r;
  }
		session_start();
		$username = antiInjection($_POST['username']);
		$password = md5($_POST['password']);

		$query  = "SELECT * FROM user WHERE username='$username' and password='$password'";
		$sql 	= mysqli_query($connect, $query);
		$row    = mysqli_fetch_array($sql);

		if(mysqli_num_rows($sql) >0)
		{
			$_SESSION['id']       		=$row['id'];
			$_SESSION['username']		=$username;
			$_SESSION['fullname'] 		=$row['fullname'];
			$_SESSION['level']    		=$row['level'];
			$_SESSION['tipe']    		=$row['tipe'];
			$_SESSION['cabang']    		=$row['cabang'];
			$_SESSION['status']    		=$row['status'];			 
			$_SESSION['foto']     		=$row['foto'];

			if($_SESSION['status']== 'Non Aktif'){
				header("location:login.php?pesan=gagal")or die(mysql_error());
			}

			if($_SESSION['level']== 'superadmin'){
				header('location:index.php');
			} 
			elseif ($_SESSION['level']== 'adminuser'){
				header('location:index.php?page=users');
			}
			elseif ($_SESSION['level']== 'admindata'){
				header('location:index.php?page=cabang');
			}
			elseif ($_SESSION['level']== 'admin' || $_SESSION['level']== 'user'){
				header('location:index.php');
			}
			elseif ($_SESSION['level']== 'admin1' || $_SESSION['level']== 'user1'){
				header('location:lev1/index.php');	
			}else{
				header("location:login.php?pesan=gagal")or die(mysql_error());
			}
		}else{
			header("location:login.php?pesan=gagal")or die(mysql_error());
		}
?>
