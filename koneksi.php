<?php
	$dbhost = "127.0.0.1";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "sias-pks-new";
	//koneksi
	$connect = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
	//cek
		if(mysqli_connect_errno()){
			echo 'Koneksi gagal :' .mysqli_connect_errno();
		}
?>
