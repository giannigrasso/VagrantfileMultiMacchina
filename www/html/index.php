<?php
$servername = "10.10.20.15";
$username = "vagrant";
$password = "vagrantpass";

try {
  $conn = new PDO("mysql:host=$servername;dbname=vagrant", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
?>