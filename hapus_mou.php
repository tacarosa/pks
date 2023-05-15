<?php
	include 'koneksi.php';

	// $query 	= "SELECT * FROM mou WHERE id_mou='$_GET[id]'";
	$query 	= "SELECT * FROM mou WHERE id='$_GET[id]'";
	$sql	= mysqli_query($connect, $query);
	$data	= mysqli_fetch_array($sql);
	$file	= $data['file'];

	//jika filenya ada, hapus filenya
	if (file_exists("upload/mou/$file")) {
		unlink("upload/mou/$file");
	}

	// $query2	= "DELETE FROM mou WHERE id_mou='$_GET[id]'";
	$query2	= "DELETE FROM mou WHERE id_mou='$_GET[id]'";
	$sql2	= mysqli_query($connect, $query2);
	if ($sql2) {
		echo '<script language=javascript> 
				window.alert("Data perjanjian berhasil di hapus");
				window.history.go(-1);
			  </script>';
	}else{
		echo '<script>
				window.alert("Data gagal di hapus");
				window.history.go(-1);
			  </script>';
	}
	
?>