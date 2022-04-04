<?php

include 'session1.php';
$baris = $_POST['baris'];


$query = mysqli_query($conn, "UPDATE ktberkait SET status=1, hasil='SALAH'  where block='no' and baris='" . $baris . "'");
// header("location: admin.php");
if ($query > 0) {
	$dt = mysqli_query($conn, "SELECT * FROM ktberkait where block='no' and baris='" . $baris . "'");
	$tampil = mysqli_fetch_assoc($dt);

	if ($tampil['status'] == 0) {
		echo substr($tampil['kata'], 0, $tampil['potongan']);
	} else {
		echo $tampil['kata'];
	}
}
