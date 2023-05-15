<?php
	include 'koneksi.php';

	$query	= "DELETE FROM cabang WHERE id_cabang='$_GET[id]'";
	$sql	= mysqli_query($connect, $query);

	if ($sql) {
		echo '<script>
				window.alert("Data berhasil di hapus");
				window.location.href="./index.php?page=cabang";
			  </script>';
	}else{
		echo '<script>
				window.alert("Data gagal di hapus")
			 </script>';
	}
?>