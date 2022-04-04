<?php

include 'session1.php';
$baris = $_POST['baris'];
$query = mysqli_query($conn, "UPDATE ktberkait SET status=0, potongan=0, hasil='BENAR'  where block='no' and baris='" . $baris . "'");

if ($query > 0) {
    echo 'benar';
} else {
    echo 'salah';
}
