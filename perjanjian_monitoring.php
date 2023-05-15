	<?php
		if ($_SESSION['level']== 'admin1' || $_SESSION['level']== 'user1' || $_SESSION['level']== 'adminuser' || $_SESSION['level']== 'admindata') {
			echo '<script> 
					window.alert("Anda tidak memiliki akses ke halaman ini");
					window.location.href="./logout.php";
				  </script>';		
		}
	?>
	
	<div class="">
 		<div class="page-title">
 			<div class="title_left">
 				<h3>Monitoring Perjanjian Kerjasama</h3>
 			</div>
 		</div>
 		<div class="clearfix"></div>

 		<div class="row">
 			<div class="col-md-12 col-sm-12 col-xs-12">
 				<div class="x_panel">
 					<div class="x_title"> 						
						<ul class="nav navbar-right panel_toolbox">
 							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
 						</ul>
 						<div class="clearfix"></div>
 					</div>
 					<div class="x_content">
 						<table id="pekerjaan" width="150%" class="table table-striped table-bordered table-hover">
 							<thead>
 								<tr style="font-size: 13px;">
 									<th width="1" style="vertical-align: middle;">No</th>
 									<th style="vertical-align: middle;"><center>Nomor PKS</center></th> 	
 									<th style="vertical-align: middle;"><center>Tanggal PKS</center></th>  
 									<th style="vertical-align: middle; width:20%"><center>Judul PKS</center></th> 									
									<th style="vertical-align: middle;"><center>Pemilik</center></th>									 	
									<th style="vertical-align: middle;"><center>Status</center></th> 
									<th style="vertical-align: middle;"><center>Tanggal Mulai</center></th>
									<th style="vertical-align: middle;"><center>Tanggal Akhir</center></th>
									<th style="vertical-align: middle;"><center>Masa Berlaku</center></th>
									<!-- <th style="vertical-align: middle;"><center>Action</center></th>									 -->
 								</tr>
 							</thead>
 							<tbody>
 								<tr>
 									<?php
 										$no=1;
 										$query	= "SELECT * FROM perjanjian WHERE status <> 'Arsip'  ORDER BY selesai ASC";
 										$sql	= mysqli_query($connect, $query);
 									    while ($data= mysqli_fetch_array($sql)){
 									?>
 									<td width="1" style="vertical-align: middle;"><?php echo $no++; ?></td>
 									<td style="vertical-align: middle;"><?php echo $data['nomor']; ?></td>
									<td style="vertical-align: middle;"><?php echo IndonesiaTgl($data['tanggal']) ?></td>
									<td style="vertical-align: middle;"><?php echo $data['judul']; ?></td>										
									<td style="vertical-align: middle;"><?php echo $data['tipe']; ?> | <?php echo $data['cabang']; ?></td> 									
									<td style="vertical-align: middle;"><?php echo $data['status']; ?></td>
									<td style="vertical-align: middle;"><?php echo IndonesiaTgl($data['mulai']) ?></td>	
 									<td style="vertical-align: middle;"><?php echo IndonesiaTgl($data['selesai']) ?></td>	
									<td style="vertical-align: middle;">
 										<?php
 											 $dt = $data['selesai'];
 											 $day = substr($dt, 8,2);
 											 $month = substr($dt, 5,2);
 											 $year = substr($dt, 0,4);
 											
											 $day_target = mktime(0, 0, 0, $month, $day, $year) ;										
											 $today = time () ;
											 $difference =($day_target-$today) ;
											 $days =(int) ($difference/86400) ;	
											 $dayx = $days + 1 ;
											 	
											 if($data['status'] == 'Non Aktif'){
											 	echo "0"; 
											 	echo " Hari Lagi";
											 } else {
											 	echo "$dayx";	
											 	echo " Hari Lagi";
											 }												
										?>										
 									</td> 
									
 								</tr>
 								<?php } ?>
 							</tbody>
 						</table>
 					</div>
 				</div>
 			</div>
 		</div>
 	</div>