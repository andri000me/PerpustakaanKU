<?php
include "../conn.php";
require('../fpdf17/fpdf.php');
/**
 Judul  : Laporan PDF (portait):
 Level  : Menengah
 Author : PerpustakaanKU
 Blog   : www.PerpustakaanKU.com
 Web    : www.PerpustakaanKU.com
 Email  : sistem informasi494@gmail.com
 
 **/
//Menampilkan data dari tabel di database

$result = mysqli_query($conn, "SELECT * FROM data_buku ORDER BY id ASC") or die(mysqli_error($conn));

//Inisiasi untuk membuat header kolom
$column_judul = "";
$column_pengarang = "";
$column_th_terbit = "";
$column_penerbit = "";
$column_isbn = "";
$column_jumlah_buku = "";


//For each row, add the field to the corresponding column
while ($row = mysqli_fetch_array($result)) {
    $judul = $row["judul"];
    $pengarang = $row["pengarang"];
    $th_terbit = $row["th_terbit"];
    $penerbit = $row["penerbit"];
    $isbn = $row["isbn"];
    $jumlah_buku = $row["jumlah_buku"];



    $column_judul = $column_judul . $judul . "\n";
    $column_pengarang = $column_pengarang . $pengarang . "\n";
    $column_th_terbit = $column_th_terbit . $th_terbit . "\n";
    $column_penerbit = $column_penerbit . $penerbit . "\n";
    $column_isbn = $column_isbn . $isbn . "\n";
    $column_jumlah_buku = $column_jumlah_buku . $jumlah_buku . "\n";


    //Create a new PDF file
    $pdf = new FPDF('L', 'mm', array(297, 210)); //L For Landscape / P For Portrait
    $pdf->AddPage();

    $pdf->SetFont('Arial', 'B', 13);
    $pdf->Cell(125);
    $pdf->Cell(30, 10, 'DATA BUKU', 0, 0, 'C');
    $pdf->Ln();
    $pdf->Cell(125);
    $pdf->Cell(30, 10, 'Website PerpustakaanKU', 0, 0, 'C');
    $pdf->Ln();
}
//Fields Name position
$Y_Fields_Name_position = 30;

//First create each Field Name
//Gray color filling each Field Name box
$pdf->SetFillColor(110, 180, 230);
//Bold Font for Field Name
$pdf->SetFont('Arial', 'B', 10);
$pdf->SetY($Y_Fields_Name_position);
$pdf->SetX(5);
$pdf->Cell(90, 8, 'Judul', 1, 0, 'C', 1);
$pdf->SetX(95);
$pdf->Cell(50, 8, 'Pengarang', 1, 0, 'C', 1);
$pdf->SetX(145);
$pdf->Cell(20, 8, 'Tahun ', 1, 0, 'C', 1);
$pdf->SetX(165);
$pdf->Cell(50, 8, 'Penerbit', 1, 0, 'C', 1);
$pdf->SetX(215);
$pdf->Cell(45, 8, 'ISBN', 1, 0, 'C', 1);
$pdf->SetX(260);
$pdf->Cell(32, 8, 'Jml Hal.', 1, 0, 'C', 1);
$pdf->Ln();

//Table position, under Fields Name
$Y_Table_Position = 38;

//Now show the columns
$pdf->SetFont('Arial', '', 10);

$pdf->SetY($Y_Table_Position);
$pdf->SetX(5);
$pdf->MultiCell(90, 6, $column_judul, 1, 'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(95);
$pdf->MultiCell(50, 6, $column_pengarang, 1, 'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(145);
$pdf->MultiCell(20, 6, $column_th_terbit, 1, 'C');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(165);
$pdf->MultiCell(50, 6, $column_penerbit, 1, 'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(215);
$pdf->MultiCell(45, 6, $column_isbn, 1, 'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(260);
$pdf->MultiCell(32, 6, $column_jumlah_buku, 1, 'C');

$pdf->Output();
