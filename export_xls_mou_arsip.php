
<?php
//import koneksi ke database
include 'koneksi.php';
include 'function_tanggal.php';
?>

<html>
<head>
  <title>Daftar Semua MoU Arsip</title>
  <link rel="stylesheet" href="antubanyu/bootstrap.min.css">
  <script src="antubanyu/jquery.min.js"></script>
  <script src="antubanyu/popper.min.js"></script>
  <script src="antubanyu/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="antubanyu/jquery.dataTables.css">
  <link rel="stylesheet" type="text/css" href="antubanyu/buttons.dataTables.min.css">
  <link rel="stylesheet" type="text/css" href="antubanyu/jquery.dataTables.min.css">
  <script type="text/javascript" charset="utf8" src="antubanyu/jquery.dataTables.js"></script>
</head>

<body>
<div class="container">		
			
			<div class="data-tables datatable-dark">

        	<center><h5>Daftar Semua MoU Arsip</h5></center>
					
				<table id="pekerjaan" class="table table-striped table-bordered table-hover">
 						<thead>
 								<tr style="font-size: 13px;">
 									<th width="1" style="vertical-align: middle;">No</th>
									<th style="vertical-align: middle;"><center>Nomor MoU</center></th> 	
 									<th style="vertical-align: middle;"><center>Tanggal MoU</center></th> 
 									<th style="vertical-align: middle;"><center>Pihak Pertama</center></th> 	
 									<th style="vertical-align: middle;"><center>Pihak Kedua</center></th> 
 									<th style="vertical-align: middle;"><center>Pihak Ketiga</center></th> 
 									<th style="vertical-align: middle;"><center>Judul MoU</center></th> 						
 									<th style="vertical-align: middle;"><center>Tanggal Mulai</center></th>
									<th style="vertical-align: middle;"><center>Tanggal Akhir</center></th>
									<th style="vertical-align: middle;"><center>Pemilik</center></th> 									 	
									<th style="vertical-align: middle;"><center>Status</center></th>  									
 								</tr>
 						</thead>
 							<tbody>
 								<tr>
 									<?php
 										$no=1;
 										$query	= "SELECT * FROM mou WHERE status='Arsip' ORDER BY tanggal DESC";
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
									<td style="vertical-align: middle;"><?php echo $data['status']; ?></td>  									 									
 								</tr>
 								<?php } ?>
 							</tbody>
 				</table>
					
			</div>
</div>
	
<script>
$(document).ready(function() {
    $('#pekerjaan').DataTable( {
        dom: 'Bfrtip',
        buttons: [
             // 'excel', 'pdf', 'print'
			{
                extend: 'pdfHtml5',
                orientation: 'landscape',
                pageSize: 'A4'
            },
			'excel','print',
			{
                text: 'Kembali',
                action: function ( e, dt, node, config ) {
                    // alert( 'Button activated' );
					window.history.go(-1);
                }
            }
        ]
    } );
} );

</script>

<script src="antubanyu/jquery-3.5.1.js"></script>
<script src="antubanyu/jquery.dataTables.min.js"></script>
<script src="antubanyu/dataTables.buttons.min.js"></script>
<script src="antubanyu/buttons.flash.min.js"></script>
<script src="antubanyu/jszip.min.js"></script>
<script src="antubanyu/pdfmake.min.js"></script>
<script src="antubanyu/vfs_fonts.js"></script>
<script src="antubanyu/buttons.html5.min.js"></script>
<script src="antubanyu/buttons.print.min.js"></script>

</body>

</html>
