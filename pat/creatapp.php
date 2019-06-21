<html>
<head>
    <style>
        body{background-color:#f5f5f5;}
        .button{background-color: #0044cc;
        color:white;
        font-size: 25px;
        border-radius:10px;}
        
        .box{font-size: 25px;
        border-radius:10px;}
        
        .table{
            padding: 20px;}
        td{  margin: 20px;
        }
    </style>
    
    <title>
    Create apointment</title>
    
    
    
    
    
    
    </head>
<body>
    
    <?php
    
    if(isset($_POST['sendapp'])){
        
        $conn = mysqli_connect("localhost","root","");
if (!$conn)
  {
  die('Could not connect: ' . mysqli_error());
  }
$dbconnect=mysqli_select_db($conn,"hospital" );




        
        $sql="INSERT INTO  apptb
        
        
        VALUES ('$_POST[User_id]','$_POST[User_name]','$_POST[Email]','$_POST[Appointment]','$_POST[Time]')";
        
       if (!mysqli_query($conn,$sql))
 {
  die('Error: ');
  }
echo 'appointment sent';
mysqli_close($conn);
        
        
        
    }
    
    
    
    
    
    
    
    ?>
    
    
    
    <tr><table width="100%" class="table">
        <form action="" method="POST">
   
            
            <tr><td> <input type ="text" name ="User_id" placeholder="User id" class="box"></td></tr>
   
            <tr><td> <input type ="text" name ="User_name" placeholder="User name" class="box"></td></tr>
    <tr><td><input type ="text" name ="Email" placeholder="Email" class="box"></td></tr>
      <tr><td><input type ="text" name ="Appointment" placeholder="apointment" class="box"></td></tr>
    <tr><td><input type ="text" name ="Time" placeholder="time" class="box"></td></tr>
        <tr><td><input type ="submit" name="sendapp" value="Send Appointment" class="button"> </td></tr>
        
    
    
  
    
    
    
    
    </form>
        </table>
    
    
    </body>

</html>