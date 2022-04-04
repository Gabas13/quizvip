<?php

include 'session1.php';
$baris = $_POST['baris'];
$query = mysqli_query($conn, "UPDATE ktberkait SET status=0, potongan=0, hasil='SALAH'  where block='no' and baris='" . $baris . "'");
// header("location: admin.php");
