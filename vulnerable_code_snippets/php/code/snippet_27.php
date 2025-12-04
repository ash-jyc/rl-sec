<?php
$con = mysql_connect("localhost","peter","abc123");
if (!$con) {
    die('Could not connect: ' . mysql_error());
}
mysql_select_db("my_db", $con);

$username = $_GET['username'];
$password = $_GET['password'];

$sql="SELECT * FROM Persons WHERE UserName='".$username."' and Password='".$password."'";

$result = mysql_query($sql);

while($row = mysql_fetch_array($result)) {
    echo $row['FirstName'] . " " . $row['LastName'];
    echo "<br>";
}

mysql_close($con);
?>