<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "biblioteca";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$title = $_POST['title'];
$author = $_POST['author'];

$sql = "INSERT INTO libros (title, author) VALUES ('$title', '$author')";
if ($conn->query($sql) === TRUE) {
    echo "Nuevo libro insertado con éxito";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
