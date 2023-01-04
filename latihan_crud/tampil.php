<?php
$koneksi = mysqli_connect("localhost", "root", "", "universitas");
$sql = "select * from alumni order by nm_alumni";
$result = mysqli_query($koneksi, $sql);
$data = [];
while($row = mysqli_fetch_assoc($result)) $data["data"][] = $row;
header('Content-Type:Application/json');
echo json_encode($data);
?>