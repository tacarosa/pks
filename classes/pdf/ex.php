<?php
define('FPDF_FONTPATH','font/');
require('mysql_table.php');

class PDF extends PDF_MySQL_Table
{
function Header()
{
	//Title
	$this->SetFont('Arial','',18);
	$this->Cell(0,6,'World populations',0,1,'C');
	$this->Ln(10);
	//Ensure table header is output
	parent::Header();
}
}

//Connect to database
mysql_connect('localhost','nusamandiri','wowkeren');
mysql_select_db('nusamandiri');

$pdf=new PDF();
$pdf->Open();
$pdf->AddPage();
//First table: put all columns automatically
$pdf->Table('select * from news order by newsid limit 2');
$pdf->AddPage();
//Second table: specify 3 columns
$pdf->Addrow('dtime',20,'','C');
$pdf->Addrow('title',40,'Country');
$pdf->Addrow('text1',40,'Pop (2001)','R');
$prop=array('HeaderColor'=>array(255,150,100),
			'color1'=>array(210,245,255),
			'color2'=>array(255,255,210),
			'padding'=>2);
$pdf->Table('select * from news order by newsid  limit 2',$prop);
$pdf->Output();
?>
