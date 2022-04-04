	<?php
	include 'session1.php';
	$dt = mysqli_query($conn, "SELECT * FROM trukelsoal where block='no'");
	$tampil = mysqli_fetch_array($dt);
	$angka = 1;
	$kelsoal = $tampil['kelsoal'];
	$isi = $kelsoal - $angka;
	$query = mysqli_query($conn, "UPDATE trukelsoal SET block='yes' where kelsoal=$kelsoal");
	$query = mysqli_query($conn, "UPDATE trukelsoal SET statpakai=1, block='no' where block='yes' and kelsoal=$isi");
	$updt = mysqli_query($conn, "UPDATE ktberkait SET hasil='SALAH' where kelsoal=$isi");
	header("location: admin_new.php");
	?>