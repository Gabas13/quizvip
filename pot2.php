<?php

include 'session1.php';
$query = mysqli_query($conn,"UPDATE ktberkait SET potongan=2 and status=0");
header("location: index.php");

?>