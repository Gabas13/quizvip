<?php
include 'session1.php';
$baris = $_POST['baris'];
$dt = mysqli_query($conn, "SELECT * FROM ktberkait where block='no' and baris='" . $baris . "'");
$tampil = mysqli_fetch_array($dt);
$angka = 1;
$potongan = $tampil['potongan'];
$isi = $potongan + $angka;
$query = mysqli_query($conn, "UPDATE ktberkait SET potongan=$isi where block='no' and baris='" . $baris . "'");

$dt = mysqli_query($conn, "SELECT * FROM ktberkait WHERE block='no' and baris='" . $baris . "'");
$result = mysqli_fetch_assoc($dt);

if ($result['status'] == 0) {
    echo substr($result['kata'], 0, $result['potongan']);
} else {
    echo $result['kata'];
}
