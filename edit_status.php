<?php
		if (isset($_REQUEST['edit'])) {		
			$keterangan		= $_POST['keterangan'];				

			
			//jika mengubah file		
				$query 	= "UPDATE status SET keterangan='$keterangan' WHERE id_status='$_GET[id]'";				
				$sql   	= mysqli_query($connect, $query);
				
				if ($sql) {
					echo '<script language="javascript">
							  window.alert("Data berhasil di ubah")
							  window.history.go(-2);
              	  		  </script>';
				}else{
					echo '<script>
						   	  window.alert("Data gagal diubah");
			 			  </script>';
				}			
			}
		
?>	

	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Edit Status</h3>
			</div>
		</div>
		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Form Edit Keterangan Status</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<!-- Form Edit Users -->
						<?php
							$query	= "SELECT * FROM status WHERE id_status='$_GET[id]'";
							$sql 	= mysqli_query($connect, $query);
							while ($data = mysqli_fetch_array($sql)) {
						?>
						<form class="form-horizontal form-label-left" method="post" enctype="multipart/form-data">
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Keterangan Status<span class="required">&nbsp; :</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="keterangan" class="form-control col-md-7 col-xs-12" required="required" value="<?php echo $data['keterangan'] ?>">
								</div>
							</div>
							
							<div class="ln_solid"></div>
							<div class="form-group">
								<div class="col-md-6 col-md-offset-3">
									<button type="reset" class="btn btn-default">Reset</button>
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