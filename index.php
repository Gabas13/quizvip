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
	<?php include "session1.php";

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

										<b id="index">
											<!-- AJAX -->
										</b>

									</td>

								</tr>

							</tbody>
						</table>
					</div>
					<center>
						<div id="container">
							<b style="font-size: 50pt;">
								<input id="sec" style="text-align: center" type="number" max="90" min="0" value="90" class="time">
							</b>
						</div>
					</center>
				</div>
			</div>
		</div>
	</div>



	<!--===============================================================================================-->
	<script src="vendor/timer/timer.js"></script>
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

		// WAKTU ITUNG MUNDUR
		function timer() {
			var timeleft = 89;
			var downloadTimer = setInterval(function() {
				if (timeleft <= 0) {
					clearInterval(downloadTimer);
				}
				if (timeleft == 0) {
					let audio = new Audio('images/salah.mp3')
					let action = 'destroysession';
					$.ajax({
						url: 'action.php',
						data: {
							action
						},
						method: 'post',
						success: function(result) {
							audio.play()
						}
					})
				}
				document.getElementById("sec").value = timeleft;
				timeleft -= 1;
			}, 1000);
		}


		$(document).ready(function() {
			// Check SESSION, Jika start maka mulai
			checkSession()

			// INDEX AJAX
			let index = setInterval(function() {
				$.ajax({
					url: 'index_ajax.php',
					success: function(data) {
						$('#index').html(data)
					}
				})
			}, 100)

			function checkSession() {
				setInterval(function() {
					let action = 'check_session'
					$.ajax({
						url: 'action.php',
						method: 'post',
						data: {
							action
						},
						success: function(result) {
							// console.log(result)
							if (result == 'start') {
								timer()
								let action = 'destroysession';
								$.ajax({
									url: 'action.php',
									data: {
										action
									},
									method: 'post'
								})
							}
						}
					})
				}, 100)
			}

		})
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>

</html>