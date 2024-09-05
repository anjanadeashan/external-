<?php
// Configuration
$servername = 'localhost';
$db_username = 'root';
$db_password = '';
$db_name = 'registration_db';

// Create connection
$conn = new mysqli($db_host, $db_username, $db_password, $db_name);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Process form data
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $name = $_POST["name"];
  $email = $_POST["email"];
  $message = $_POST["message"];

  // Insert data into contact table
  $sql = "INSERT INTO contact (Name, Email, Massage) VALUES ('$name', '$email', '$message')";

  
  if ($conn->query($sql) === TRUE) {
    
    
    echo '<script>alert("massage sent ")</script>';
   
  } 
    else {
      // Output detailed error message
      echo "Error: " . $sql . "<br>" . "MySQL Error: " . $conn->error . "<br>";
      echo "Error Code: " . $conn->errno . "<br>";
  }

}

// Close connection
$conn->close();
?>