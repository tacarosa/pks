	<?php
		//if ($_SESSION['level']== 'user') {
		if ($_SESSION['level']== 'user' || $_SESSION['level']== 'admin1' || $_SESSION['level']== 'user1') {
			echo '<script>
					window.alert("Anda tidak memiliki hak akses ke halaman ini");
					window.location.href="./logout.php";
				 </script>';
		}

		if (isset($_REQUEST['tambah'])) {

			if($_POST['password']==$_POST['password_konf'])
			{
				// Mendapat nilai Password
				$password_cek = $_POST['password'];

				// Validasi kekuatan password
				//$uppercase = preg_match('@[A-Z]@', $password_cek);
				$lowercase = preg_match('@[a-z]@', $password_cek);
				$number    = preg_match('@[0-9]@', $password_cek);
				//$specialChars = preg_match('@[^\w]@', $password_cek);
				
				if(!$lowercase || !$number || strlen($password_cek) < 6) {
					echo 'Pasword setidaknya harus 6 karakter dan harus memiliki kombinasi huruf dan angka.';
				}else{			


			$username 		= $_POST['username'];
			$password 		= md5($_POST['password']);
			$fullname 		= $_POST['fullname'];
			$level 			= $_POST['level'];
			$tipe			= $_POST['tipe'];
			$cabang		 	= $_POST['cabang'];
			$status 		= $_POST['status'];
			$foto 			= $_FILES['foto']['name'];
			$tmp 			= $_FILES['foto']['tmp_name'];

			$path			= "upload/user/".$foto;
			if (move_uploaded_file($tmp, $path)) {
				$query 		= "INSERT INTO user VALUES('', '$username', '$password', '$fullname', '$level', '$tipe', '$cabang', '$status', '$foto')";
				$sql 		= mysqli_query($connect, $query);

			if ($sql) {
				echo '<script>
						window.alert("Data berhasil di simpan");
						window.location.href="./index.php?page=users";
					  </script>';
			}else{
				echo '<script>
						window.alert("Data gagal di simpan");
					  </script>';
				}
			}		
		}

	}else{
		echo 'Password yang anda masukkan tidak sama';
	}
}
	
	?>

	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Tambah users</h3>
			</div>
		</div>
		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Form Tambah User</h2>
						<ul class="nav navbar-rigth panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<!-- Form tambah user -->
						<form class="form-horizontal form-label-left" method="post" enctype="multipart/form-data">
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Username<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="username" class="form-control col-md-7 col-xs-12" required="required">
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Fullname<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="fullname" class="form-control col-md-7 col-xs-12" required="required">
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Level<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<select class="form-control col-md-7 col-xs-12" name="level" required="required">
										<!-- <option>superadmin</option> Bisa Melihat dan edit/hapus semua data - TSI -->										
								        <option>admin</option> <!--Bisa Melihat dan edit/hapus semua pada Divisi - KPS-->
										<option>user</option> <!--Bisa Melihat semua pada Divisi - KPS-->
								        <option>admin1</option> <!--Bisa Melihat dan edit/hapus semua pada Cabang-->								        
								        <option>user1</option> <!--Bisa Melihat semua pada Cabang-->
										<option>adminuser</option> <!--Bisa Menambah/maintenance User - TSI-->
										<option>admindata</option> <!--Bisa Menambah/maintenance Data - TSI-->
							        </select>
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Tipe<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<select class="form-control col-md-7 col-xs-12" name="tipe" required="required">
								        <option value="KPS">KPS</option>
										<option value="CAB">CAB</option>
							        </select>
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Cabang<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<select class="form-control col-md-7 col-xs-12" name="cabang" required="required">																		
									<?php
 										$query	= "SELECT * FROM cabang";
 										$sql	= mysqli_query($connect, $query);
 									    while ($data= mysqli_fetch_array($sql)){
 									?>
								        <option value = "<?php echo $data['kode'] ?>"><?php echo $data['kode']; ?></option>
									<?php
										}
									?>
							        </select>
								</div>
							</div>	
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Status User<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<select class="form-control col-md-7 col-xs-12" name="status" required="required">
								        <option value="KPS">Aktif</option>
										<option value="CAB">Non Aktif</option>
							        </select>
								</div>
							</div>						
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Password<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="password" id="password" name="password" class="form-control col-md-7 col-xs-12" required="required">
								</div>
							</div>
							<div class="form-group">	
								<label class="control-label col-md-3 col-sm-3 col-xs-12" >Konfirmasi Password<span class="required"> :</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="password" id="password_konf" name="password_konf" required="required" class="form-control col-md-7 col-xs-12">
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Foto<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="file" name="foto" class="form-control col-md-7 col-xs-12" required="required">
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
