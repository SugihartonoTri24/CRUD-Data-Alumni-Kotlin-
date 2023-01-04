<?php
$koneksi = mysqli_connect("localhost", "root", "", "universitas");
$nim = $_GET["nim"];

$sql = "delete from alumni where nim = '$nim'";
$result = mysqli_query($koneksi, $sql);
echo $result ? "berhasil" : "gagal";
?>