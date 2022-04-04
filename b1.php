<?php

include 'session1.php';
$query = mysqli_query($conn, "UPDATE ktberkait SET status=0, potongan=0, hasil='BENAR'  where block='no' and baris='" . $baris . "'");
header("location: admin.php");
