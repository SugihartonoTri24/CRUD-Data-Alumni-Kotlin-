<?php
$koneksi = mysqli_connect("localhost", "root", "", "universitas");
$nim = $_POST["nim"];
$nm_alumni = $_POST["nm_alumni"];
$prodi = $_POST["prodi"];
$tmpt_lahir = $_POST["tmpt_lahir"];
$tgl_lahir = $_POST["tgl_lahir"];
$alamat = $_POST["alamat"];
$no_hp = $_POST["no_hp"];
$thn_lulus = $_POST["thn_lulus"];
$foto = $_POST["foto"];

$sql = "insert into alumni values('$nim', '$nm_alumni', '$prodi', '$tmpt_lahir', '$tgl_lahir', '$alamat', '$no_hp', '$thn_lulus')";
$result = mysqli_query($koneksi, $sql);
if($result) {
	file_put_contents("foto/$nim.jpeg", base64_decode($foto));
	echo "berhasil";
} else echo "gagal";
?>