	<?php
		if ($_SESSION['level']== 'user' || $_SESSION['level']== 'admin1' || $_SESSION['level']== 'user1') {
			echo '<script> 
					window.alert("Anda tidak memiliki akses ke halaman ini");
					window.location.href="./logout.php";
				  </script>';		
		}
	?>
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Keterangan Status</h3>
			</div>
		</div>
		<div class="clearfix"></div>

		<div class="">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>List Status</h2>&nbsp; &nbsp;<a href="index.php?page=tambah_status" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i> Tambah Status</a>
						<ul class="nav navbar-rigth panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
						</ul>
						<div class=""></div>
					</div>
					<div class="x_content">
						<table id="user" class="table table-striped table-bordered table-hover">
							<thead>
								<tr style="font-size: 13px;">
									<th width="1" style="vertical-align: middle;">No</th>
									<th style="vertical-align: middle;"><center>Keterangan</center></th>							
									<th><center>Action</center></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<?php 
										$no=1;
										$query	= "SELECT * FROM status";
										$sql	= mysqli_query($connect, $query);
										while ($data= mysqli_fetch_array($sql)) {
									?>
									<td width="1" style="vertical-align: middle;"><?php echo $no++; ?></td>
									<td style="vertical-align: middle;"><?php echo $data['keterangan']; ?></td>						
									<td>
										<center>
											<a href="index.php?page=edit_status&id=<?php echo $data['id_status'] ?>" onclick="return confirm('Apakah Anda Yakin Mengedit Data ?')" class="btn btn-warning" title="Edit"><i class="fa fa-pencil-square-o"></i></a>
											<a href="index.php?page=hapus_status&id=<?php echo $data['id_status'] ?>" onclick="return confirm('Apakah Anda Yakin Menghapus Data ?')" class="btn btn-danger" title="Hapus"><i class="fa fa-trash-o"></i></a>
										</center>
									</td>
								</tr>
								<?php 
									}
								?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>