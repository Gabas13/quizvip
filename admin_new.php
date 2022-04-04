<!DOCTYPE html>
<html lang="en">

<head>
	<title>Kuis Tebak Kata</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
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
	<?php include "session1.php"; ?>
	<!-- <h1 style="color: aliceblue;" style="text-align: center;"> . </h1> -->

	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 ">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1" colspan="3" style="text-align: center; font-size: 25px;">Kuis Tebak Kata BKPSDMD</th>
									<!-- <th class="cell100 column2"></th> -->
									<!-- <th class="cell100 column3"></th> -->
									<!-- <th class="cell100 column4"></th> -->
									<!-- <th class="cell100 column5"></th> -->
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll" style="text-align: center;">
						<?php
						$dt = mysqli_query($conn, "SELECT * FROM ktberkait WHERE block='no'");
						$tampil = mysqli_fetch_assoc($dt);

						// if ($tampil['status'] == 0) {
						// 	echo substr($tampil['kata'], 0, $tampil['potongan']);
						// } else {
						// 	echo $tampil['kata'];
						// }
						?>
						<table>
							<tbody>
								<?php foreach ($dt as $row) : ?>
									<tr class="row100 body">
										<td id="soal<?= $row['baris'] ?>" class="cell100 column1" style="font-size: 38px;"><b>
												<?= $row['status'] == 0 ? substr($row['kata'], 0, $row['potongan']) : $row['kata'] ?>
											</b></td>
										<td class="cell100 column2"><?php echo $row['kata']; ?></td>
										<td id="hasil<?= $row['baris'] ?>" class="cell100 column2"><?php echo $row['hasil']; ?></td>

										<!-- <td class="cell100 column3"><?php echo $tampil['id']; ?></td> -->
										<td class="cell100 column4">

											<button data-baris="<?= $row['baris'] ?>" type="button" class="btn btn-warning btn-sm potong">
												<i class="fa fa-plus" aria-hidden="true"></i>
											</button>
											<!-- <a href="f1.php" class=""><button id="myAudio1" onclick="playFull1()" type="button1" class="btn btn-primary btn-sm">Full</button></a> -->
											<button id="full<?= $row['baris'] ?>" type="button" class="btn btn-primary btn-sm full" data-baris="<?= $row['baris'] ?>">Full</button>
											<button type="button" class="btn btn-success btn-sm reset" data-baris="<?= $row['baris'] ?>">Reset</button>
											<?php if ($row['hasil'] == 'SALAH') : ?>
												<button id="benar<?= $row['baris'] ?>" type="button" class="btn btn-danger btn-sm benar" data-baris="<?= $row['baris'] ?>" disabled>Benar</button>
											<?php else : ?>
												<button id="benar<?= $row['baris'] ?>" type="button" class="btn btn-danger btn-sm benar" data-baris="<?= $row['baris'] ?>">Benar</button>
											<?php endif; ?>
										</td>

										<!-- <td class=" cell100 column5">10
										</td> -->
									</tr>
								<?php endforeach; ?>

							</tbody>
						</table>
						<hr>
						<a href="prevq.php" class=""><button type="button" class="btn btn-primary btn-sm"><b>
									<< Prev</b></button></a>
						<i style="font-size: 14px">Soal : <b style="font-size: 20px">
								<?php
								$dtkelsoal = mysqli_query($conn, "SELECT * FROM trukelsoal where block='no'");
								$tampil = mysqli_fetch_array($dtkelsoal);
								?>
								<?php echo $tampil['kelsoal']; ?> / <?php
																	$dtkelsoal = mysqli_query($conn, "SELECT * FROM trukelsoal");
																	$jlkelsoal = mysqli_num_rows($dtkelsoal);
																	?>
								<?php echo $jlkelsoal; ?></b>&nbsp;&nbsp;, Tersedia : <b style="font-size: 20px">
								<?php
								$dtkelsoal = mysqli_query($conn, "SELECT * FROM ktberkait where kelsoal");
								$jlkelsoal = mysqli_num_rows($dtkelsoal);
								?>
								<?php echo $jlkelsoal; ?> </b>Soal</i>
						<a href="nextq.php" class=""><button type="button" class="btn btn-primary btn-sm"><b>Next >></b></button></a>
						<a href="resethal.php" class=""><button type="button" class="btn btn-success btn-sm"><b>Reset Halaman</b></button></a>
						<a href="resetall.php" class=""><button type="button" class="btn btn-danger btn-sm"><b>Reset All</b></button></a>
						<button id="startBtn" class="btn btn-success btn-sm startBtn">Start</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<b><i>Bel Salah:</i></b>
						<button type="button" class="btn btn-danger btn-sm">
							<audio controls>
								<source src="images/salah.mp3" type="audio/mpeg">
							</audio>
						</button>
						<br><br>
					</div>

					<!-- <center>
						<h1>
							<div>
								<input id="hour" type="number" max="99" min="0" value="0" class="time">
								<input id="minute" type="number" max="60" min="0" value="0" class="time">
								<input id="sec" type="number" max="60" min="0" value="0" class="time">
								<button id="start" class="btn btn-success btn-sm">Start</button>
								<button id="reset" class="btn btn-danger btn-sm">Reset</button>
							</div>
						</h1>
					</center>
					<script src="vendor/timer/timer.js"></script> -->


</html>


</div>
</div>
</div>
</div>

<!--===============================================================================================-->
<script src="js/script.js"></script>
<!--===============================================================================================-->
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


	$(document).ready(function() {
		$('.full').on('click', function() {
			let baris = $(this).data('baris')
			let audio = new Audio('images/huruf.mp3')
			let btn = $('#benar' + baris).attr('id')
			$.ajax({
				url: 'f1.php',
				method: 'POST',
				data: {
					baris: baris
				},
				success: function(data) {
					// console.log(data)
					audio.play()
					$('#soal' + baris).html('<b>' + data + '</b>')
					console.log(btn)
					$('#benar' + baris).prop('disabled', false)
					$('#hasil' + baris).html('SALAH')
				}
			})
		})
		$('.reset').on('click', function() {
			let audio = new Audio('images/next.mp3')
			let baris = $(this).data('baris')
			$.ajax({
				url: 'r1.php',
				method: 'POST',
				data: {
					baris: baris
				},
				success: function(data) {
					// console.log('data' + data)
					audio.play()
					$('#soal' + baris).html('')
					$('#benar' + baris).show()
					$('#hasil' + baris).html('SALAH')
					$('#benar' + baris).prop('disabled', true)
					$('#full' + baris).show()

				}
			})
		})
		$('.benar').on('click', function() {
			let audio = new Audio('images/benar.mp3')
			let baris = $(this).data('baris')

			$.ajax({
				url: 'benar.php',
				method: 'POST',
				data: {
					baris: baris
				},
				success: function(data) {
					// console.log('data' + data)
					audio.play()
					if (data == 'benar') {
						$('#benar' + baris).prop('disabled', true)
						$('#full' + baris).hide()
						$('#hasil' + baris).html('BENAR')
						$('#soal' + baris).html('')

					}
				}
			})
		})

		$('.potong').on('click', function() {
			let audio = new Audio('images/huruf.mp3')
			let baris = $(this).data('baris')

			$.ajax({
				url: 'perkata.php',
				method: 'POST',
				data: {
					baris: baris
				},
				success: function(data) {
					// console.log('data' + data)
					audio.play()
					//window.location.reload()
					// if (data == 'benar') {
					// 	$('#benar' + baris).prop('disabled', true)
					// 	$('#full' + baris).prop('disabled', true)
					// 	$('#hasil' + baris).html('BENAR')
					$('#soal' + baris).html(data)

					// }
				}
			})
		})

		$('.startBtn').on('click', function() {

			let action = 'start';

			$.ajax({
				url: 'action.php',
				method: 'POST',
				data: {
					action: action
				},

				success: function(data) {
					console.log(data)
				}
			})
		})
	})
</script>
<!--===============================================================================================-->
<script src="js/main.js"></script>

</body>

</html>