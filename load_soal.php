<?php
$dt = mysqli_query($conn, "SELECT * FROM ktberkait where block='no' and baris='1'");
$tampil = mysqli_fetch_assoc($dt);

if ($tampil['status'] == 0) {
    echo substr($tampil['kata'], 0, $tampil['potongan']);
} else {
    echo $tampil['kata'];
}
