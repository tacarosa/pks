	<?php
				
		//menghitung jumlah pekerjaan
		$query 	= "SELECT * FROM perjanjian WHERE status <> 'Arsip'";
		$sql   	= mysqli_query($connect, $query);
		$count0	= mysqli_num_rows($sql);
		$status0    = mysqli_num_rows($sql);
			
		$query 	= "SELECT * FROM perjanjian WHERE status <> 'Arsip' AND selesai BETWEEN DATE(NOW()) AND DATE(NOW()) + INTERVAL 3 MONTH";
		$sql   	= mysqli_query($connect, $query);
		$count1	= mysqli_num_rows($sql);
		$status1    = mysqli_num_rows($sql);
		
		$query 	= "SELECT * FROM perjanjian WHERE status <> 'Arsip' AND DATE(selesai) <= DATE(NOW())";
		$sql   	= mysqli_query($connect, $query);
		$count2	= mysqli_num_rows($sql);
		$status2    = mysqli_num_rows($sql);

		//menghitung jumlah mou
		$query 	= "SELECT * FROM mou WHERE status <> 'Arsip'";
		$sql   	= mysqli_query($connect, $query);
		$count3	= mysqli_num_rows($sql);
		$status3    = mysqli_num_rows($sql);
			
		$query 	= "SELECT * FROM mou WHERE status <> 'Arsip' AND selesai BETWEEN DATE(NOW()) AND DATE(NOW()) + INTERVAL 3 MONTH";
		$sql   	= mysqli_query($connect, $query);
		$count4	= mysqli_num_rows($sql);
		$status4    = mysqli_num_rows($sql);
		
		$query 	= "SELECT * FROM mou WHERE status <> 'Arsip' AND DATE(selesai) <= DATE(NOW())";
		$sql   	= mysqli_query($connect, $query);
		$count5	= mysqli_num_rows($sql);
		$status5    = mysqli_num_rows($sql);
		
	
	?>
	<!-- Info Box -->
	<div class="">
		<div class="page-title">

			<!-- Tulisan Berjalan -->
			 <marquee bgcolor="#318ce7"; scrollamount="7"; style="font-size: 20px; color: white">	         

		            [ PKS Aktif : <b><?php echo $status0 ?></b>
					| PKS < 3 Bulan : <b><?php echo $status1 ?></b> 
					| PKS Habis Tempo : <b><?php echo $status2 ?></b> ]
		          
		        </marquee>

				<marquee bgcolor="#318ce7"; scrollamount="6"; style="font-size: 20px; color: white">
		            		           
					[ MoU Aktif : <b><?php echo $status3 ?></b>
					| MoU < 3 Bulan : <b><?php echo $status4 ?></b>  
					| MoU Habis Tempo : <b><?php echo $status5 ?></b> ]		            
		          
		        </marquee>

			<div class="title_left">
				<h3>Dashboard</h3>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row top_tiles">	

			<a href="index.php?page=perjanjian">
				<div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tile-stats">
						<div class="icon"><i class="fa fa-edit"></i></div>
						<div class="count"><?php echo $count0 ?></div>
						<h3>PKS Aktif</h3>
					</div>
				</div>
			</a>	
	
			<a href="index.php?page=perjanjian_kurang3bln">
				<div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tile-stats">
						<div class="icon"><i class="fa fa-hourglass-end"></i></div>
						<div class="count"><?php echo $count1 ?></div>
						<h3>PKS < 3 Bulan</h3>
					</div>
				</div>
			</a>

			<a href="index.php?page=perjanjian_habis">
				<div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tile-stats">
						<div class="icon"><i class="fa fa-minus-circle"></i></div>
						<div class="count"><?php echo $count2 ?></div>
						<h3>PKS Habis Tempo</h3>
					</div>
				</div>
			</a>
			
	
			<a href="index.php?page=mou">
				<div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tile-stats">
						<div class="icon"><i class="fa fa-edit"></i></div>
						<div class="count"><?php echo $count3 ?></div>
						<h3>MoU Aktif</h3>
					</div>
				</div>
			</a>

			<a href="index.php?page=mou_kurang3bln">
				<div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tile-stats">
						<div class="icon"><i class="fa fa-hourglass-end"></i></div>
						<div class="count"><?php echo $count4 ?></div>
						<h3>Mou < 3 Bulan</h3>
					</div>
				</div>
			</a>	
	
			<a href="index.php?page=mou_habis">
				<div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="tile-stats">
						<div class="icon"><i class="fa fa-minus-circle"></i></div>
						<div class="count"><?php echo $count5 ?></div>
						<h3>Mou Habis Tempo</h3>
					</div>
				</div>
			</a>

		</div>
	</div>

	<div class="row">
		<div class="col-md-8 col-sm-6 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Grafik Target <small>Tahun <?php echo date('Y') ?></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                    </ul>
                <div class="clearfix"></div>
                </div>
                <div class="x_content">
                   <div class="chart" id="chart" style="height: 100%; width: 100%"></div>
                </div>
            </div>
        </div>

		<div class="col-md-4 col-sm-6 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	<h2>Log Aktifitas <small>Update Terbaru</small></h2>
                  	<ul class="nav navbar-right panel_toolbox">
                    	<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                    	<li><a class="close-link"><i class="fa fa-close"></i></a></li>
                  	</ul>
                  	<div class="clearfix"></div>
                </div>
                <div class="x_content bs-example-popovers">

                	<?php
                		$query = "SELECT * FROM perjanjian ORDER BY id_perjanjian DESC LIMIT 1";
                		$sql   = mysqli_query($connect, $query);
                		while ($data0 = mysqli_fetch_array($sql)) {
                	?>
                  	<div class="alert alert-info alert-dismissible fade in" role="alert">
                    	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                    	PKS Nomor <strong><?php echo $data0['nomor'] ?></strong> Perihal <strong><u><?php echo $data0['judul'] ?></u></strong> Telah di tambahkan ke <b>Daftar PKS</b>.
                  	</div>
                  	<?php } ?>                

					<?php
                		$query = "SELECT * FROM mou ORDER BY id_mou DESC LIMIT 1";
                		$sql   = mysqli_query($connect, $query);
                		while ($data1 = mysqli_fetch_array($sql)) {
                	?>
                 	 <div class="alert alert-warning alert-dismissible fade in" role="alert">
                    	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                    	MoU Nomor <strong><?php echo $data1['nomor'] ?></strong> Perihal <strong><u><?php echo $data1['judul'] ?></u></strong> Telah di tambahkan ke <b>Daftar MoU</b>.
                  	</div>
                  	<?php } ?>

                                 
                </div>

            </div>
        </div>
	</div>
