<?php
	include 'koneksi.php';

	// $query 	= "SELECT * FROM perjanjian WHERE id_perjanjian='$_GET[id]'";
	$query 	= "SELECT * FROM perjanjian WHERE id='$_GET[id]'";
	$sql	= mysqli_query($connect, $query);
	$data	= mysqli_fetch_array($sql);
	$file	= $data['file'];

	//jika filenya ada, hapus filenya
	if (file_exists("upload/pks/$file")) {
		unlink("upload/pks/$file");
	}

	// $query2	= "DELETE FROM perjanjian WHERE id_perjanjian='$_GET[id]'";
	$query2	= "DELETE FROM perjanjian WHERE id_perjanjian='$_GET[id]'";
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