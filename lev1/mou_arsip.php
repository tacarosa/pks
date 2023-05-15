<?php
	//menangkap Session
	$cabang = $_SESSION['cabang'];
?>
	
	<div class="">
 		<div class="page-title">
 			<div class="title_left">
 				<h3>Daftar Arsip MoU</h3>
 			</div>
 		</div>
 		<div class="clearfix"></div>

 		<div class="row">
 			<div class="col-md-12 col-sm-12 col-xs-12">
 				<div class="x_panel">
 					<div class="x_title">
 						<h2>Data Arsip MoU</h2>
						 &nbsp; &nbsp;<a href="export_xls_mou_arsip.php" class="btn btn-info btn-sm"><i class="fa fa-download"></i> Download</a>		
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
 									<th style="vertical-align: middle;"><center>Nomor MoU</center></th> 	
 									<th style="vertical-align: middle;"><center>Tanggal MoU</center></th> 
 									<th style="vertical-align: middle;"><center>Pihak Pertama</center></th> 	
 									<th style="vertical-align: middle;"><center>Pihak Kedua</center></th> 
 									<th style="vertical-align: middle;"><center>Pihak Ketiga</center></th> 
 									<th style="vertical-align: middle; width:20%"><center>Judul MoU</center></th> 						
 									<th style="vertical-align: middle;"><center>Tanggal Mulai</center></th>
									<th style="vertical-align: middle;"><center>Tanggal Akhir</center></th>
									<th style="vertical-align: middle;"><center>Pemilik</center></th>
 									<th style="vertical-align: middle;"><center>File</center></th> 	
									<th style="vertical-align: middle;"><center>Status</center></th> 								
 									
 								</tr>
 							</thead>
 							<tbody>
 								<tr>
 									<?php
 										$no=1;
 										$query	= "SELECT * FROM mou WHERE status='Arsip' AND cabang = $cabang ORDER BY tanggal DESC";
 										$sql	= mysqli_query($connect, $query);
 									    while ($data= mysqli_fetch_array($sql)){
 									?>
									
 									<td width="1" style="vertical-align: middle;"><?php echo $no++; ?></td>
 									<td style="vertical-align: middle;"><?php echo $data['nomor']; ?></td>
									<td style="vertical-align: middle;"><?php echo IndonesiaTgl($data['tanggal']) ?></td>
									<td style="vertical-align: middle;"><?php echo $data['phk_1']; ?></td>
									<td style="vertical-align: middle;"><?php echo $data['phk_2']; ?></td>
									<td style="vertical-align: middle;"><?php echo $data['phk_3']; ?></td>
									<td style="vertical-align: middle;"><?php echo $data['judul']; ?></td>
 									<td style="vertical-align: middle;"><?php echo IndonesiaTgl($data['mulai']) ?></td>	
 									<td style="vertical-align: middle;"><?php echo IndonesiaTgl($data['selesai']) ?></td>	
									<td style="vertical-align: middle;"><?php echo $data['tipe']; ?> | <?php echo $data['cabang']; ?></td> 
 									<td style="vertical-align: middle;">
 										<a href="../upload/mou/<?php echo $data['file']?>" class="btn btn-default btn-xs fa fa-download">&nbsp;<?php echo $data['file'];?></a>
 									</td>
									<td style="vertical-align: middle;"><?php echo $data['status']; ?></td>  									
 								</tr>
 								<?php } ?>
 							</tbody>
 						</table>
 					</div>
 				</div>
 			</div>
 		</div>
 	</div>