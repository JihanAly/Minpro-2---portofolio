<?php
$conn = mysqli_connect("localhost", "root", "", "db_profile");

if (!$conn) {
    echo "Koneksi gagal: " . mysqli_connect_error();
}
?>