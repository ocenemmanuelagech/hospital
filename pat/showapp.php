<?php
 $con = mysqli_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysqli_error());
  }
$dbconnect=mysqli_select_db($con,"hospital" );

$mysqli = mysqli_query($con,"SELECT * from apptb");

echo "<table border='1' width='100%'>
<tr>

<th>USER NAME</th>
<th>TIME</th>
</tr>";
while($row =mysqli_fetch_array($mysqli))
{
echo "<tr>";
echo "<td align='center'>" . $row['User_name'] . "</td>";
echo "<td align='center'>" . $row['Time'] . "</td>";
echo "</tr>";
}
echo "</table>";

mysqli_close($con);
mysqli_free_result($mysqli);
?>
       