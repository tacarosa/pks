	<?php
		if (isset($_REQUEST['submit'])) {
			
			$idDok = $_GET['id'];
			$query	= "SELECT max(id_perjanjian) as noTerbesar FROM perjanjian";
			$sql	= mysqli_query($connect, $query);
			$data	= mysqli_fetch_array($sql);			
			$noUrut = $data['noTerbesar'];		
			$noUrut++;	

			$nomor			= $_POST['nomor'];	
			$id_perjanjian	= $noUrut;	
			$id_addendum	= $idDok;	
					
			$tanggal		= InggrisTgl($_POST['tanggal']);
			$phk_1			= $_POST['phk_1'];
			$phk_2			= $_POST['phk_2'];
			$phk_3			= $_POST['phk_3'];
			$judul			= $_POST['judul'];

			$mulai			= InggrisTgl($_POST['mulai']);			
			$selesai		= InggrisTgl($_POST['selesai']);
			$status			= $_POST['status'];
			
			$user			= $_SESSION['user'];
			$tipe			= $_SESSION['tipe'];
			$cabang			= $_SESSION['cabang'];

			$file     		= $_FILES['file']['name'];
			$tmp 			= $_FILES['file']['tmp_name'];

			$path			= "upload/pks/".$file;
			if (move_uploaded_file($tmp, $path)) {
				$query 		= "INSERT INTO perjanjian VALUES('', '$id_perjanjian', '$id_addendum', '$nomor', '$tanggal', '$phk_1', '$phk_2', '$phk_3', '$judul', '$mulai', '$selesai', '$status', '$user', '$tipe', '$cabang', '$file' )";
				$sql		= mysqli_query($connect, $query);
				
			if($sql){
			    echo  '<script language="javascript">
			    		window.alert("Data berhasil di tambah")               		  	
						window.history.go(-2);
              		  </script>';
			}else{
				echo  '<script>
						window.alert("Data gagal di simpan");
					  </script>';
			}
			}
		}
	?>

	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Tambah Addendum Perjanjian Kerjasama</h3>
			</div>
		</div>
		<div class="clearfix"></div>		

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Form Tambah Perjanjian Kerjasama</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						
						<?php
							$query 	= "SELECT * FROM perjanjian WHERE id_perjanjian='$_GET[id]'";
							$sql 	= mysqli_query($connect, $query);
							while ($data = mysqli_fetch_array($sql)) {
						?>	
						<form class="form-horizontal form-label-left" method="post" enctype="multipart/form-data"> 	

							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Nomor PKS<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="nomor" class="form-control col-md-7 col-xs-12" required="required">
								</div>
							</div>

							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal PKS<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text"  name="tanggal" class="form-control has-feedback-left" id="tanggal">
                               		<span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
								</div>
							</div>

							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Pihak Pertama<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="phk_1" class="form-control col-md-7 col-xs-12" required="required" value="<?php echo $data['phk_1']?>">
								</div>
							</div>

							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Pihak Kedua<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="phk_2" class="form-control col-md-7 col-xs-12" required="required" value="<?php echo $data['phk_2']?>">
								</div>
							</div>

							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Pihak Ketiga<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="phk_3" class="form-control col-md-7 col-xs-12" required="required" value="<?php echo $data['phk_3']?>">
								</div>
							</div>

							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Judul<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<textarea name="judul" class="form-control col-md-7 col-xs-12" required="required"><?php echo $data['judul']?></textarea>
								</div>
							</div>

							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Mulai PKS<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text"  name="mulai" class="form-control has-feedback-left" id="tanggal1">
                               		<span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
								</div>
							</div>
							
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Selesai PKS<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text"  name="selesai" class="form-control has-feedback-left" id="tanggal2">
                               		<span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
								</div>
							</div>

							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Status<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">	
									<select class="form-control col-md-7 col-xs-12" name="status" required="required">
									<option disabled selected> Pilih </option>
									<?php
 										$query	= "SELECT * FROM status";
 										$sql	= mysqli_query($connect, $query);
 									    while ($data= mysqli_fetch_array($sql)){
 									?>
								        <option value = "<?php echo $data['keterangan'] ?>"><?php echo $data['keterangan']; ?>
									    </option>
									<?php
										}
									?>
							        </select>	
								</div>
							</div>								
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">File<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="file" name="file" class="form-control col-md-7 col-xs-12" required="required">
								</div>
							</div>
							
							<div class="ln_solid"></div>
							<div class="form-group">
								<div class="col-md-6 col-md-offset-3">
									<button type="reset" class="btn btn-default">Reset</button>
  									<input type="submit" class="btn btn-success" value="Simpan" name="submit">
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
