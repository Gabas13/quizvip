<?php
include "session1.php";
$query = mysqli_query($conn, "SELECT * FROM ktberkait where block='no'");
foreach ($query as $tampil) {
    if ($tampil['status'] == 0) {
        echo substr($tampil['kata'], 0, $tampil['potongan']);
    } else {
        echo $tampil['kata'];
    }
}
