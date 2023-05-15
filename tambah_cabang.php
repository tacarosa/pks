	<?php
		//if ($_SESSION['level']== 'user') {
		if ($_SESSION['level']== 'user' || $_SESSION['level']== 'admin1' || $_SESSION['level']== 'user1') {
			echo '<script>
					window.alert("Anda tidak memiliki hak akses ke halaman ini");
					window.location.href="./logout.php";
				 </script>';
		}
		if (isset($_REQUEST['tambah'])) {
			$kode 		= $_POST['kode'];			
			$keterangan	= $_POST['keterangan'];

			$query 		= "INSERT INTO cabang VALUES('', '$kode', '$keterangan')";
			$sql 		= mysqli_query($connect, $query);

			if ($sql) {
				echo '<script>
						window.alert("Data berhasil di simpan");
						window.location.href="./index.php?page=cabang";
					  </script>';
			}else{
				echo '<script>
						window.alert("Data gagal di simpan");
					  </script>';
				}
			
		}
	?>

	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Tambah Kode Cabang</h3>
			</div>
		</div>
		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Form Tambah Kode Cabang</h2>
						<ul class="nav navbar-rigth panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<!-- Form tambah user -->
						<form class="form-horizontal form-label-left" method="post" enctype="multipart/form-data">
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Kode Cabang<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="kode" class="form-control col-md-7 col-xs-12" required="required">
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Keterangan<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="keterangan" class="form-control col-md-7 col-xs-12" required="required">
								</div>
							</div>							
							<div class="ln_solid"></div>
							<div class="form-group">
								<div class="col-md-6 col-md-offset-3">
									<button type="reset" class="btn btn-default">Reset</button>
									<input type="submit" class="btn btn-success" name="tambah" value="Simpan">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
