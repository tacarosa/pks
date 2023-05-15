	
 <?php
	$id = $_SESSION['id'];
	if(isset($_REQUEST['submit']))
	{
		if($_POST['pass_baru']==$_POST['pass_baru_konf'])
			{
				// Mendapat nilai Password
				$password_cek = $_POST['pass_baru'];
				
				// Validasi kekuatan password
				//$uppercase = preg_match('@[A-Z]@', $password_cek);
				$lowercase = preg_match('@[a-z]@', $password_cek);
				$number    = preg_match('@[0-9]@', $password_cek);
				//$specialChars = preg_match('@[^\w]@', $password_cek);
				
				if(!$lowercase || !$number || strlen($password_cek) < 6) {
					echo 'Pasword setidaknya harus 6 karakter dan harus memiliki kombinasi huruf dan angka.';
				}else{					

					$pass_lama = md5($_POST['pass_lama']);
					$pass_baru = md5($_POST['pass_baru']);

					$query = "SELECT password FROM user WHERE password='$pass_lama'";
					$sql = mysqli_query($connect, $query);
					if(mysqli_num_rows($sql) >= 1)
					{
						$update = "UPDATE user SET password='$pass_baru' WHERE id='$id'";
						$sql2 = mysqli_query($connect, $update);
						if ($sql2) {
							echo '<script language="javascript">
										window.alert("Password berhasil diperbaharui. Silahkan login kembali");
										window.location.href="./logout.php";
									</script>';		 
						}else{
							echo "Gagal merubah Password";
						}
					}else{
							echo '<script language="javascript">
										window.alert("Gagal memperbaharui password. Silahkan cek kembali password anda dengan benar");
										</script>';
					}	
				}		
		}else{
			echo 'Pasword baru yang anda masukkan tidak sama';
		}
	}
?> 

	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Ganti Password</h3>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm1-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Form ganti Password</h2>
						<ul class="nav navbar-rigth panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"> </i></a> 
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content"><br/>
						<form class="form-horizontal form-label-left" method="post">
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12" for="username">Username<span class="required"> :</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" id="username" name="username" required="required" disabled="disabled" class="form-control col-md-7 col-xs-12" value="<?php echo $_SESSION['username']; ?>">
								</div>
							</div>
							<div class="form-group">	
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Password lama<span class="required"> :</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="password" id="pass_lama" name="pass_lama" required="required" class="form-control col-md-7 col-xs-12">
								</div>
							</div>
							<div class="form-group">	
								<label class="control-label col-md-3 col-sm-3 col-xs-12" >Password baru<span class="required"> :</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="password" id="pass_baru" name="pass_baru" required="required" class="form-control col-md-7 col-xs-12">
								</div>
							</div>
							<div class="form-group">	
								<label class="control-label col-md-3 col-sm-3 col-xs-12" >Konfirmasi Password baru<span class="required"> :</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="password" id="pass_baru_konf" name="pass_baru_konf" required="required" class="form-control col-md-7 col-xs-12">
								</div>
							</div>
							<div class="ln_solid"></div>
							<div class="form-group">
								<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
								<button type="reset" type="reset" class="btn btn-default">Reset</button>
								<input type="submit" class="btn btn-success" value="Simpan" name="submit">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
