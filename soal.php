<!DOCTYPE html>
<html lang="en">

<head>
	<title>Kuis Kata Berkait</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!--===============================================================================================-->
</head>

<body>
	&nbsp;&nbsp;&nbsp;<img src="images/ktberkait.png" class="" style="width: 200px; text-align: center;">
	<?php include "session1.php";
	header("Refresh:0");
	?>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 ">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1" colspan="3" style="text-align: center; font-size: 25px;">Kuis Tebak Kata BKPSDMD</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll" style="text-align: center;">
						<table>
							<tbody>
								<tr>
									<td class="cell100 column1" style="font-size: 100px;">
										<b>
											<?php
											$dt = mysqli_query($conn, "SELECT * FROM ktberkait where block='no' and baris='1'");
											$tampil = mysqli_fetch_assoc($dt);
											?>
											<?php if ($tampil['status'] == 0) {
												echo substr($tampil['kata'], 0, $tampil['potongan']);
											} else {
												echo $tampil['kata'];
											} ?>
										</b>
										<b>
											<?php
											$dt = mysqli_query($conn, "SELECT * FROM ktberkait where block='no' and baris='2'");
											$tampil = mysqli_fetch_assoc($dt);
											?>
											<?php if ($tampil['status'] == 0) {
												echo substr($tampil['kata'], 0, $tampil['potongan']);
											} else {
												echo $tampil['kata'];
											} ?>
										</b>
										<b>
											<?php
											$dt = mysqli_query($conn, "SELECT * FROM ktberkait where block='no' and baris='3'");
											$tampil = mysqli_fetch_assoc($dt);
											?>
											<?php if ($tampil['status'] == 0) {
												echo substr($tampil['kata'], 0, $tampil['potongan']);
											} else {
												echo $tampil['kata'];
											} ?>
										</b>
										<b>
											<?php
											$dt = mysqli_query($conn, "SELECT * FROM ktberkait where block='no' and baris='4'");
											$tampil = mysqli_fetch_assoc($dt);
											?>
											<?php if ($tampil['status'] == 0) {
												echo substr($tampil['kata'], 0, $tampil['potongan']);
											} else {
												echo $tampil['kata'];
											} ?>
										</b>
										<b>
											<?php
											$dt = mysqli_query($conn, "SELECT * FROM ktberkait where block='no' and baris='5'");
											$tampil = mysqli_fetch_assoc($dt);
											?>
											<?php if ($tampil['status'] == 0) {
												echo substr($tampil['kata'], 0, $tampil['potongan']);
											} else {
												echo $tampil['kata'];
											} ?>
										</b>
										<b>
											<?php
											$dt = mysqli_query($conn, "SELECT * FROM ktberkait where block='no' and baris='6'");
											$tampil = mysqli_fetch_assoc($dt);
											?>
											<?php if ($tampil['status'] == 0) {
												echo substr($tampil['kata'], 0, $tampil['potongan']);
											} else {
												echo $tampil['kata'];
											} ?>
										</b>
										<b>
											<?php
											$dt = mysqli_query($conn, "SELECT * FROM ktberkait where block='no' and baris='7'");
											$tampil = mysqli_fetch_assoc($dt);
											?>
											<?php if ($tampil['status'] == 0) {
												echo substr($tampil['kata'], 0, $tampil['potongan']);
											} else {
												echo $tampil['kata'];
											} ?>
										</b>
										<b>
											<?php
											$dt = mysqli_query($conn, "SELECT * FROM ktberkait where block='no' and baris='8'");
											$tampil = mysqli_fetch_assoc($dt);
											?>
											<?php if ($tampil['status'] == 0) {
												echo substr($tampil['kata'], 0, $tampil['potongan']);
											} else {
												echo $tampil['kata'];
											} ?>
										</b>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>

</html>