	<?php
	include 'session1.php';
	$dt = mysqli_query($conn, "SELECT * FROM ktberkait.*, trukelsoal.* where trukelsoal.block='no'");
	$tampil = mysqli_fetch_array($dt);
	$kelsoal = $tampil['kelsoal'];
	$query = mysqli_query($conn, "UPDATE ktberkait.*, trukelsoal.* SET , trukelsoal.statpakai=0, block.trukelsoal='no' where trukelsoal.kelsoal=$kelsoal");
	header("location: admin.php");
	?>