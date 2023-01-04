<?php
$koneksi = mysqli_connect("localhost", "root", "", "universitas");
$nim = $_GET["nim"];
$nm_alumni = $_POST["nm_alumni"];
$prodi = $_POST["prodi"];
$tmpt_lahir = $_POST["tmpt_lahir"];
$tgl_lahir = $_POST["tgl_lahir"];
$alamat = $_POST["alamat"];
$no_hp = $_POST["no_hp"];
$thn_lulus = $_POST["thn_lulus"];
$foto = $_POST["foto"];

$sql = "update alumni set nm_alumni = '$nm_alumni', prodi = '$prodi', tmpt_lahir = '$tmpt_lahir', tgl_lahir = '$tgl_lahir', alamat = '$alamat', no_hp = '$no_hp', thn_lulus = '$thn_lulus' where nim = '$nim'";
$result = mysqli_query($koneksi, $sql);
if($result) {
	file_put_contents("foto/$nim.jpeg", base64_decode($foto));
	echo "berhasil";
} else echo "gagal";
?>