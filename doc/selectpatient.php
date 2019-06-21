






<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Select Appointment</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
     
    <link href="css/jquery.bxslider.css" rel="stylesheet"/>
    <link href="styles/style1.css" rel="stylesheet"/>
    <link href="css/font-awesome.min.css" rel="stylesheet"/>
    <link rel="shortcut icon" type="image/png" href="image/uict_log.jpg"/>
    <link rel = "stylesheet" href ="http://code.jquery.com/ui/1/11/4/themes/smoothness/jquery-ui.css">
    <link href="//maxcdn.bootstrapcdn.com/fontawesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    
  
  
  
      <!--<link rel="stylesheet" href="css/style1.css">-->
<style>
    table{
        position:absolute;
        top:17%;
        
        background-color: #EEEEEE;
    }
    td{padding:5px;}
    
    .box{font-size:25px;}
    a{text-decoration:none; 
    display:inline;
        border-radius: 3px;
    padding: 5px;
        color:aliceblue;
    
    background-color: #0044cc;}

    a:hover{color: aqua;}
    .box1{
        background-color: #0044cc;
        font-size:30px;
        border-radius: 10px;
        color:white;
    }
    h1{text-align: center;
    display:block;
    background: black;
    color:chartreuse;
    }
    i{color:black;
    background-color: red;
    text-align: center;}
    
    </style>
  
</head>

<body>
    
    
   <?php
    
    $dsn='mysql:host=localhost;dbname=hospital';
  $username ='root';
    $password ='';
    
    try{
        
        $con = new PDO($dsn,$username,$password);
        $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
    }catch(Exception $ex){ 
        
        echo 'Not Connected' .$ex->getMessage();
        
        
    }
    
    
   $User_id ='';
$User_name ='';

$Email ='';
$Appointment ='';
$Time ='';
    
    
    
    
    
    
    
function getPosts(){
    
    $post = array();
    
    $post[0] = $_POST ['User_id'];
    $post[1] = $_POST ['User_name'];
    $post[2] = $_POST ['Email'];
    
    $post[3] = $_POST ['Appointment'];
    $post[4] = $_POST ['Time'];
    return $post;
}  
    
    //Search And Display Data
    
if(isset($_POST['search'])){
    
    $data = getPOsts();
    
    if(empty($data[0])){
        
        echo 'Enter Patients ID To Search';
    }else{
        
        $searchStmt = $con->prepare('SELECT * FROM   apptb WHERE User_id = :User_id');
        
        $searchStmt->execute(array(
                                    ':User_id'=> $data[0]
            
        
        
        
        
        
        ));
        
        if($searchStmt)
        {
        $user =$searchStmt ->fetch();
            
            if(empty($user)){
                echo '<i>No Data For This Patient</i>';
            }
        
        
        
        
        $User_id = $user[0];
        $User_name  = $user[1];
        $Email  = $user[2];
        
        $Appointment  = $user[3];
        $Time  = $user[4];
        
        }
    }
        
}   
    
    // Insert Data
    
    if(isset($_POST['insert'])){
        
        $conn = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
$dbconnect=mysql_select_db("hospital", $conn);



        
        $sql="INSERT INTO  docappt (
        `User_id`,`User_name`,`Email`,`Appointment`,`Time`) 
        
        
        VALUES ('$_POST[User_id]','$_POST[User_name]','$_POST[Email]','$_POST[Appointment]','$_POST[Time]')";
        
       if (!mysql_query($sql,$conn))
 {
  die('Error: '.mysql_error());
  }
echo '1 record added';
mysql_close($conn);
        
        
        
    }
    
        
    //update    

    
     if(isset($_POST['update'])){
        
        $conn = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
$dbconnect=mysql_select_db("hospital", $conn);



        
        $sql="UPDATE   apptb SET
        
        User_id = '$_POST[User_id]',
        User_name = '$_POST[User_name]',
        
        
        
        Email = '$_POST[Email]',
        Appointment ='$_POST[Appointment]',
        Time ='$_POST[Time]'";
        
        
        
       if (!mysql_query($sql,$conn))
 {
  die('Error: '.mysql_error());
  }
echo '1 record Updated';
mysql_close($conn);
        
      
    
    
     }
    
    
    // delete
    
    
    
     if(isset($_POST['delete'])){
        
        $conn = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
$dbconnect=mysql_select_db("hospital", $conn);



        
        $sql="DELETE FROM   apptb 
        WHERE User_id = '$_POST[User_id]'";
        
        
        
       if (!mysql_query($sql,$conn))
 {
  die('Error: '.mysql_error());
  }
echo '1 record Deleted';
mysql_close($conn);
        
      
    
    
     }
    
    
    

    
    
    


    
  ?> 

    
    
    
    
    
    
    
    
    
           
    <table width =100%>
        <form action ='selectpatient.php' method="POST">
            <tr><td>
                <input type=text name="User_id" placeholder="User_id" class ="box" value="<?php echo $User_id;?>"></td>
                <td>
                <input type=text name="User_name" placeholder="User_name" class ="box" value="<?php echo $User_name;?>"></td>
                <td>
                <input type=text name="Email" placeholder="Email" class ="box" value="<?php echo $Email;?>"></td></tr>
       
        
        <tr><td><input type=text name="Appointment" placeholder="Appointment" class ="box" value="<?php echo $Appointment;?>"></td><td><input type=text name="Time" placeholder="Time" class ="box" value="<?php echo $Time;?>"></td></tr>
        
       
        
       
        
       
        
       
        
            
            
            
         
            
            
            
            
            
            
            
            
       
          <tr>  <td>
                            <input type=submit name="search" value="Search Appointment" class ="box1"></td>

            <td> <input type=submit name="insert" value="Send Appintment" class ="box1"></td>
           <td> <input type=submit name="update" value="Update" class ="box1"><br>
               <input type=submit name="delete" value="Delete" class ="box1"></td></tr>            
            
       
            
            
        </form>
    </table>
    </body>
    
</html>
