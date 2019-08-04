<?php
     echo "Hello from PHP";
     $servername = "db";
     $username = "demo-user";
     $password = "demo-password";
     $dbname = "demo";

     $conn = new mysqli($servername, $username, $password, $dbname);
     if ($conn->connect_error) {
         die("Connection failed: " . $conn->connect_error);
     }

     $sql = "SELECT id, name, description FROM demo_table";
     $result = $conn->query($sql);

     if ($result->num_rows > 0) {
         echo "<ul>";
         while($row = $result->fetch_assoc()) {
             echo "<li>id: " . $row["id"]. " - Name: " . $row["name"]. " - Description: " . $row["description"]. "</li>";
         }
         echo "</ul>";
     } else {
         echo "0 results";
     }
     $conn->close();
?>