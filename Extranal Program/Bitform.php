<?php

// Database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "registration_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}else {
    echo "Database connection successful!";
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Get the form data
  $name = $_POST["name"];
  $nic = $_POST["nic"];
  $dob = $_POST["dob"];
  $surname = $_POST["surname"];
  $gender = $_POST["gender"];
  $address = $_POST["address"];
  $email = $_POST["email"];
  $mobile = $_POST["mobile"];
  $telephone = $_POST["telephone"];
  $exam_year = $_POST["exam_year"];
  $stream = $_POST["stream"];
  $index = $_POST["index"];
  $zscore = $_POST["zscore"];
  $subject1 = $_POST["subject1"];
  $result1 = $_POST["result1"];
  $subject2 = $_POST["subject2"];
  $result2 = $_POST["result2"];
  $subject3 = $_POST["subject3"];
  $result3 = $_POST["result3"];
  $subject4 = $_POST["subject4"];
  $result4 = $_POST["result4"];
  $subject5 = $_POST["subject5"];
  $result5 = $_POST["result5"];

  // Prepare the SQL statement
  $sql = "INSERT INTO registrations (name, nic, dob, surname, gender, address, email, mobile, telephone, exam_year, stream, index_no, zscore, subject1, result1, subject2, result2, subject3, result3, subject4, result4, subject5, result5) 
  VALUES ('$name', '$nic', '$dob', '$surname', '$gender', '$address', '$email', '$mobile', '$telephone', '$exam_year', '$stream', '$index', '$zscore', '$subject1', '$result1', '$subject2', '$result2', '$subject3', '$result3', '$subject4', '$result4', '$subject5', '$result5')";

  // Debugging: Print the SQL statement before execution
  

  // Execute the SQL statement
  if ($conn->query($sql) === TRUE) {
      echo "New record created successfully";
  } else {
      // Output detailed error message
      echo "Error: " . $sql . "<br>" . "MySQL Error: " . $conn->error . "<br>";
      echo "Error Code: " . $conn->errno . "<br>";
  }
}

// Close the database connection
$conn->close();
?>