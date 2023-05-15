	<?php
		if ($_SESSION['level']== 'user') {
			echo '<script> 
					window.alert("Anda tidak memiliki hak akses ke halaman ini");
					window.location.href="./logout.php";
				  </script>';
		}
		if (isset($_REQUEST['edit'])) {

			$password 		= md5($_POST['password']);

			//jika tidak mengubah foto
				$query 	= "UPDATE user SET password='$password' WHERE id='$_GET[id]'";
				$sql   	= mysqli_query($connect, $query);
				if ($sql) {
					echo '<script>
							window.alert("Password berhasil di ubah");
							window.history.go(-2);
						  </script>'; 
				}else{
					echo '<script>
							window.alert("Password gagal di ubah");
						 </script>';
				}			
			}
	?>

	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Edit Password</h3>
			</div>
		</div>
		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Reset Password</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<!-- Form Edit Users -->
						<?php
							$query	= "SELECT * FROM user WHERE id='$_GET[id]'";
							$sql 	= mysqli_query($connect, $query);
							while ($data = mysqli_fetch_array($sql)) {
						?>
						<form class="form-horizontal form-label-left" method="post" enctype="multipart/form-data">
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Username<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="username" class="form-control col-md-7 col-xs-12" required="required" disabled value="<?php echo $data['username'] ?>">
								</div>
							</div>													
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Reset Password<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" id="password" name="password" class="form-control col-md-7 col-xs-12" required="required" ><br>
									Masukkan Password Standard
								</div>								
							</div>												
							<div class="ln_solid"></div>
							<div class="form-group">
								<div class="col-md-6 col-md-offset-3">
									<button type="reset" class="btn btn-default">Batal</button>
									<input type="submit" class="btn btn-success" name="edit" value="Simpan">
								</div>
							</div>
						</form>
						<?php 
							}
						?>
					</div>
				</div>
			</div>
		</div>
	</div>